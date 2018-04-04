%% write_allEco
% writes a structure with all ecological properties for all entries

%%
function allEco = write_allEco
% created 2018/04/04 by Bas Kooijman

%% Syntax
% allEco = <write_allEco *write_allEco*>

%% Description
% Writes codes specified in <get_eco.html *get_eco*> to file allEco.mat in parent dir of curation
%
% Ouput:
%
% * allEco: stucture with all parameters and statistics of all entries

%% Remarks
% See <read_allEco.html *read_allEco*> for extracting values from allEco.mat.

%% Example of use
% write_allEco;

  entries = select; n = length(entries);
  
  for i = 1:n
    [allEco.(entries{i}).climate, allEco.(entries{i}).ecozone, allEco.(entries{i}).habitat, allEco.(entries{i}).migrate, allEco.(entries{i}).food] = get_eco(entries{i});
  end

  save('../allEco')
  