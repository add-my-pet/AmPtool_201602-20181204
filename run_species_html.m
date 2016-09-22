%% run_species_html
% script file which makes species.html (stored in add_my_pet/)


entries = select('Animalia');
n = length(entries);
WD = pwd; % store current path

% make species.html

fid_Spec = open_species_html; % open up species.html for writing and delete the old file
for i = 1:n
    fprintf('%g/ %g : %s \n',i,n, entries{i} ) 
    cd(['../entries/',entries{i}]) % goto entries 
    load(['results_',entries{i},'.mat']) % load results_my_pet.mat 
    cd(WD)
    print_species_html(metaData, metaPar, fid_Spec)
end
close_species_html(fid_Spec); % close species.html

copyfile('species_list.html','../.')