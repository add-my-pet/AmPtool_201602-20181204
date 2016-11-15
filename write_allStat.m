%% write_allStat
% writes a structure with all pars and stats for all entries

%%
function allStat = write_allStat(T, f)
% created 2016/04/24 by Bas Kooijman

%% Syntax
% allStat = <write_allStat *write_allStat*> (T, f)

%% Description
% Writes result of <get_allStat.html *get_allStat*> to file allStat.mat
%
% Input:
%
% * T: optional scalar with body temperature in Kelvin (default T_typical, which is entry-specific)
% * f: optional scalar with scaled functional response (default 1)
%
% Ouput:
%
% * allStat: stucture with all parameters ans statistics of all entries

%% Remarks
% See <read_allStat.html *read_allStat*> for extracting values from allStat.mat.
% For 411 entries, the allStat.mat file is 2.6 Mb. and takes 8 minutes to
% generate.

%% Example of use
% write_allStat

  if ~exist('f', 'var') 
    if ~exist('T', 'var')
      allStat = get_allStat;
    else
      allStat = get_allStat(T);
    end
  else
    allStat = get_allStat(T, f);
  end

  allStat.date_current = datestr(date, 'yyyy mm dd'); 
  save('allStat')