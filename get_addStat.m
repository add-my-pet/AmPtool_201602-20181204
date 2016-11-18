%% get_addStat
% adds all pars and stats to allStat.mat for specified entries

%%
function allStat = get_addStat(taxa, T, f)
% created 2016/04/22 by Bas Kooijman

%% Syntax
% allStat = <get_addStat *get_addStat*> (taxa, T, f)

%% Description
% gets model, MRE, SMSE, CLOMPLETE, author, date_subm, date_acc, all parameters and statistics of specified entries.
% Parameters are always expressed at T_ref, i.e. C2K(20), irrespective of input T.
%
% Input:
%
% * taxa: cell string with taxa to be added
% * T: optional scalar with body temperature in Kelvin for ststistics (default T_typical, which is entry-specific)
% * f: optional scalar with scaled functional response (default 1)
%
% Output:
% 
% * allStat: structure with all parameters and statistics values, including their units and labels

%% Remarks
% Statistics are given at T_typical or T. 
% Meant to be used in combination with <write_addStat.html *write_addStat*>, which checks presence in sister-directory entries.
% See <get_addStat.html *get_addStat*> for all entries of select.

%% Example of use
% see write_addStat

  if ~exist('T', 'var') || isempty(T)
    set_T = 0; % identyfier for temperature setting
  else 
    set_T = 1;
  end
 
  if ~exist('f', 'var') || isempty(f) 
    f = 1;
  end

  load allStat.mat
  
  ne = length(taxa);
  WD = pwd;                % store current path
  cd(['../entries/',taxa{1}]) % goto entries

  try
    for i = 1:ne
      cd (['../', taxa{i}])
      load (['results_', entries{i}])
      
      % initiation
      allStat.(entries{i}).model = metaPar.model; allStat.(entries{i}).units.model = '-'; allStat.(entries{i}).label.model = 'DEB model';
      allStat.(entries{i}).MRE = metaPar.MRE; allStat.(entries{i}).units.MRE = '-'; allStat.(entries{i}).label.MRE = 'Mean Relative Error';
      allStat.(entries{i}).SMSE = metaPar.SMSE; allStat.(entries{i}).units.SMSE = '-'; allStat.(entries{i}).label.SMSE = 'Symmetric Mean Squared Error';
      allStat.(entries{i}).COMPLETE = metaData.COMPLETE; allStat.(entries{i}).units.COMPLETE = '-'; allStat.(entries{i}).label.COMPLETE = 'completeness';
      allStat.(entries{i}).author = metaData.author(:)'; allStat.(entries{i}).units.author = '-'; allStat.(entries{i}).label.author = 'submitting author';
      author_mod = get_author_mod(metaData);
      allStat.(entries{i}).author_mod = author_mod; allStat.(entries{i}).units.author_mod = '-'; allStat.(entries{i}).label.author_mod = 'modification author';
      allStat.(entries{i}).date_subm = metaData.date_subm; allStat.(entries{i}).units.date_subm = '-'; allStat.(entries{i}).label.date_subm = 'submitting date';
      allStat.(entries{i}).date_acc = metaData.date_acc; allStat.(entries{i}).units.date_acc = '-'; allStat.(entries{i}).label.date_acc = 'acceptance date';
      allStat.(entries{i}).T_typical = metaData.T_typical;
            
      % parameters
      par = rmfield_wtxt(par, 'free');   % remove substructure free from par
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
    disp(['Statistics of entry ', entries{i},' could not be extracted'])
  end
   
  cd(WD)                   % goto original path
end

function author_mod = get_author_mod(metaData)
  author_mod = cell(0);
  [nm nr] = fieldnmnst_st(metaData); 
  n = strfind(nm, 'author_'); 
  for i = 1:nr
    if ~isempty(n{i})
      authors = metaData.(nm{i});
      author_mod = [author_mod, authors(:)'];
    end
  end
end
