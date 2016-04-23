%% get_allStat
% obtain a structure with all pars and stats for all entries

%%
function allStat = get_allStat(T, f)
% created 2016/04/22 by Bas Kooijman

%% Syntax
% allStat = <get_allStat *get_allStat*> (T, f)

%% Description
% gets model, MRE, CLOMPLETE, all parameters and statistics of all entries.
% Parameters are always expressed at T_ref, irrespective of input T.
%
% Input:
%
% * T: optional scalar with body temperature in Kelvin (default T_typical, which is entry-specific)
% * f: optional scalar with scaled functional response (default 1)
%
% Output:
% 
% * allStat: structure with all parameters and statistics values, including their units and labels

%% Remarks
% Can be used to compute statistics for all entries at the start of a session on the comparison of parameter and statistics values
% For 411 entries, the allStat.mat file is 2.6 Mb.

%% Example of use
% allStat = get_allStat; see mydata_shstat

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
      fprintf([entries{i}, '\n']); % show progress on screen (takes some time)
      load (['results_', entries{i}])
      
      % parameters
      par = rmfield_wtxt(par, 'free');   % remove substructure free from par
      allStat.(entries{i}).model = metaPar.model;
      allStat.(entries{i}).MRE = metaPar.MRE;
      allStat.(entries{i}).COMPLETE = metaData.COMPLETE;
      [nm nst] = fieldnmnst_st(par);     % get number of parameter fields
      for j = 1:nst % add all parameters at T_ref
        allStat.(entries{i}).(nm{j}) = par.(nm{j});
        allStat.(entries{i}).units.(nm{j}) = txtPar.units.(nm{j});
        allStat.(entries{i}).label.(nm{j}) = txtPar.label.(nm{j});
      end
      
      % statistics
      allStat.(entries{i}).f = f; % overwrite scaled function response
      if set_T == 0
        [stat, txtStat] = statistics_st(metaPar.model, par, metaData.T_typical, f);
      else
        [stat, txtStat] = statistics_st(metaPar.model, par, T, f);
      end
      [nm nst] = fieldnmnst_st(stat);    % get number of parameter fields
      for j = 1:nst % add all statistis at T or T_typical
        allStat.(entries{i}).(nm{j}) = stat.(nm{j});
        allStat.(entries{i}).units.(nm{j}) = txtStat.units.(nm{j});
        allStat.(entries{i}).label.(nm{j}) = txtStat.label.(nm{j});
      end
    end
   
  catch 
    disp(['Statistics of entry ', entries{i},' could not extracted'])
  end
   
  cd(WD)                   % goto original path
end

