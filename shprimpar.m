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
% Output: no explicit output but figures are produced and png-files written
%
% * in entries_admin/img: pAm.png, v.png, kap.png, pM.png, EG.png, kJ.png EHb.png EHp.png ha.png sG.png

%% Remarks
% Copy png files to 
% /home/websites/www.bio.vu.nl/webroot/thb/deb/deblab/add_my_pet/img

close all

figure(1) % {F_m}, max spec searching rate
shstat_options('x_transform', 'log10');
shstat_options('y_label', 'on');
[Hfig Fm entries missing] = shstat({'F_m'},[],'\{F_m\} at T_{ref}',1);
xlabel('_{10}log \{F_m\}, dm^3/d.cm^2') % overwrite for better DEB notation
saveas (gca, 'img/Fm.png')

figure(2) % kappa_X, digestion efficiency
shstat_options('x_transform', 'none');
shstat_options('y_label', 'on');
[Hfig kap_X entries missing] = shstat({'kap_X'},[],[],2);
xlabel('\kappa_X, -')
saveas (gca, 'img/kapX.png')

figure(3) % {p_Am}/z, scaled specific assimilation
pAmz = read_allStat('p_Am','z','s_M'); logpAmz = log10(pAmz(:,1) ./ pAmz(:,2));
logpAmz_median = median(logpAmz); logpAmx_min = min(logpAmz);
surv_logpAmz = surv(logpAmz); 
plot([logpAmx_min; logpAmz_median; logpAmz_median], [0.5;0.5;0], 'r', surv_logpAmz(:,1), surv_logpAmz(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log \{p_{Am}\}/z, J/d.cm^2')
ylabel('survivor function')
title('_{10}log \{p_{Am}\}/z at T_{ref}')
saveas (gca, 'img/pAm.png')

figure(4) % v, energy conductance
vsM = read_allStat('v', 's_M'); logv = log10(vsM(:,1)); logvj = log10(prod(vsM,2));
logv_median = median(logv); logvj_median = median(logvj); logv_min = min([logv;logvj]);
surv_v = surv(logv); surv_vj = surv(logvj);
hold on
plot([logv_min; logvj_median; logvj_median], [0.5;0.5;0], 'r', surv_vj(:,1), surv_vj(:,2), 'r', 'Linewidth', 2)
plot([logv_min; logv_median; logv_median], [0.5;0.5;0], 'b', surv_v(:,1), surv_v(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10} log v, cm/d')
ylabel('survivor function')
title('v at T_{ref}, before and after acceleration')
saveas (gca, 'img/v.png')

figure(5) % kappa, allocation fraction to soma
shstat_options('x_transform', 'none');
shstat_options('y_label', 'on');
[Hfig kap entries missing] = shstat({'kap'},[],[],5);
xlabel('\kappa, -') % overwrite for better DEB notation
saveas (gca, 'img/kap.png')

figure(6) % [p_M], specific somatic maintenance
shstat_options('x_transform', 'log10');
[Hfig p_M entries missing] = shstat({'p_M'}, [], '[p_M] at T_{ref}', 6);
xlabel('_{10}log [p_M], J/d') % overwrite for better DEB notation
saveas (gca, 'img/pM.png')

figure(7) % [E_G] d_V, cost for structure
EGdV = read_allStat('E_G','d_V'); EG = (EGdV(:,1) ./ EGdV(:,2));
EG_median = median(EG); EG_min = min(EG);
surv_EG = surv(EG); 
plot([EG_min; EG_median; EG_median], [0.5;0.5;0], 'r', surv_EG(:,1), surv_EG(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('[E_G]/ d_V, J/g')
ylabel('survivor function')
saveas (gca, 'img/EG.png')

figure(8) % k_J, maturity maintenance rate coefficient
shstat_options('x_transform', 'none');
[Hfig k_J entries missing] = shstat({'k_J'}, [], 'k_J at T_{ref}',8);
saveas (gca, 'img/kJ.png')

figure(9) % E_Hb/z^3, scaled maturity at birth
EHbz = read_allStat('E_Hb','z'); logEHb = log10(EHbz(:,1) ./ EHbz(:,2).^3);
logEHb_median = median(logEHb); logEHb_min = min(logEHb);
surv_logEHb = surv(logEHb); 
plot([logEHb_min; logEHb_median; logEHb_median], [0.5;0.5;0], 'r', surv_logEHb(:,1), surv_logEHb(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log E_H^b/ z^3, J')
ylabel('survivor function')
saveas (gca, 'img/EHb.png')

figure(10) % E_Hp/z^3, scaled maturity at puberty
EHpz = read_allStat('E_Hp','z'); logEHp = log10(EHpz(:,1) ./ EHpz(:,2).^3);
logEHp_median = median(logEHp); logEHp_min = min(logEHp);
surv_logEHp = surv(logEHp); 
plot([logEHp_min; logEHp_median; logEHp_median], [0.5;0.5;0], 'r', surv_logEHp(:,1), surv_logEHp(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log E_H^p/ z^3, J')
ylabel('survivor function')
saveas (gca, 'img/EHp.png')

figure(11) % h_a, ageing acceleration
shstat_options('x_transform', 'log10');
[Hfig h_a entries missing] = shstat({'h_a'}, [], 'h_a at T_{ref}', 11);
saveas (gca, 'img/ha.png')

figure(12) % s_G, Gompertz stress coefficient
shstat_options('x_transform', 'none');
[Hfig s_G entries missing] = shstat({'s_G'},[],[],12);
saveas (gca, 'img/sG.png')
