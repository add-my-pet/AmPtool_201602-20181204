%% Script: run whole collection
% Run this to make
%
% * places index.cache and index.wn in the entries folder
% * html pages for all of the different species in add_my_pet/entries
% * place the html and bib pages in entries_web and delete from entries
% * create zipped folder in entries_zip



entries = select('Animalia');
n = length(entries);

% first check that the list returned by select('Animalia) has same names as all of the
% directories in entries
[missingFromCollection, missingFromList] = check_collection;
if isempty(missingFromCollection) * isempty(missingFromCollection)  == 0 
    fprintf('check which species are missing by examining output of check_collection \n before proceeding any further \n' )
    return;
end

WD = pwd; % store current path
%

for i = 238
fprintf('%g/ %g : %s \n',i,n, entries{i} ) 
copyfile('index.cache',['../entries/',entries{i}])
copyfile('index.wn',['../entries/',entries{i}])

cd(['../entries/',entries{i}]) % goto entries 
load(['results_',entries{i},'.mat']) % load results_my_pet.mat
[data, auxData, metaData, txtData] = feval(['mydata_',metaData.species]); 
prdData = feval(['predict_',metaData.species], par, data, auxData);
prdData = predict_pseudodata(par, data, prdData); % appends new field to prdData with predictions for the pseudo data:

cd(WD)  % goto original path 

print_bib_my_pet(metaData.species,metaData.biblist) % print bib file
print_my_pet_html(metaData, metaPar, par, txtPar) % make html with parameters
print_stat_my_pet_html(metaData, metaPar, par) % make html with implied properties
print_results_my_pet_html(data, prdData, auxData, metaData, txtData, metaPar) % make html with results
print_pet_frames_html(metaData) % make the top and left frames for the html files

% pathnm = '../entries_web' ; % path to directory with all of the generated html files
% copyfile('*.html',pathnm) % copy all of the .html files from entries to entries_web
% copyfile('*.bib',pathnm) % copy the bib file to entries_web
% delete('*.html', '*bib') % delete html and bib files  
% 
% cd('../entries_zip' ); % goto directory with all of the zipped entries
% zip_my_pet(entries{i}, '../entries'); % zip the entry
% cd(WD)  % goto original path    

end
    
