%% pie_SGGJR
% presents pies for allocation at birth, puberty, ultimate

%%
function  pSGGJR = pie_SGGJR (entry, wrt)
% created 2016/05/02 by Bas Kooijman, modified 2017/01/04

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
% <allPie_SGGJR.html *allPie_SGGJR*> writes all pies to all entries.
% Notice that the sum of all these powers does not equal assimilation since reserve builds up during growth
% Gets input data from allStat.mat, which must be up-to-date

%% Example of use
% pie_SGGJR('Odontaster_validus'); 

  load allStat
  
  if ~exist('wrt','var') || isempty(wrt)
      wrt = false;
  end
  
  kap_G = allStat.(entry).kap_G; E_0 = allStat.(entry).E_0;
  pSGGJR = [allStat.(entry).p_Sb allStat.(entry).p_Sp allStat.(entry).p_Si;
           kap_G * [allStat.(entry).p_Gb allStat.(entry).p_Gp allStat.(entry).p_Gi]; 
           (1 - kap_G) * [allStat.(entry).p_Gb allStat.(entry).p_Gp allStat.(entry).p_Gi]; 
           allStat.(entry).p_Jb allStat.(entry).p_Jp allStat.(entry).p_Ji; 
           allStat.(entry).p_Rb allStat.(entry).p_Rp allStat.(entry).p_Ri];
  pSGGJR = max(1e-16, pSGGJR); % sometimes growth is negative (but very small)
  pC = sum(pSGGJR,1); % total mobilisation flux
  pA = [allStat.(entry).p_Ab; allStat.(entry).p_Ap; allStat.(entry).p_Ai]; % assimilation flux
  
  par = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap];
  pie_color = [1 0 0; 0 1 0; 0 1 0; 1 0 1; 0 0 1]; % colors for S, G, J. R
  
  Hfig1 = figure(1); 
  p = pSGGJR(:,1)/pC(1); % divide p_* by sum, else errors occur (probably due to small numbers)
  txt = {...
    ['p_S ', num2str(p(1), '% 3.2f')], ['p_G ', num2str(p(2), '% 3.2f')], ['p_G ', num2str(p(3), '% 3.2f')], ...
    ['p_J ', num2str(p(4), '% 3.2f')], ['p_R ', num2str(p(5), '% 3.2f')]};
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(p(:,1), 'Bevel', 'Elliptical', 'Labels', txt, 'Explode', [1 0 1 1 1]);
  colormap(pie_color);
  title({'Birth at T_{typical}, f = 1', ['p_A = ', num2str(pA(1), '% 1.3e'), ' J/d, p_C = ', num2str(pC(1), '% 1.3e'), ' J/d']});
  if wrt
    Hfig1 = tightfig(Hfig1);
    saveas(Hfig1, ['../entries/', entry, '/', entry, '_pie_pSGJRb.png']);
  end
  set(Hfig1, 'Outerposition', [50 500 600 600]);

  Hfig2 = figure(2);
  p= pSGGJR(:,2)/pC(2); % divide p_* by sum, else errors occur (probably due to small numbers)
  txt = {...
    ['p_S ', num2str(p(1), '% 3.2f')], ['p_G ', num2str(p(2), '% 3.2f')], ['p_G ', num2str(p(3), '% 3.2f')], ...
    ['p_J ', num2str(p(4), '% 3.2f')], ['p_R ', num2str(p(5), '% 3.2f')]};
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(p(:,1), 'Bevel', 'Elliptical', 'Labels', txt, 'Explode', [1 0 1 1 1]);
  colormap(pie_color);
  title({'Puberty at T_{typical}, f = 1', ['p_A = ', num2str(pA(2), '% 1.3e'), ' J/d,  p_C = ', num2str(pC(2), '% 1.3e'), ' J/d']});
  if wrt
    Hfig2 = tightfig(Hfig2);
    saveas(Hfig2, ['../entries/', entry, '/', entry, '_pie_pSGJRp.png']);
  end
  set(Hfig2, 'Outerposition', [650 500 600 600]);
 
  Hfig3 = figure(3);
  p=pSGGJR(:,3)/pC(3);
  txt = {...
    ['p_S ', num2str(p(1), '% 3.2f')], ['p_G ', num2str(p(2), '% 3.2f')], ['p_G ', num2str(p(3), '% 3.2f')], ...
    ['p_J ', num2str(p(4), '% 3.2f')], ['p_R ', num2str(p(5), '% 3.2f')]};
  txt{2} = '';
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(p, 'Bevel', 'Elliptical', 'Labels', txt, 'Explode', [1 0 1 1 0]);
  colormap(pie_color);
  if strcmp(allStat.(entry).model,'hex')
    title({'Pupation at T_{typical}', ['p_A = ', num2str(pA(3), '% 1.3e'), ' J/d, p_C = ', num2str(pC(3), '% 1.3e'), ' J/d']});
  elseif strcmp(allStat.(entry).model,'hep')
    title({'Metam at T_{typical}', ['p_A = ', num2str(pA(3), '% 1.3e'), ' J/d, p_C = ', num2str(pC(3), '% 1.3e'), ' J/d']});
  else
    title({'Ultimate at T_{typical}, f = 1', ['p_A = ', num2str(pA(3), '% 1.3e'), ' J/d, p_C = ', num2str(pC(3), '% 1.3e'), ' J/d']});
  end
  if wrt
    Hfig3 = tightfig(Hfig3);
    saveas(Hfig3, ['../entries/', entry, '/', entry, '_pie_pSGJRi.png'])
  end
  set(Hfig3, 'Outerposition', [650 20 600 600]);
  
  % cumulative investment at birth
  Hfig = figure;
  par_pie = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap, allStat.(entry).kap_G];
  if strcmp(allStat.(entry).model, 'stf') || strcmp(allStat.(entry).model, 'stx')
    EMJHG = get_EMJHG_foetus(par_pie, 1);
    pie_txt = { ...
      ['reserve ', num2str(EMJHG(1), '% 3.2f')], ['som maint ', num2str(EMJHG(2), '% 3.2f')], ['mat maint ', num2str(EMJHG(3), '% 3.2f')], ...
      ['maturity ',  num2str(EMJHG(4), '% 3.2f')], ['growth overhead ', num2str(EMJHG(5), '% 3.2f')], ['structure ', num2str(EMJHG(6), '% 3.2f')]};
    pie_color = [1 1 .8; 1 0 0; 1 0 1; 0 0 1; 0 1 0; .8 1 .8];
    colormap(pie_color);
    set(gca, 'FontSize', 15, 'Box', 'on')
    pie3s(EMJHG, 'Explode', [0 1 1 1 1 0], 'Labels', pie_txt, 'Bevel', 'Elliptical');
    title({'cum. investment in foetus, e_b = 1', ['E_{tot} = ', num2str(E_0,'% 1.3e'), ' J']})
  else
    EMJHG = get_EMJHG(par_pie, 1);
    pie_txt = { ...
        ['reserve ', num2str(EMJHG(1), '% 3.2f')], ['som maint ', num2str(EMJHG(2), '% 3.2f')], ['mat maint ', num2str(EMJHG(3), '% 3.2f')], ...
        ['maturity ', num2str(EMJHG(4), '% 3.2f')],['growth overhead ', num2str(EMJHG(5), '% 3.2f')], ['structure ', num2str(EMJHG(6), '% 3.2f')]};
    pie_color = [1 1 .8; 1 0 0; 1 0 1; 0 0 1; 0 1 0; .8 1 .8];
    colormap(pie_color);
    set(gca, 'FontSize', 15, 'Box', 'on')
    pie3s(EMJHG, 'Explode', [0 1 1 1 1 0], 'Labels', pie_txt, 'Bevel', 'Elliptical');
    title({'cum. investment at birth, e_b = 1', ['E_0 = ', num2str(E_0,'% 1.3e'), ' J'] })      
  end
  if wrt
    Hfig = tightfig(Hfig);
    saveas(Hfig, ['../entries/', entry, '/', entry, '_pie_SGJRb.png'])
  end
  set(Hfig, 'Outerposition', [50 20 600 600]);

end
