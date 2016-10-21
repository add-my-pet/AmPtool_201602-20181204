%% kap_opt_all
% obtain optimal kappa for all entries

%%
function [kap R_i nm] = kap_opt_all
% created 2016/06/10 by Bas Kooijman

%% Syntax
% [kap R_i] = <kap_opt_all *kap_opt_all*> 

%% Description
% gets kap that maximizes max reprod rate for all entries
%
% Output:
% 
% * kap: (n,2)-matrix with optimal, actual kappa
% * R_i: (n,2)-matrix with optimal, actual mas reprod rate
% * nm:  (n,1)-arrays of names of species


%% Example of use
% [kap R_i] = kap_opt_all

  global allStat
  
  [sel nm] = select_01('Animalia', 'Holometabola'); sel = ~sel; % exclude Holometabola
  ne = length(nm); kap = zeros(ne,2); R_i = zeros(ne,2);
  load allStat
   
  for i = 1:ne
    if sel(i) % see get_parfields
      [par model] = read_pars(nm{i});
      fprintf([nm{i}, '\n']); % show progress on screen (takes some time)
      [kap(i,:) R_i(i,:)] = kap_opt(model, par, C2K(20), 1); 
    end
  end
  kap = kap(sel,:); R_i = R_i(sel,:); nm = nm(sel); 
    
  close all
  
  figure(1) % kappa, allocation fraction to soma
  hold on
  x_median = median(kap(:,1)); x_min = min(kap(:,1));
  surv_x = surv(kap(:,1)); 
  plot([x_min; x_median; x_median], [0.5;0.5;0], 'r', surv_x(:,1), surv_x(:,2), 'r', 'Linewidth', 2)
  x_median = median(kap(:,2)); x_min = min(kap(:,2));
  surv_x = surv(kap(:,2)); 
  plot([x_min; x_median; x_median], [0.5;0.5;0], 'r', surv_x(:,1), surv_x(:,2), 'b', 'Linewidth', 2)
  set(gca, 'FontSize', 15, 'Box', 'on', 'YTick', 0:0.2:1)
  xlabel('\kappa, -') 
  ylim([0 1]);
  ylabel('survivor function')
  %saveas (gca, '../../deb3/eps/ch7_c.kap.png')

  figure(2) % R_i/ R_imax
  R_i = R_i(im(R_i(:,1)) == 0 & im(R_i(:,2)) == 0,:);
  sR = log10(R_i(:,1)./R_i(:,2));
  x_median = median(sR); x_min = min(sR);
  surv_x = surv(sR); 
  plot([x_min; x_median; x_median], [0.5;0.5;0], 'r', surv_x(:,1), surv_x(:,2), 'b', 'Linewidth', 2)
  set(gca, 'FontSize', 15, 'Box', 'on', 'YTick', 0:0.2:1)
  xlim([0 12]);
  xlabel('- _{10}log s_R, -') 
  ylim([0 1]);
  ylabel('survivor function')
  %saveas (gca, '../../deb3/eps/ch7_c/sR.png')

end
