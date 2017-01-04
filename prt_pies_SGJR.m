%% prt_pies_SGJR
% writes all pies for allocation at birth, puberty, ultimate  and for investment at birth to all entries

%%
function  prt_pies_SGJR(entries)
% created 2016/05/03 by Bas Kooijman, modified 2017/01/04

%% Syntax
% <../prt_pies_SGJR.m *prt_pies_SGJR*>(entries)

%% Description
% Writes allocation pies at birth, puberty, ultimate and 
%  investment pie at birth to all specified entries (4 pies per entry).
%
% Input
%
% * taxa: cell-string with entry name; if absent all entries 

%% Remarks
% macro around <pie_SGGJR.html *pie_SGGJR*>
% write files ../entries/my_pet/my_pet_pie_SGJRb.png, my_pet_pie_pSGJRb.png, my_pet_pie_SGJRp.png, my_pet_pie_SGJRi.png
% gets data from allStat.mat

%% Example of use
% prt_pie_SGJR; 
  
  if ~exist('entries','var')
    entries = select;
  end
  
  load('allStat')
  ne = length(entries);
  
  for i = 1:ne
    pie_SGGJR(entries{i}, 1); 
    fprintf([entries{i},'\n'])
    close all
  end

end

