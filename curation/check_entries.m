%% check_entries
% Checks entries for member inconsistencies

%%
function [tree local server] = check_entries
% created 2017/04/07 by Bas Kooijman

%% Syntax
% [tree local server] = <../check_entries.m *check_entries*>

%% Description
% checks tree leaves against subdirectories of entries, local and on server
%
% Output:
% 
% * tree, local, server: cell strings with names of entries
% * prints warnings on screen

%% Remarks
% The root of the tree is Animalia. The dates are not checked
% Assumes that this function is run in dir AmPtool/curation and that entries is a sister directory of AmPtool
% Assumes that path to entries on server is: http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries/

%% Example of use
% check_entries

tree = select; n_tree = length(tree);                                             % cell string with entry names of tree
local = cellstr(ls('../../entries')); local([1 2]) = []; n_local = length(local); % cell string with local entry names 
stat = read_allStat('species');

% cell string with server entries stored on server
txt = urlread('https://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries/');
head = strfind(txt,'folder.gif'); txt(1:head(1)) = []; 
n_server = length(strfind(txt,'href="')); server = cell(n_server,1);
for i = 1:n_server
  kill = strfind(txt,'href="'); txt(1:kill(1) + 5)= [];
  server{i} = txt(1:strfind(txt,'/"') - 1);
end

diff = setdiff(stat, local);
if ~isempty(diff)
  fprintf('warning from check_entries: present in allstat, but not in local\n');
  diff
end

diff = setdiff(local, stat);
if ~isempty(diff)
  fprintf('warning from check_entries: present in local, but not in allstat\n');
  diff
end

diff = setdiff(tree, local);
if ~isempty(diff)
  fprintf('warning from check_entries: present in tree, but not in local\n');
  diff
end

diff = setdiff(local, tree);
if ~isempty(diff)
  fprintf('warning from check_entries: present in local, but not in tree\n');
  diff
end

diff = setdiff(local, server);
if ~isempty(diff)
  fprintf('warning from check_entries: present in local, but not on server\n');
  diff
end

diff = setdiff(server, local);
if ~isempty(diff)
  fprintf('warning from check_entries: present in server, but not in local\n');
  diff
end
