%% curator_report
% Produces a report to help curators analyse a submission

%%
function curator_report(speciesnm, stepnb)
  % created 2015/08/01 by Goncalo Marques
  % modified 2015/08/06 Dina Lika, 2018/01/23 by Bas Kooijman, 2018/04/15
  % Starrlight, 2018/08/20 Starrlight
  
  %% Syntax 
  % <../curator_report.m *curator_report*> (speciesnm)

  %% Description
  % Produces step by step instuctions and informations to help curators analyse a submission.
  %
  % Follows :
  %
  % * - runs check_speciesnm:  checks species name and lineage
  % * - runs check_data: displays data_0, data_1, data fields, and COMPLETE
  % * - generates html file of bibliography 
  % * - displays additional parameters that have been used
  % * - displays parameters which were free
  % * - runs statistics_st and prt_report_my_pet: displays implied
  % properties and generates html of implied properties
  %
  % Input
  %
  % * speciesnm: string with species name
  % * stepnb: scalar with the step number the report should start
  % performing
  %  
  % Output is printed to screen

  %% Remarks
  % This function is supposed to be run in the directory of the source
  % files: mydata_speciesnm, pars_init_speciesnm, 
  
  %% Examples of use
  %
  % * curator_report('my_pet') 
  % * curator_report('my_pet', 2) : and then only start the report at step
  % two

if  ~exist('stepnb', 'var')
    stepnb = [];
end
  
%%% Step 1: Check species name and lineage
pointNumber = 1; 

if isempty(stepnb) || stepnb == 1 
fprintf('\n Step %d. Checking if the species is already in AmP:\n\n', pointNumber);
check_speciesnm(speciesnm);
end 

if isempty(stepnb)
    fprintf('Hit a key to continue\n'); pause
end

%%% Step 2: run check_data for data_0, data_1 and COMPLETE
pointNumber = pointNumber + 1; 

if   isempty(stepnb) || stepnb == 2
fprintf('\n Step %d. Data types:\n\n', pointNumber);
check_data(speciesnm);
fprintf('\nCheck the consistency between metaData and data.\n');
fprintf('Check that the labels for each data type are used and consistent with the contents.\n');
fprintf('Contact the web administrator with any new labels that should be added to the table. \n');
fprintf('http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction)\n');
end

if isempty(stepnb)
    fprintf('Hit a key to continue\n'); pause
end

%%% Step 3: check bibliography and url's
pointNumber = pointNumber + 1; 

if   isempty(stepnb) || stepnb == 3
    
fprintf( '\n Step %d. Check Bibliography', pointNumber);
[data, auxData, metaData] = feval(['mydata_', speciesnm]); % get metaData.biblist
prt_my_pet_bib(speciesnm, metaData.biblist) % biblist2bib
bib2bbl([speciesnm,'_bib']);                % runs Bibtex to convert bib to bbl
bbl2html([speciesnm,'_bib']);               % converts bbl to html
web([speciesnm,'_bib.html'],'-browser');    % open html of bibliography in system browser

end

if isempty(stepnb)
    fprintf('Hit a key to continue\n'); pause
    delete([speciesnm,'_bib.bib'],[speciesnm,'_bib.html']); % delete produced files
end


%%% Step 4: check extra parameters
pointNumber = pointNumber + 1; 

if   isempty(stepnb) || stepnb == 4
    
fprintf('\n Step %d. Checking extra parameters:\n\n', pointNumber);
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
fprintf('Check if there should exist customized filters involving these parameters. \n Check that there is a discussion point relating to the use of these parameters. \n');

end

if isempty(stepnb)
    fprintf('Hit a key to continue\n'); pause
end


%%% Step 5: check which parameters were estimated:
pointNumber = pointNumber + 1; 

if   isempty(stepnb) || stepnb == 5
fprintf('\n Step %d. Checking choice of free parameters:\n\n', pointNumber);

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

end

if isempty(stepnb)
    fprintf('Hit a key to continue\n'); pause
end

%%% Step 6: check implied properties 
pointNumber = pointNumber + 1; 

if   isempty(stepnb) || stepnb == 6
fprintf('\n Step %d. Check implied model properties and parameter values of my_pet. Creates my_pet.html.\n\n', pointNumber);
prnt = input('Enter: 1 to compute statistics else 0 to continue: ');

if prnt
  [stat, txt_stat] = statistics_st(metaPar.model, par, metaData.T_typical, 1);
  display(stat)
  
  prt_report_my_pet(metaData, metaPar, par, metaData.T_typical, 1);
  web(['report_',speciesnm,'.html'],'-browser');    % open html of bibliography in system browser
  
end

end

if isempty(stepnb)
    fprintf('Hit a key to continue\n'); pause
   delete(['report_',speciesnm,'.html']); % delete produced file
end

%%% Step 7: make sure figures are saved

pointNumber = pointNumber + 1;

if isempty(stepnb)
fprintf('\n Step %d. Please after the curation process execute the run file with estim_option, results_output=2 \n\n', pointNumber);
end
