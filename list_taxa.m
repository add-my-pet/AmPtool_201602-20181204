%% list_taxa
% gets ordered list of all taxa

%%
function ol = list_taxa (taxon, leaves)
% created 2016/02/25 by Bas Kooijman, modified 2018/06/14

%% Syntax
% ol = <../list_taxa.m *list_taxa*> (taxon, leaves) 

%% Description
% gets an alphabetically ordered list of all taxa that belong to taxon in the add_my_pet collection 
%
% Output:
% 
% * taxon: optional characterstring with name of taxon (default 'Animalia')
% * leaves: boolean to include leaves (default: true)
%
% Output:
% 
% * ordered list

%% Remarks
% The classification follows that of Wikipedia

%% Example of use
% ol  = list_taxa

  if ~exist('taxon', 'var') || isempty(taxon)
    taxon = 'Animalia';
  end

  WD = pwd;                  % store current path
  taxa = which('list_taxa.pl'); % locate DEBtool_M/taxa/
  taxa = taxa(1:end - 12);   % path to DEBtool_M/taxa/
  cd(taxa)                   % goto taxa

  try
    ol = perl('list_taxa.pl', taxon); ol(end) = [];
    ol = eval(['{''', strrep(ol, char(10), ''';''') , '''}']);
    if exist('leaves', 'var') && ~leaves
      ol = ol(cellfun(@isempty, strfind(ol,'_'))); % eliminate leaves
    end
  catch
    disp('taxon not recognized')
  end
  
  cd(WD)                    % goto original path

end

