%% pie_model
% counts number of entries of the various model types

%%
function [n model index] = pie_model (taxon)
%% created 2016/02/21 by Bas Kooijman

%% Syntax
% [n model index] = <../pie_model.m *pie_model*> (taxon)

%% Description
% The frequency of the various models in the add_my_pet collection are counted and the result is presented in a pie
%
% Input:
%
% * taxon: optional string with name of taxon (default: taxon = 'Animalia')
%
% Output (apart from figure):
% 
% * n: nm-vector containing model counts in taxa
% * model: nm-vector with names of models
% * index: (ne,nm) binary matrix with models of each of ne members of the taxon

%% Remarks
% sum(n) = total number of animal species in the add_my_pet collection
% about_add_my_pet make a plot of this

%% Example of use
% pie_model; or [n model] = pie_model('Mollusca');


  if ~exist('taxon', 'var')
    taxon = 'Animalia';
  end

  model = {'std', 'stf', 'stx', 'ssj', 'sbp', 'abp', 'abj', 'asj', 'hep', 'hex'};
  entries = select(taxon);
   
  WD = pwd;                % store current path
  cd(['../entries/',entries{1}]) % goto entries

  try
    ne = length(entries); nm = length(model); index = zeros(ne,nm);
    for i = 1:ne
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      index(i,:) = strcmp(model,metaPar.model); 
    end
    n = sum(index,1);
  
    txt = model; y = n; 
    y(9) = y(9) + y(10); txt{9} = {'hep+hex'}; y(10) = []; txt(10) = [];
    y(7) = y(7) + y(8);  txt{7} = {'abj+asj'}; y(8)  = []; txt(8)  = [];
    y(5) = y(5) + y(6);  txt{5} = {'sbp+abp'}; y(6)  = []; txt(6)  = [];
    pie3s(y, 'Bevel', 'Elliptical', 'Labels', txt);

    if ~(sum(n) == ne)
      fprintf('Warning: model types need updating')
    end

  catch
    disp('Name of taxon is not recognized')
  end
   
  cd(WD)                   % goto original path
end

