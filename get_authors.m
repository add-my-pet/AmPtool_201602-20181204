%% get_authors
% gets all submitting authors

%%
function [list nr entry] = get_authors
%% created 2016/02/23 by Bas Kooijman

%% Syntax
% [authors nr entry] = <../get_authors.m *get_authors*>

%% Description
% gets all submitting authors
%
% Output: 
% 
% * list: cell-array with authors, arranged alphabetically on family name
% * nr: vector of number of entries that they (co)authored
% * entry: cell-array of cell-arrays with entry names

%% Example of use
% [authors nr entry] = get_authors; entry{find(ismember(authors, 'Elke Zimmer'))}

  [authors entries] = read_allStat('author');
  ne = length(entries);
   
  % alphabetically arranged list of all authors
  list = sort_fam(unique([authors{:}]))'; 
    
  % binary matrix of authors x entries
  na = length(list); nae = zeros(na,ne);
  for i = 1:ne
    authorsi = authors{i};
    nai = length(authorsi);
    for j = 1:nai
      nae(:,i) = nae(:,i) + strcmp(list,authorsi{j});
    end
  end
    
  nr = sum(nae,2); % number of entries by each author
    
  % entries for each author
  entry = cell(na);
  for i = 1:na
    entry{i} = entries(nae(i,:)==1);  
  end
    
end

%% subfunction

function sauthor = sort_fam(author)
  % orders a cell-array of authors to their names after the last space
  
  n = length(author); fam = author;
  for i = 1:n
    name = author(i); name = name{:}; 
    name(1:max(strfind(name, ' '))) = [];
    fam(i) = {name};
  end
  [nm index] = sort(fam);
  sauthor = author(index);
end