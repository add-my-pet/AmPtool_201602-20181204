%% pie_model
% counts number of entries of the various model types

%%
function [x model] = pie_model (taxon)
%% created 2016/02/21 by Bas Kooijman

%% Syntax
% [x model] = <../pie_model.m *pie_model*> (taxon)

%% Description
% The frequency of the various models in the add_my_pet collection are counted and the result is presented in a pie
%
% Input:
%
% * taxon: optional string with name of taxon (default: taxon = 'Animalia')
%
% Output (apart from figure):
% 
% * x: vector containing model counts in taxa
% * model: vector with names of models

%% Remarks
% sum(x) = total number of animal species in the add_my_pet collection
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
    n = length(entries); x = zeros(length(model),1);
    for i = 1:n
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      x = x + strcmp(model,metaPar.model)'; 
    end
  
    txt = model; y = x; 
    y(9) = y(9) + y(10); txt{9} = {'hep+hex'}; y(10) = []; txt(10) = [];
    y(7) = y(7) + y(8);  txt{7} = {'abj+asj'}; y(8)  = []; txt(8)  = [];
    y(5) = y(5) + y(6);  txt{5} = {'sbp+abp'}; y(6)  = []; txt(6)  = [];
    pie3s(y, 'Bevel', 'Elliptical', 'Labels', txt);

    if ~(sum(x) == n)
      fprintf('Warning: model types need updating')
    end

  catch
    disp('Name of taxon is not recognized')
  end
   
  cd(WD)                   % goto original path
end

