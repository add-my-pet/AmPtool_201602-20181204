%% write_addStat
% writes a structure with all pars and stats for all entries

%%
function allStat = write_addStat(taxa, T, f)
% created 2016/11/17 by Bas Kooijman

%% Syntax
% allStat = <write_addStat *write_addStat*> (T, f)

%% Description
% Appends result of <get_addStat.html *get_addStat*> to file allStat.mat
% Members of taxa should also be members of select and do not exist yet in allStat.
%
% Input:
%
% * T: optional scalar with body temperature in Kelvin (default T_typical, which is entry-specific)
% * f: optional scalar with scaled functional response (default 1)
%
% Ouput:
%
% * allStat: stucture with all parameters and statistics of all entries

%% Remarks
% See <read_allStat.html *read_allStat*> for extracting values from allStat.mat.

%% Example of use
% write_addStat({'Regulus_regulus'})

  taxon_src = select;
  n = length(taxa)
  for i = 1:n
    [sel taxa_src] = select_01(taxon_src, taxon{i})
  end

  load allStat.mat
  
  
  if ~exist('f', 'var') 
    if ~exist('T', 'var')
      allStat = get_addStat(taxa);
    else
      allStat = get_allStat(taxa, T);
    end
  else
    allStat = get_allStat(taxa, T, f);
  end

  allStat.date_current = datestr(date, 'yyyy mm dd'); 
  save('allStat')
