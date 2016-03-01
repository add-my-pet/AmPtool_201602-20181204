%% get_authors
% gets all submitting authors

%%
function [authors nr entry] = get_authors
%% created 2016/02/23 by Bas Kooijman

%% Syntax
% [authors nr entry] = <../get_authors.m *get_authors*>

%% Description
% gets all submitting authors
%
% Output: 
% 
% * authors: cell-array with authors, arranged alphabetically on family name
% * nr: vector of number of entries that they (co)authored
% * entry: cell-array of cell-arrays with entry names

%% Example of use
% [authors nr entries] = get_authors; entries{find(ismember(authors, 'Elke Zimmer'))}

  entries = select('Animalia');
  ne = length(entries);
  authors = [];
   
  WD = pwd;                % store current path
  cd(['../entries/',entries{1}]) % goto entries

  try
    % alphabetically arranged list of all authors
    for i = 1:ne
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      authors = [authors; metaData.author(:)];     
    end
    authors = sort_fam(unique(authors)); 
    
    % binary matrix of authors x entries
    na = length(authors); nae = zeros(na,ne);
    for i = 1:ne
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      author = metaData.author(:);
      nj = length(author);
      if nj == 1
        nae(:,i) = nae(:,i) + strcmp(authors,author);
      else
        for j = 1:nj
          nae(:,i) = nae(:,i) + strcmp(authors,author(j));
        end
      end
    end
    
    nr = sum(nae,2); % number of entries by each author
    
    % entries for each author
    entry = cell(na);
    for i = 1:na
      entry{i} = entries(nae(i,:)==1);  
    end
    
  catch
    disp('Name of taxon is not recognized')
  end
   
  cd(WD)                   % goto original path
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