%% pie_SGGJR
% presents pies for allocation at birth, puberty, ultimate

%%
function  pSGGJR = pie_SGGJR (entry, wrt)
% created 2016/05/02 by Bas Kooijman

%% Syntax
% pSGGJR = <../pie_SGGJR.m *pie_SGGJR*> (entry, wrt)

%% Description
% Allocation to somatic maintenance, growth, maturity maintenance and maturation/reproduction 
%   for birth, puberty and ultimate and cumulative invertment at birth are presented in 4 pies.
% Dissipating fluxes explode in the pies; growth is partitioned into growth excluding overheads and growth overheads.
% Color coding: som maint: red, mat maint: magenta, growth: green, maturation/reproduction: blue.
% Data are obtained from allStat, use load('allStat') before use and make allStat global.
%
% Input
%
% entry: string with name of entry
% wrt: optional indicator for writing files to ../entries/entry (default: 0)
%
% Output (apart from figure):
% 
% * pSGGRJ: (5,3)-matrix with powers in J/d
%
%     - S: p_M + p_T: somatic maintenance
%     - G: p_G: growth, excluding overhead
%     - G: p_G: growth overhead
%     - J: p_J: maturity maintenance
%     - R: p_R: maturation or reproduction

%% Remarks
% <allPie_SGGJR.html *allPie_SGGJR*> writes all pies to all entries

%% Example of use
% pie_SGJR('Odontaster_validus'); 

  global allStat
  
  if ~exist('wrt','var') || isempty(wrt)
      wrt = false;
  end
  
  kap_G = allStat.(entry).kap_G;
  pSGGJR = [allStat.(entry).p_Sb allStat.(entry).p_Sp allStat.(entry).p_Si;
           kap_G * [allStat.(entry).p_Gb allStat.(entry).p_Gp allStat.(entry).p_Gi]; 
           (1 - kap_G) * [allStat.(entry).p_Gb allStat.(entry).p_Gp allStat.(entry).p_Gi]; 
           allStat.(entry).p_Jb allStat.(entry).p_Jp allStat.(entry).p_Ji; 
           allStat.(entry).p_Rb allStat.(entry).p_Rp allStat.(entry).p_Ri];
  pSGGJR = max(1e-16, pSGGJR); % sometimes growth is negative (but very small)
  ptot = sum(pSGGJR,1); % total flux
  
  par = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap];
  pie_color = [1 0 0; 0 1 0; 0 1 0; 1 0 1; 0 0 1]; % colors for S, G, J. R
  
  Hfig1 = figure(1); % divide p_* by sum, else errors occur (probably due to small numbers)
  txt = {'p_S', 'p_G', '', 'p_J', 'p_R'};
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGGJR(:,1)/ptot(1), 'Bevel', 'Elliptical', 'Labels', txt, 'Explode', [1 0 1 1 1]);
  colormap(pie_color);
  title(['allocation at birth, p_{tot} = ', num2str(ptot(1)), ' J/d']);
  if wrt
    saveas(Hfig1, ['../entries/',entry, '/pie_pSGJRb.png']);
  end
  set(Hfig1, 'Outerposition', [50 500 600 600]);

  Hfig2 = figure(2);
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGGJR(:,2)/ptot(2), 'Bevel', 'Elliptical', 'Labels', txt, 'Explode', [1 0 1 1 1]);
  colormap(pie_color);
  title(['allocation at puberty, p_{tot} = ', num2str(ptot(2)), ' J/d']);
  if wrt
    saveas(Hfig2, ['../entries/',entry, '/pie_pSGJRp.png']);
  end
  set(Hfig2, 'Outerposition', [650 500 600 600]);
 
  Hfig3 = figure(3);
  txt{2} = '';
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGGJR(:,3)/ptot(3), 'Bevel', 'Elliptical', 'Labels', txt, 'Explode', [1 0 1 1 0]);
  colormap(pie_color);
  if strcmp(allStat.(entry).model,'hex')
    title(['allocation at pupation, p_{tot} = ', num2str(ptot(3)), ' J/d']);
  elseif strcmp(allStat.(entry).model,'hep')
    title(['allocation at metam, p_{tot} = ', num2str(ptot(3)), ' J/d']);
  else
    title(['allocation at ultimate, p_{tot} = ', num2str(ptot(3)), ' J/d']);
  end
  if wrt
    saveas(Hfig3, ['../entries/',entry, '/pie_pSGJRi.png'])
  end
  set(Hfig3, 'Outerposition', [650 20 600 600]);
  
  % cumulative investment at birth
  par_pie = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap, allStat.(entry).kap_G];
  if strcmp(allStat.(entry).model, 'stf') || strcmp(allStat.(entry).model, 'stx')
    Hfig = birth_pie_foetus(par_pie);
  else
    Hfig = birth_pie(par_pie);
  end
  if wrt
    saveas(Hfig, ['../entries/',entry, '/pie_ESGJRb.png'])
  end
  set(Hfig, 'Outerposition', [50 20 600 600]);

end

