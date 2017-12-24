%% clade
% gets all species that are closest related to specified taxa

%%
function [members, taxon] = clade(taxa, level)
% created 2015/09/18 by Bas Kooijman; modified 2017/12/23

%% Syntax
% [members, taxon] = <../clade.m *clade*> (taxa, level) 

%% Description
% gets all species in the add_my_pet collection that belong to the lowest common taxon of a group of taxa.
% To find this taxon, the lineages of all members of input taxa are obtained, 
% then the taxon of lowest rank is found that is shared by all members of input taxa 
% and all members of this taxon in the add_my_pet collection are selected.
% If a single taxon is specified, members are selected from a taxon that is a number of levels up in the classification.
%
% Input:
%
% * taxa: cell string with names of taxa or character string with a single name
% * level: optional integer with number of nodes up, in the case of a single taxon (default: 3)
%
% Output:
% 
% * cell string with all species in the add_my_pet collection that belong to that taxon
% * character string with the name of the lowest taxon to which all taxa belong

%% Remarks
% The root is Animalia; If this is the lowest common taxon, the output contains all species in the collection.
% Print properties of related taxa with e.g. prtStat(clade('Lemmus_trimucronatus'), 'p_M');.
% Include the tree as well with e.g. [~, taxon]= clade('Lemmus_trimucronatus'); pedigree(taxon, 'p_M') 

%% Example of use
% members  = clade({'Gorilla', 'Tupaia'})
% or
% clade('Daphnia_magna')
% or
% clade('Homarus_gammarus',4)


  n = length(taxa);
  
  if  ~iscell(taxa) || n == 1
    if iscell(taxa)
      taxa = taxa{1};
    end
    
    if ~exist('level', 'var')
      level = 3;
    end
  
    list = lineage(taxa);
    
    if length(list) == 1
      fprintf('Taxon is not recognized\n')
      members = list; taxon = list;
    else
      taxon = list{end-level};
      members = select(taxon);
    end
  
    return
  end
  
  for i = 1:n % obtain lineages for all taxa called lin1, lin2, ..
    lin = lineage(taxa{i});
    if ~isequal('Animalia', lin{1})
      fprintf([taxa{i}, ' is not recognized \n']);
      members = []; taxon = []; return
    end
    eval(['lin', num2str(i), ' = lin;']);
  end
  
  true = 1; j = 0; % initiate selection process
  while true
    j = j + 1; % step down the lineage
    taxon = lin1{j};
    for i = 2 : n % step through taxa
      eval(['true = isequal(taxon, lin', num2str(i), '{j});']);
      if ~true
        break
      end
    end
  end
  taxon = lin1{j-1};
  
  members = select(taxon); 

end

