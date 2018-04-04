fid_eco = fopen('get_eco.m', 'w+'); % open file for writing, delete existing content

fprintf(fid_eco, '%%%% get_eco\n');
fprintf(fid_eco, '%% specifies ecology for AmP entries\n\n');

fprintf(fid_eco, '%%%%\n');
fprintf(fid_eco, 'function [climate, ecozone, habitat, migrate, food] = get_eco(taxon)\n');
fprintf(fid_eco, '%% created 2018/04/03 by Bas Kooijman\n\n');

fprintf(fid_eco, '%%%% Syntax\n');
fprintf(fid_eco, '%% [climate, ecozone, habitat, migrate, food] = <get_eco *get_eco*>(taxon)\n\n');

fprintf(fid_eco, '%%%% Description\n');
fprintf(fid_eco, '%% Fills cell strings with ecological specifications of AmP species\n');
fprintf(fid_eco, '%%\n');
fprintf(fid_eco, '%% Input:\n');
fprintf(fid_eco, '%%\n');
fprintf(fid_eco, '%% * taxon: character string with name of an entry\n');
fprintf(fid_eco, '%%\n');
fprintf(fid_eco, '%% Output:\n');
fprintf(fid_eco, '%%\n');
fprintf(fid_eco, '%% * climate, climate, ecozone, habitat, migrate, food: cell arrays with codes\n\n');

fprintf(fid_eco, '%%%% Remarks\n');
fprintf(fid_eco, '%% codes are described in AmPeco.html\n\n');

fprintf(fid_eco, '%%%% Example of use\n');
fprintf(fid_eco, '%% [climate, ecozone, habitat, migrate, food] = get_eco(''Daphnia_magna'')\n\n');


nm = select; n = length(nm);
  fprintf(fid_eco,  '  switch taxon\n\n');
for i=1:n
  fprintf(fid_eco, ['    case ''', nm{i}, '''\n']);
  fprintf(fid_eco,  '      climate = {};\n');
  fprintf(fid_eco,  '      ecozone = {};\n');
  fprintf(fid_eco,  '      habitat = {};\n');
  fprintf(fid_eco,  '      migrate = {};\n');
  fprintf(fid_eco,  '      food = {};\n\n');
end
  fprintf(fid_eco,  '  end\n');

fclose(fid_eco);