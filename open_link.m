%% open_link
% open links to web-pages for AmP entries

%%
function open_link(taxon)
% created 2018/01/30
%% Syntax
% <open_link *open_link*>(taxon)

%% Description
% Opens links in the system brouwser, as provded by <get_link.html *get_link*>
%
% Input:
%
% * taxon: character string with name of an entry

%% Example
% open_link('Daphnia_magna')

links = get_link(taxon); n = length(links);
for i = 1:n
  web(links{i},'-browser')
end