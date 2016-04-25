function shprimpar
close all

figure % {p_Am}/z, scaled specific assimilation
pAmz = read_allStat('p_Am','z','s_M'); logpAmz = log10(pAmz(:,1) ./ pAmz(:,2));
logpAmz_median = median(logpAmz); 
surv_logpAmz = surv(logpAmz); 
plot([0; logpAmz_median; logpAmz_median], [0.5;0.5;0], 'r', surv_logpAmz(:,1), surv_logpAmz(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log \{p_{Am}\}/z, J/d.cm^2')
title('_{10}log \{p_{Am}\}/z at T_{ref}')

figure % k_J, maturity maintenance rate coefficient
kJ = read_allStat('k_J'); 
kJ_median = median(kJ); 
surv_kJ = surv(kJ); 
plot([0; kJ_median; kJ_median], [0.5;0.5;0], 'r', surv_kJ(:,1), surv_kJ(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('k_J, 1/d')
title('k_J at T_{ref}')

figure % [p_M], specific somatic maintenance
logpM = log10(read_allStat('p_M')); 
logpM_median = median(logpM); 
surv_logpM = surv(logpM); 
plot([0; logpM_median; logpM_median], [0.5;0.5;0], 'r', surv_logpM(:,1), surv_logpM(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('_{10}log [p_M], J/d')
title('[p_M] at T_{ref}')

figure % kappa, allocation fraction to soma
kap = read_allStat('kap'); 
kap_median = median(kap); 
surv_kap = surv(kap); 
plot([0; kap_median; kap_median], [0.5;0.5;0], 'r', surv_kap(:,1), surv_kap(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('\kappa, -')

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

