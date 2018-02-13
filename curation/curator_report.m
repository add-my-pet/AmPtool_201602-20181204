%% curator_report
% Produces a report to help curators analyse a submission

%%
function curator_report(speciesnm)
  % created 2015/08/01 by Goncalo Marques
  % modified 2015/08/06 Dina Lika, 2018/01/23 by Bas Kooijman
  
  %% Syntax 
  % <../curator_report.m *curator_report*> (speciesnm)

  %% Description
  % Produces a report to help curators analyse a submission.
  %
  % Follows :
  %
  % * - check species name and lineage
  % * - runs check_my_pet
  % * - runs check_data: displays data_0, data_1, data fields, and COMPLETE
  % * - compares par, metaPar and txtPar in pars_init and .mat
  %
  % Input
  %
  % * speciesnm: string with species name
  %  
  % Output is printed to screen

  %% Remarks
  % This function is supposed to be run in the directory of the source files: mydata_speciesnm, pars_init_speciesnm
  
  %% Example of use
  % curator_report('my_pet') 

%% check species name and lineage

pointNumber = 1; 

fprintf('\n%d. Warnings from check_my_pet:\n\n', pointNumber);
check_speciesnm(speciesnm);

fprintf('Hit a key to continue\n'); pause


%% run check_my_pet

pointNumber = pointNumber + 1; 

fprintf('\n%d. Warnings from check_my_pet:\n\n', pointNumber);
check_my_pet(speciesnm);

fprintf('Hit a key to continue\n'); pause

%% run check_data for data_0, data_1 and COMPLETE

pointNumber = pointNumber + 1; 

fprintf('\n%d. Data types:\n\n', pointNumber);
check_data(speciesnm);

fprintf('\nCheck the consistency between metaData and data.\n');
fprintf('Check that the labels for each data type are used and consistent with the contents.\n');
fprintf('Contact the web administrator with any new labels that should be added to the table (http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction)\n');

fprintf('Hit a key to continue\n'); pause

%% check bibliography and url's

pointNumber = pointNumber + 1; 

[data, auxData, metaData] = feval(['mydata_', speciesnm]); % get metaData.biblist
prt_my_pet_bib(speciesnm, metaData.biblist) % biblist2bib
bib2bbl([speciesnm,'_bib']);                % runs Bibtex to convert bib to bbl
bbl2html([speciesnm,'_bib']);               % converts bbl to html
web([speciesnm,'_bib.html'],'-browser');    % open html of bibliography in system browser

fprintf('Hit a key to continue\n'); pause
delete([speciesnm,'_bib.bib'],[speciesnm,'_bib.html']); % delete produced files

%% compare values in pars_init with values in the .mat

pointNumber = pointNumber + 1; 

fprintf('\n%d. Comparison of parameters in pars_init with .mat file:\n\n', pointNumber);

[infoPar, infoMetaPar, infoTxtPar] = matisinit(speciesnm);

if infoPar
  fprintf('The parameter values are the same in pars_init and .mat.\n');
else
  fprintf('The parameter values are different in pars_init and .mat.\n');
end

if infoMetaPar
  fprintf('The metaPar.model is equal in pars_init and .mat.\n');
else
  fprintf('The metaPar is different in pars_init and .mat.\n');
end

if infoTxtPar
  fprintf('The txtPar is equal in pars_init and .mat.\n');
else
  fprintf('The txtPar is different in pars_init and .mat.\n');
end

fprintf('Hit a key to continue\n'); pause

%% check extra parameters

pointNumber = pointNumber + 1; 

fprintf('\n%d. Checking extra parameters:\n\n', pointNumber);

[data, auxData, metaData, txtData, weights] = feval(['mydata_', speciesnm]);
[par, metaPar, txtPar] = feval(['pars_init_', speciesnm], metaData);
standChem = addchem([], [], [], [], metaData.phylum, metaData.class);

parFields = fields(par);        standChemFields = fields(standChem);
parFields  = setdiff(parFields, {'free'});
nonChemParFields = setdiff(parFields, standChemFields);

EparFields = get_parfields(metaPar.model);
extraParFields = setdiff(nonChemParFields, EparFields);
extraParFields = setdiff(extraParFields, {'T_ref', 'T_A', 'f'});

fprintf('Extra parameters\n');
for i = 1:length(extraParFields)
  fprintf([extraParFields{i}, ', ', txtPar.label.(extraParFields{i}), '\n']);
