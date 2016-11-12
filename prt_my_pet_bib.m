%% prt_my_pet_bib
% read and write ../../entries_web/my_pet_bib.bib

%%
function prt_my_pet_bib(species,biblist)
% created 2015/07/17 by Starrlight ; modified 2016/11/03

%% Syntax
% <../prt_bib_my_pet.m *prt_bib_my_pet*> (species,biblist) 

%% Description
% Prints a ../../entries_web/my_pet_bib.bib file with the entry's bibliography 
%
% Input:
%
% * species: string with latin name of species 
% * biblist:  structure with each field containing a reference in bibtext format. The name of
% the key corresponds to the bibtex key. 

%% Remarks
% if you load results_my_pet.mat then species is found in metaData.species
% and biblist is biblist.metaData

%% Example of use
% load('results_my_pet.mat');
% prt_my_pet_bib(metaData.species,metaData.biblist)

oid = fopen(['../../entries_web/', species, '_bib.bib'], 'w+'); % open file for reading and writing and deletes old content

[nm, nst] = fieldnmnst_st(biblist);

for j = 1:nst 
  str = eval(['biblist.',nm{j}]);
  fprintf(oid, '%s \n\n', str);
end
    
% close my_pet_bib.bib  
fclose(oid);

% options.showCode = false; publish('prt_my_pet_bib', options);
