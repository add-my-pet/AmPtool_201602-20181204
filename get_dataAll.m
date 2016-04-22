%% get_dataAll
% obtain a structure with all pars and stats for all entries

%%
function dataAll = get_dataAll(T, f)
% created 2016/04/22 by Bas Kooijman

%% Syntax
% dataAll = <get_dataAll *get_dataAll*> (T, f)

%% Description
% gets model, MRE, CLOMPLETE, all parameters and statistics of all entries.
% Parameters are always expressed at T_ref, irrespective of input T.
%
% Input:
%
% * T: optional scalar with body temperature in Kelvin (default T_typical, which is entry-specific)
% * f: optional scalar with schaled functional response (default 1)
%
% Output:
% 
% * dataAll: structure with all parameter and statistics values, including their units and labels

%% Remarks
% Can be used to compute statistics for all entries at the start of a session on the comparison of parameter and statistics values
% For 411 entries, the dataAll.mat file is 2.6 Mb

%% Example of use
% dataAll = get_dataAll;

  if ~exist('T', 'var') || isempty(T)
    set_T = 0; % identyfier for temperature setting
  else 
    set_T = 1;
  end
 
  if ~exist('f', 'var') || isempty(f) 
    f = 1;
  end


  entries = select('Animalia');
  ne = length(entries);
   
  WD = pwd;                % store current path
  cd(['../entries/',entries{1}]) % goto entries

  try
    for i = 1:ne
      cd (['../', entries{i}])
      entries{i} % show progress on screen
      load (['results_', entries{i}])
      par = rmfield_wtxt(par, 'free');   % remove substructure free from par
      dataAll.(entries{i}).model = metaPar.model;
      dataAll.(entries{i}).MRE = metaPar.MRE;
      dataAll.(entries{i}).COMPLETE = metaData.COMPLETE;
      [nm nst] = fieldnmnst_st(par);     % get number of parameter fields
      for j = 1:nst
        dataAll.(entries{i}).(nm{j}) = par.(nm{j});
        dataAll.(entries{i}).units.(nm{j}) = txtPar.units.(nm{j});
        dataAll.(entries{i}).label.(nm{j}) = txtPar.label.(nm{j});
      end
      dataAll.(entries{i}).f = f; % overwrite scaled function response
      if set_T == 0
        [stat, txtStat] = statistics_st(metaPar.model, par, metaData.T_typical, f);
      else
        [stat, txtStat] = statistics_st(metaPar.model, par, metaData.T, f);
      end
      [nm nst] = fieldnmnst_st(stat);    % get number of parameter fields
      for j = 1:nst
        dataAll.(entries{i}).(nm{j}) = stat.(nm{j});
        dataAll.(entries{i}).units.(nm{j}) = txtStat.units.(nm{j});
        dataAll.(entries{i}).label.(nm{j}) = txtStat.label.(nm{j});
      end
    end
   
  catch 
    disp(['Data of entry ', entries{i},' could not extracted'])
  end
   
  cd(WD)                   % goto original path
end

