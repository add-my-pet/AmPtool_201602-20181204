%% prt_bib_my_pet
% read and write bib_my_pet.bib

%%
function prt_bib_my_pet(species,biblist)
% created 2015/07/17 by Starrlight ; modified 2016/11/03

%% Syntax
% <../prt_bib_my_pet.m *prt_bib_my_pet*> (species,biblist) 

%% Description
% Prints a .bib file with the bibliography of a give entry
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
% prt_bib_my_pet(metaData.species,metaData.biblist)

oid = fopen(['bib_', species, '.bib'], 'w+'); % open file for reading and writing and deletes old content

[nm, nst] = fieldnmnst_st(biblist);

for j = 1:nst 
str = eval(['biblist.',nm{j}]);
fprintf(oid, '%s \n\n', str);
end
    
% close bib_my_pet.bib  
fclose(oid);