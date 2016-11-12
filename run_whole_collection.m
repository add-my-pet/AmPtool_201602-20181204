
%% Script: run_whole_collection
% Run this to make
%
% * places index.cache and index.wn in the entries folder
% * html pages for all of the different species in add_my_pet/entries
% * place the html and bib pages in entries_web and delete from entries
% * create zipped folder in entries_zip
% 
% run prt_species_list_html to create ../species_list.html
% run prt_species_tree_taxa to create ../sys/species_tree_taxa.js files

entries = select('Animalia');
n = length(entries);

% first check that the list returned by select('Animalia) has same names as all of the
% directories in entries
[missingFromCollection, missingFromList] = check_collection;
% if isempty(missingFromCollection) * isempty(missingFromCollection)  == 0 
%     fprintf('check which species are missing by examining output of check_collection \n before proceeding any further \n' )
%     return;
% end

WD = pwd; % store current path
cd ('../entries/Homo_sapiens'); % go to random entry to prepare for hopping

for i = 1:n     
  fprintf('%g/ %g : %s \n',i,n, entries{i}) % report progress to screen 
  %copyfile('../../index.cache',['../entries/',entries{i}])
  %copyfile('../../index.wn',['../entries/',entries{i}])
  
  cd(['../',entries{i}]) % goto entry i 
  %delete('*.html', '*bib') % delete html and bib files  
  load(['results_',entries{i},'.mat']) % load results_my_pet.mat
  [data, auxData, metaData, txtData] = feval(['mydata_',metaData.species]); 
  prdData = feval(['predict_',metaData.species], par, data, auxData);
  prdData = predict_pseudodata(par, data, prdData); % appends new field to prdData with predictions for the pseudo data:
  
  prt_my_pet_bib(metaData.species,metaData.biblist) % print bib file
  prt_my_pet_par(metaData, metaPar, par, txtPar) % make html with parameters
  prt_my_pet_stat(metaData, metaPar, par) % make html with implied properties
  prt_my_pet_res(data, prdData, auxData, metaData, txtData, metaPar) % make html with results
  
  WD_loc = pwd;
  cd('../../entries_zip' ); % goto directory with all of the zipped entries
  zip_my_pet(entries{i}, '../entries'); % zip the entry
  cd(WD_loc)  % goto original path    
end
    
cd(WD)