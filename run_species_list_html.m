%% run_species_list_html
% script file which makes species_list.html (stored in add_my_pet/)

WD = pwd; % store current path

entries = select('Animalia');

cd('../.') % goto entries
allFiles = dir('entries');
allNames = {allFiles.name};
cd(WD)
n = length(entries);

% make species_list.html

fid_Spec = open_species_list_html; % open up species_list.html for writing and delete the old file
for i = 1:n
    fprintf('%g/ %g : %s \n',i,n, entries{i} ) 
    cd(['../entries/',entries{i}]) % goto entries 
    load(['results_',entries{i},'.mat']) % load results_my_pet.mat 
    cd(WD)
    prt_species_list_html(metaData, metaPar, fid_Spec)
end
close_species_list_html(fid_Spec); % close species_list.html

copyfile('species_list.html','../.')
delete('species_list.html') % delete the files that is in entries_admin
