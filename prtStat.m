%% prtStat
% Print parameter or stastistics of selected entries names and values 

%%
function prtStat(taxa, var)
  % created by Bas Kooijman 2017/08/20
  
  %% Syntax 
  % <../prtStat.m *prtStat*>(taxa, var)
  
  %% Description
  % Print parameter or statistic values for selected entries to screen. 
  %
  % Input:
  %
  % * taxa: cell-string with taxa
  % * var: character string with prameter ot statistic
  
  %% Example of use 
  % prtStat({'Paridae','Cyprinidae'}, 'p_M')
    
  [val nm units label] = read_allStat(var); 
  sel = select_01(taxa); 
  printpar(nm(sel), val(sel), [], [label{1}, ': ', units{1}])
