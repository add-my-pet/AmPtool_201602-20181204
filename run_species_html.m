%% run_species_html
% script file which makes species.html (stored in add_my_pet/)

WD = pwd; % store current path

entries = select('Animalia');

cd('../.') % goto entries
allFiles = dir('entries');
allNames = {allFiles.name};
cd(WD)
n = length(entries);

% make species.html

fid_Spec = open_species_html; % open up species.html for writing and delete the old file
for i = 1:n
        if strcmp(entries{i},'Crinia_nimbus')==0 && strcmp(entries{i},'Geocrinia_vitellina')==0
        fprintf('%g/ %g : %s \n',i,n, entries{i} ) 
        cd(['../entries/',entries{i}]) % goto entries 
        load(['results_',entries{i},'.mat']) % load results_my_pet.mat 
        cd(WD)
        print_species_html(metaData, metaPar, fid_Spec)
        end
end
close_species_html(fid_Spec); % close species.html

copyfile('species_list.html','../.')