function dataAll = get_dataAll

  entries = select('Animalia');
  ne = length(entries);
   
  WD = pwd;                % store current path
  cd(['../entries/',entries{1}]) % goto entries

  try
    for i = 1:ne
      cd (['../', entries{i}])
      entries{i}
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
      f = 1; dataAll.(entries{i}).f = f; % overwrite scaled function response
      [stat, txtStat] = statistics_st(metaPar.model, par, metaData.T_typical, f);
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