end

fprintf('\nCheck if these are all used in predict.\n');
fprintf('Check if there should exist customized filters involving these parameters.\n');

fprintf('Hit a key to continue\n'); pause

%% check freeing of parameters

pointNumber = pointNumber + 1; 

fprintf('\n%d. Checking choice of free parameters:\n\n', pointNumber);

freeFixedFields = fields(par.free);

freeFields = freeFixedFields(structfun(@(s) s==1, par.free));
fixedFields = setdiff(freeFixedFields, freeFields);

fprintf('Fixed parameters (excluding standard chemical pars with standard values)\n');
for i = 1:length(fixedFields)
  if ~ismember(fixedFields{i}, standChemFields) || par.(fixedFields{i}) ~= standChem.(fixedFields{i}) % print if is not standard chemical or if it standard but with non-standard value
    fprintf([fixedFields{i}, ' = ', num2str(par.(fixedFields{i})), ' ', txtPar.units.(fixedFields{i}), ', ' , txtPar.label.(fixedFields{i}), '\n'])
  end
end

fprintf('\nCheck if the values above are standard or have been substantiated.\n\n');

fprintf('Free parameters\n');
for i = 1:length(freeFields)
  fprintf([freeFields{i}, ' = ', num2str(par.(freeFields{i})), ' ', txtPar.units.(freeFields{i}), ', ' , txtPar.label.(freeFields{i}), '\n']);
end

fprintf('\nCheck if the values above are reasonable and if there is enough data to estimate them.\n\n');


fprintf('Hit a key to continue\n'); pause; 

%% check implied properties 

pointNumber = pointNumber + 1; 

fprintf('\n%d. Check implied model properties and parameter values of my_pet. Creates my_pet.html.\n\n', pointNumber);
prnt = input('Enter: 1 to compute statistics else 0 ton continue: ');

if prnt
  [stat, txt_stat] = statistics_st(metaPar.model, par, metaData.T_typical, 1);
  display(stat)
end

fprintf('Hit a key to continue\n'); pause; 

%% check bibliography

pointNumber = pointNumber + 1; 

fprintf('\n%d. Generate a .bib. \n Then upload bib_my_pet.bib in References ''my_pet'' project in Overleaf.\n\n', pointNumber);
 
prt_my_pet_bib(metaData.species,metaData.biblist)

% save figures
% global pets
% pets = {speciesnm};
% 
% estim_options('default');
% estim_options('pars_init_method', 0);
% estim_options('results_output', 2);
% 
% load(['results_', speciesnm, '.mat']);
% clear data auxData metaData txtData weights
% [data.pet1, auxData.pet1, metaData.pet1, txtData.pet1, weights.pet1] = feval(['mydata_', speciesnm]);
% results_pets(par, metaPar, txtPar, data, auxData, metaData, txtData, weights);

pause; 

%% check if the parameter set was obtained after continuation from .mat 

pointNumber = pointNumber + 1;

fprintf('\n%d. Please after the curation process execute the run file with estim_option, results_output=2 \n\n', pointNumber);

fprintf('Hit a key to continue\n'); pause; 

%% check if the parameter set was obtained after continuation from .mat 

pointNumber = pointNumber + 1;

fprintf('\n%d. Check if the parameter set was obtained after continuation from .mat.\n\n', pointNumber);

fprintf('Copy results_my_pet.mat to results_my_pet_author.mat\n\n', pointNumber);

filenm1 = ['results_', speciesnm, '.mat']; 
filenm2 = ['results_', speciesnm, '_author.mat'];
copyfile(filenm1,filenm2)

fprintf('Run estimation, check if there is successful convergence:\n\n');

autoEst = input('Do you want to run estimation automatically? - if so enter 1, otherwise enter 0: ');

if autoEst
  eval(['run_', speciesnm]);

  fprintf('Restart from .mat after first convergence. Press enter:\n\n');

  fprintf('Hit a key to continue\n'); pause

  eval(['run_', speciesnm]);

  [info_par, info_metaPar, info_txtPar] = matismat(speciesnm, [speciesnm, '_author']);

  if info_par
    fprintf('The parameter values were obtained after continuation from .mat file.\n');
  else
    fprintf('The parameter values were not obtained after continuation from .mat file.\n');
  end

end

