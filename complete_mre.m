%% complete_mre
% gives COMPLETE, and MRE 

%%
function CM = commplete_mre
%% created 2016/02/21 by Bas Kooijman

%% Syntax
% CM = <../complete_mre.m *complete_mre*>

%% Description
% COMPLETE and MRE in the sequence of select('Animalia')
%
%
% Output: 
% 
% * CM: (n,2)-matrix with COMPLETE, MRE for all n entries in the collection

%% Remarks
% The sequence of rows in CM is select('Animalia') 
% about_add_my_pet make a plot of this

%% Example of use
% complete_mre

  entries = select('Animalia');
  n = length(entries);
  CM = zeros(n,2);
   
  WD = pwd;                % store current path
  cd(['../entries/',entries{1}]) % goto entries

  try
    for i = 1:n
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      CM(i,:) = [metaData.COMPLETE, metaPar.MRE]; 
    end
    CM = CM(CM(:,2) < 1,:); % remove Plodia, not ready yet
    
    
  catch
    disp('Name of taxon is not recognized')
  end
   
  cd(WD)                   % goto original path
end

