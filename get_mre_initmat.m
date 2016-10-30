%% get_mre_initmat
% obtain mre from pars_init and from .mat for all entries

%%
function [mre_init mre_mat] = get_mre_initmat
% created 2016/10/30 by Bas Kooijman

%% Syntax
% [mre_init mre_mat] = <get_mre_initmat *get_mre_initmat*> 

%% Description
% obtain mre from pars_init and from .mat for all ne entries
%
% Output:
% 
% * mre_init: ne-vector with mre values that result from parameters as stored in pars_init
% * mre_mat: ne vector with mre vlues as stored in .mat

%% Example of use
% [mre_init mre_mat] = get_mre_initmat

  nm = select;
  ne = length(nm);
  mre_init = zeros(ne,1); mre_mat = zeros(ne,1);
  
  WD = pwd;                % store current path
  cd(['../entries/',nm{1}]) % goto entries

  try
    for i = 1:ne
      cd (['../', nm{i}])
      load (['results_', nm{i}])
      
      mre_mat(i) = metaPar.MRE;
      func = ['mydata_', nm{i}]; [data, auxData, metaData, txtData, weights] = feval(func);
      func = ['pars_init_', nm{i}]; par = feval(func, metaData);
      func = ['predict_', nm{i}]; mre_init(i) = mre_st(func, par, data, auxData, weights);      
    end
   
  catch 
    disp(['mre of entry ', nm{i},' could not be extracted'])
  end
   
  cd(WD)                   % goto original path
end
