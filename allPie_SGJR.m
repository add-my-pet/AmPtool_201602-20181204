%% allPie_SGJR
% writes all pies for allocation at birth, puberty, ultimate to all entries

%%
function  allPie_SGJR(wrt)
%% created 2016/05/03 by Bas Kooijman

%% Syntax
% <../allPie_SGJR.m *allPie_SGJR*>

%% Description
% Writes all allocation pies to all entries (4 pies per entry) if wrt = 1.
% Otherwise you will seea very large number of pies passing by on your screen.
%
% Input
%
% * wrt: optional indicator for writing files to the sundirs of ../entries/ (default: 0)

%% Remarks
% macro around <pie_SGJR.html *pie_SGJR*> 

%% Example of use
% allPie_SGJR; 

  global allStat
  
  if ~exist('wrt','var')
    wrt = [];
  end
  
  load('allStat')
  entries = fieldnames(allStat);
  ne = length(entries);
  
  for i = 1:ne
    pie_SGJR(entries{i}, wrt); 
    if isempty(wrt) || wrt == 0
      fprintf([entries{i},'\n'])
      pause
    end
    close all
  end

end

