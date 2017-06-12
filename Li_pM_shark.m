%% fig: Li_dV, files Li_dVb.png, Li_dVj.png, Li_dVp
close all

shstat_options('default')
shstat_options('x_label', 'on');
shstat_options('y_label', 'on');

[Hfig Hleg] = shstat({'L_i', 'p_M'}, legend_shark, []);
figure(Hfig)
plot([0.3;2.1], log10([18;18]), 'g');
xlabel('_{10}log L_\infty, cm')
ylabel('_{10}log [p_M] at T_{ref}, J/d.cm^3')
set(gca, 'FontSize', 15, 'Box', 'on')
saveas(Hfig, '../../deb3/eps/ch8_c/Li_pM_shark.png')
saveas(Hleg, '../../deb3/eps/ch8_c/legend_shark.png') 

legend = legend_moll; legend(end,:)= []; legend(end,:)= [];
legend(1:2,:) = [];
[Hfig Hleg] = shstat({'L_i', 'p_M'}, legend, []);
figure(Hfig)
plot([-0.7;2.5], log10([18;18]), 'g');
xlabel('_{10}log L_\infty, cm')
ylabel('_{10}log [p_M] at T_{ref}, J/d.cm^3')
set(gca, 'FontSize', 15, 'Box', 'on')
saveas(Hfig, '../../deb3/eps/ch8_c/Li_pM_moll.png')
saveas(Hleg, '../../deb3/eps/ch8_c/legend_moll.png') 
