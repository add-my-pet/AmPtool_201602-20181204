%% shprimpar
% generates survivor plots for primary parameters

%%
function shprimpar
%% created 2016/04/25 by Bas Kooijman

%% Syntax
% <../shprimpar *shprimpar*>

%% Description
% generates survivor plots for primary parameters
%
% Output: no explicit output but figures are produced and pns-files written
%
% * in entries_admin/img: pAm.png, v.png, kap.png, pM.png, EG.png, kJ.png EHb.png EHp.png ha.png sG.png

%% Remarks
% Copy png files to 
% /home/websites/www.bio.vu.nl/webroot/thb/deb/deblab/add_my_pet/img

close all

figure % {p_Am}/z, scaled specific assimilation
pAmz = read_allStat('p_Am','z','s_M'); logpAmz = log10(pAmz(:,1) ./ pAmz(:,2));
logpAmz_median = median(logpAmz); 
surv_logpAmz = surv(logpAmz); 
plot([0; logpAmz_median; logpAmz_median], [0.5;0.5;0], 'r', surv_logpAmz(:,1), surv_logpAmz(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log \{p_{Am}\}/z, J/d.cm^2')
title('_{10}log \{p_{Am}\}/z at T_{ref}')
saveas (gca, 'img/pAm.png')

figure % v, energy conductance
vsM = read_allStat('v', 's_M'); logv = log10(vsM(:,1)); logvj = log10(prod(vsM,2));
v_median = median(logv); vj_median = median(logvj);
surv_v = surv(logv); surv_vj = surv(logvj);
hold on
plot([-3.5; vj_median; vj_median], [0.5;0.5;0], 'r', surv_vj(:,1), surv_vj(:,2), 'r', 'Linewidth', 2)
plot([-3.5; v_median; v_median], [0.5;0.5;0], 'b', surv_v(:,1), surv_v(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10} log v, cm/d')
title('v at T_{ref}, before and after acceleration')
saveas (gca, 'img/v.png')

figure % kappa, allocation fraction to soma
kap = read_allStat('kap'); 
kap_median = median(kap); 
surv_kap = surv(kap); 
plot([0; kap_median; kap_median], [0.5;0.5;0], 'r', surv_kap(:,1), surv_kap(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('\kappa, -')
saveas (gca, 'img/kap.png')

figure % [p_M], specific somatic maintenance
logpM = log10(read_allStat('p_M')); 
logpM_median = median(logpM); 
surv_logpM = surv(logpM); 
plot([0; logpM_median; logpM_median], [0.5;0.5;0], 'r', surv_logpM(:,1), surv_logpM(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log [p_M], J/d')
title('[p_M] at T_{ref}')
saveas (gca, 'img/pM.png')

figure % [E_G] d_V, cost for structure
EGdV = read_allStat('E_G','d_V'); EG = (EGdV(:,1) ./ EGdV(:,2));
EG_median = median(EG); 
surv_EG = surv(EG); 
plot([0; EG_median; EG_median], [0.5;0.5;0], 'r', surv_EG(:,1), surv_EG(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('[E_G]/ d_V, J/g')
saveas (gca, 'img/EG.png')

figure % k_J, maturity maintenance rate coefficient
kJ = read_allStat('k_J'); 
kJ_median = median(kJ); 
surv_kJ = surv(kJ); 
plot([0; kJ_median; kJ_median], [0.5;0.5;0], 'r', surv_kJ(:,1), surv_kJ(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('k_J, 1/d')
title('k_J at T_{ref}')
saveas (gca, 'img/kJ.png')

figure % E_Hb/z^3, scaled maturity at birth
EHbz = read_allStat('E_Hb','z'); logEHb = log10(EHbz(:,1) ./ EHbz(:,2).^3);
logEHb_median = median(logEHb); 
surv_logEHb = surv(logEHb); 
plot([-15; logEHb_median; logEHb_median], [0.5;0.5;0], 'r', surv_logEHb(:,1), surv_logEHb(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log E_H^b/ z^3, J')
saveas (gca, 'img/EHb.png')

figure % E_Hp/z^3, scaled maturity at puberty
EHpz = read_allStat('E_Hp','z'); logEHp = log10(EHpz(:,1) ./ EHpz(:,2).^3);
logEHp_median = median(logEHp); 
surv_logEHp = surv(logEHp); 
plot([-5; logEHp_median; logEHp_median], [0.5;0.5;0], 'r', surv_logEHp(:,1), surv_logEHp(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log E_H^p/ z^3, J')
saveas (gca, 'img/EHp.png')

figure % h_a, ageing acceleration
ha = read_allStat('h_a'); logha = log10(ha);
logha_median = median(logha); 
surv_logha = surv(logha); 
plot([-50; logha_median; logha_median], [0.5;0.5;0], 'r', surv_logha(:,1), surv_logha(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log h_a, 1/d^2')
saveas (gca, 'img/ha.png')

figure % s_G, Gompertz stress coefficient
sG = read_allStat('s_G'); logsG = log10(sG(sG>0));
logsG_median = median(logsG); 
surv_logsG = surv(logsG); 
plot([-4; logsG_median; logsG_median], [0.5;0.5;0], 'r', surv_logsG(:,1), surv_logsG(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log s_G, -')
saveas (gca, 'img/sG.png')
