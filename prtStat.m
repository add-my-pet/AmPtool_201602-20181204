%% prtStat
% Print parameter or stastistic of selected entries names and values 

%%
function [nm val] = prtStat(taxa, var, in)
  % created by Bas Kooijman 2017/08/20
  
  %% Syntax 
  % [nm val] = <../prtStat.m *prtStat*>(taxa, var, in)
  
  %% Description
  % Print parameter or statistic values for selected entries to screen. 
  %
  % Input:
  %
  % * taxa: cell-string with taxa
  % * var: character string with parameter or statistic
  % * in: scalar with optional indicator for ordering increasing (1), decreasing (-1), no (0)
  %
  % Output
  %
  % * val: n-vector with values for parameter or statistic
  % * nm: n-cellstring with names of entries
  
  %% Example of use 
  % prtStat({'Paridae','Cyprinidae'}, 'p_M');
    
  [val nm units label] = read_allStat(var); 
  sel = select_01(taxa); 

  if ~(length(val) == length(sel))
    fprintf('Warning from prtStat: entries in allStart do not correspond with select\n');  
  end
      
  nm = nm(sel); val = val(sel);
  
  if ~exist('in', 'var') % yes or no sorting
    in = 0;
  end
  switch in
  case -1
    [val i] = sort(val, 'descend'); nm = nm(i);
  case 1
    [val i] = sort(val, 'ascend'); nm = nm(i);
  end
    
  printpar(nm, val, [], [label{1}, ': ', units{1}])
