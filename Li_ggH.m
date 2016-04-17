%% Li_ggH
% plots g and g_H as functions of variables

function [stat entries] = Li_ggH(legend)
%% created 2016/04/12 by Bas Kooijman

%% Syntax
% [stat entries] =  <../Li_ggH.m *Li_ggH*>(legend)

%% Description
% plots g, g_Hb, g_Hp as functions of L_i
%
% Input:
%
% * legend: (m,2) array with legend (marker, taxa pairs)
%
% Output
%
% * stat: (n,6)-matrix with L_i s_M g g_Hb g_Hp kap
% * entries: n-string with names of entries

%% Remarks
% be aware that the sequence of taxa in legend matters

%% Example of use
% Li_ggH(legend_RSED); % this uses the standard legend for all entries

  % compose selection matrix
  m = size(legend,1); 
  [sel entries] = select_01('Animalia', legend{1,2});
  n = length(sel);
  for i = 2:m
    sel = [sel, select_01('Animalia', legend{i,2})];
  end
  sel = once(sel);   % remove double selections
  
  stat = zeros(n,6); % initiate statistics
  
   
  WD = pwd;          % store current path
  cd(['../entries/',entries{1}]) % goto entries
  
  try
    for i = 1:n
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      model = metaPar.model; 
  
      % primary pars for all models
      kap = par.kap; 
      p_M = par.p_M; 
      p_Am = par.z * p_M/ kap;
      v = par.v; 
      E_G = par.E_G;
      k_J = par.k_J;
      
      % compound pars for all models
      E_m = p_Am/ v;
      L_m = kap * p_Am/ p_M;
      g = E_G/ kap/ E_m;
      k_M = p_M/ E_G;
      k = k_J/ k_M;
      
      switch model
        case {'std','stf','stx','ssj'}
          E_Hb = par.E_Hb; E_Hp = par.E_Hp; 
          v_Hb = E_Hb/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hp = E_Hp/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          [l_p, l_b] = get_lp([g, k, 0, v_Hb, v_Hp], 1);
          s_M = 1; L_b = L_m * l_b; L_p = L_m * l_p; L_i = L_m;
        case 'sbp'
          E_Hb = par.E_Hb; E_Hp = par.E_Hp; 
          v_Hb = E_Hb/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hp = E_Hp/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          [l_p, l_b] = get_lp([g, k, 0, v_Hb, v_Hp], 1);
          s_M = 1; L_b = L_m * l_b; L_p = L_m * l_p; L_i = L_p; 
        case 'abj'
          E_Hb = par.E_Hb; E_Hj = par.E_Hj; E_Hp = par.E_Hp; 
          v_Hb = E_Hb/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hj = E_Hj/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hp = E_Hp/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          [l_j, l_p, l_b] = get_lj([g, k, 0, v_Hb, v_Hj, v_Hp], 1);
          s_M = l_j/ l_b; L_b = L_m * l_b; L_p = L_m * l_p; L_i = s_M * L_m; 
        case 'asj'
          E_Hb = par.E_Hb; E_Hs = par.E_Hs; E_Hj = par.E_Hj; E_Hp = par.E_Hp; 
          v_Hb = E_Hb/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hs = E_Hs/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hj = E_Hj/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hp = E_Hp/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          [l_s, l_j, l_p, l_b] = get_ls([g, k, 0, v_Hb, v_Hs, v_Hj, v_Hp], 1);
          s_M = l_j/ l_s; L_b = L_m * l_b; L_p = L_m * l_p; L_i = s_M * L_m; 
        case 'abp'
          E_Hb = par.E_Hb; E_Hp = par.E_Hp; 
          v_Hb = E_Hb/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hp = E_Hp/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          [t_p, t_pp, t_b, l_p, l_pp, l_b] = get_tj([g k 0 v_Hb v_Hp], 1);
          s_M = l_p/ l_b; L_b = L_m * l_b; L_p = L_m * l_p; L_i = L_p; 
        case 'hep'
          E_Hb = par.E_Hb; E_Hp = par.E_Hp; E_Rj = par.E_Rj;
          v_Hb = E_Hb/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Hp = E_Hp/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_Rj = kap/ (1 - kap) * E_Rj/ E_G; 
          [t_j, t_p, t_b, l_j, l_p, l_b, l_i] = get_tj_hep([g k v_Hb v_Hp v_Rj], 1);
          s_M = l_j/ l_b; L_b = L_m * l_b; L_p = L_m * l_p; L_i = L_m * l_i; 
        case 'hex'
          E_Hb = par.E_Hb; E_He = par.E_He; E_Hp = E_Hb;
          s_j = par.s_j; kap_V = par.kap_V;
          v_Hb = E_Hb/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          v_He = E_He/ p_Am * g^2 * k_M^3/ (1 - kap)/ v^2; 
          [t_j, t_e, t_b, l_j, l_e, l_b] = get_tj_hex([g k v_Hb v_He s_j kap kap_V], 1);
          s_M = l_j/ l_b; L_b = L_m * l_b; L_p = L_b; L_i = L_m * l_e; 
      end
      g_Hb = E_Hb/ L_b^3/ (1 - kap)/ E_m; 
      g_Hp = E_Hp/ L_p^3/ (1 - kap)/ E_m;
      stat(i,:) = [L_i s_M g g_Hb g_Hp kap];
    end
  catch
    disp('Name of taxon is not recognized')
  end
   
  cd(WD)                   % goto original path
  
  close all
   
  fig1 = figure(1); % 1-3
  h1 = datacursormode(fig1);
  hold on
  for i = 1:m
    marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
    plot(log10(stat(sel(:,i),1)), log10(stat(sel(:,i),3)), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
  end
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('_{10}log L_\infty, cm')  
  ylabel('_{10}log g, -')
  %saveas (gca, 'Li_g.png')
  h1.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(stat(:,[1 3])));
  datacursormode on % mouse click on plot

  fig2 = figure(2); % 1-4
  hold on
  for i = 1:m
    marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
    plot(log10(stat(sel(:,i),1)), log10(stat(sel(:,i),4)), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
  end
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('_{10}log L_\infty, cm')  
  ylabel('_{10}log g_H^b, -')
  %saveas (gca, 'Li_gHb.png')
  h2 = datacursormode(fig2);
  h2.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(stat(:,[1 4])));
  datacursormode on % mouse click on plot

  fig3 = figure(3); % 1-5
  hold on
  for i = 1:m
    marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
    plot(log10(stat(sel(:,i),1)), log10(stat(sel(:,i),5)), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
  end
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('_{10}log L_\infty, cm')  
  ylabel('_{10}log g_H^p, -')
  %saveas (gca, 'Li_gHp.png')
  h3 = datacursormode(fig3);
  h3.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(stat(:,[1 5])));
  datacursormode on % mouse click on plot

  fig4 = figure(4); % 3-4
  hold on
  for i = 1:m
    marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
    plot(log10(stat(sel(:,i),3)), log10(stat(sel(:,i),4)), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
  end
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('_{10}log g, -')  
  ylabel('_{10}log g_H^b, -')
  %saveas (gca, 'g_gHb.png')
  h4 = datacursormode(fig4);
  h4.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(stat(:,[3 4])));
  datacursormode on % mouse click on plot

  fig5 = figure(5); % 3-5
  hold on
  for i = 1:m
    marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
    plot(log10(stat(sel(:,i),3)), log10(stat(sel(:,i),5)), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
  end
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('_{10}log g, -')  
  ylabel('_{10}log g_H^p, -')
  %saveas (gca, 'g_gHp.png')
  h5 = datacursormode(fig5);
  h5.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(stat(:,[3 5])));
  datacursormode on % mouse click on plot

  shlegend(legend);
  
  if sum(sum(sel)) < n
    fprintf('Not all entries are shown \n');
  end
end


