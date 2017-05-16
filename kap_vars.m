close all
clear all

legend = legend_aves;

vars = read_allStat('kap','v','c_T', 'E_m', 'p_M');
kap = vars(:,1); v = vars(:,2)./vars(:,3); E_m = vars(:,4); p_M = vars(:,5)./vars(:,3);

shstat_options('default');
[Hfig1 Hleg1] = shstat([kap, E_m], legend); 
figure(Hfig1)
xlabel('_{10}log \kappa, -')
ylabel('_{10}log [E_m], J/cm^3')

[Hfig2 Hleg2] = shstat([kap, v], legend); 
figure(Hfig2)
xlabel('_{10}log \kappa, -')
ylabel('_{10}log v at T_{ref}, cm/d')

[Hfig3 Hleg3] = shstat([kap, p_M], legend); 
figure(Hfig3)
xlabel('_{10}log \kappa, -')
ylabel('_{10}log [p_M] at T_{ref}, J/d.cm^3')
