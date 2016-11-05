%% prt_species_list_html
%  deletes and writes ../species_list.html 

%%
function prt_species_list_html
% created by Bas Kooijman; modified 2015/04/14 Starrlight Augustine & Goncalo Marques; 
%   modified 2015/07/21 Starrlight Augustine; 2015/08/28 Starrlight Augustine; 2016/11/05 Bas Kooijman

%% Syntax
% <../prt_species_list_html.m *prt_species_list_html*> (metaData, metaPar, fidSpec) 

%% Description
% deletes and writes ../species_list.html

%% Remarks
% uses open_species_list_html, prt_species_row and close_species_list_html
% expects to find /entries

WD = pwd; % store current path

entries = select('Animalia');

cd('../.') % goto entries
allFiles = dir('entries');
allNames = {allFiles.name};

cd(WD) % return to current path
n = length(entries);

% make species_list.html

fid_Spec = open_species_list_html; % open up species_list.html for writing and delete the old file
for i = 1:n
  %fprintf('%g/ %g : %s \n',i,n, entries{i}) 
  cd(['../entries/',entries{i}]) % goto entries 
  load(['results_',entries{i},'.mat']) % load results_my_pet.mat 
  cd(WD)
  prt_species_row(metaData, metaPar, fid_Spec)
end
close_species_list_html(fid_Spec); % close species_list.html

copyfile('species_list.html','../.')
delete('species_list.html') % delete the file that is in entries_admin
