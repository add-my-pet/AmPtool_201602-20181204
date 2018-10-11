%% legend_aves
% specification of legend for birds

%
function legend = legend_aves
% created at 2016/04/24 by Bas Kooijman

  %% Syntax
  % legend = <legend_aves.m *legend_aves*>

  %% Description
  % Specifies a legend for birds
  %
  % Output
  %
  % * legend: (10,2) cell matrix with (marker, taxon)-pairs

  % type, size, linewidth, edge color and face color of a marker, taxon
  legend = {...
    {'o', 8, 3, [0 0 0], [0 0 0]}, 'Crocodilia'; ...
    {'o', 8, 3, [0 0 1], [0 0 0]}, 'Paleognathae'; ...
    {'o', 8, 3, [0 0 1], [0 0 1]}, 'Galloanserae'; ...
    {'o', 8, 3, [1 0 1], [0 0 0]}, 'Columbea'; ....
    {'o', 8, 3, [1 0 1], [0 0 1]}, 'Otidae'; ....
    {'o', 8, 3, [1 0 1], [1 0 1]}, 'Gruae'; ....
    {'o', 8, 3, [1 0 1], [1 0 0]}, 'Ardeae'; ....
    {'o', 8, 3, [1 0 0], [1 0 0]}, 'Afroaves'; ....
    {'o', 8, 3, [1 .5 .5], [1 .5 .5]}, 'Australaves'; ....
    {'.', 8, 3, [0 0 0], [0 0 0]}, 'Animalia'; ....
  };
end

