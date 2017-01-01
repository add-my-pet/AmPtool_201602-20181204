%% prt_patterns
% generates  plots for patterns for display on patterns.html

%%
function prt_patterns
%% created 2016/12/31 by Bas Kooijman

%% Syntax
% <../prt_patterns *prt_patterns*>

%% Description
% generates plots for patterns for display on patterns.html

%
% Output: 
%
% * ? png-files written in ../img/patterns: 
%
%    - 

%% Remarks
% For presentation on the web, copy png files to 
% /home/websites/www.bio.vu.nl/webroot/thb/deb/deblab/add_my_pet/img/patterns

close all

% kap-g
shstat_options('default');
shstat_options('x_label', 'on');
shstat_options('y_label', 'on');
shstat_options('x_transform', 'none');
[Hfig Hleg] = shstat({'kap','g'}, legend_RSED, date); % output handle for setting labels
set(gca, 'FontSize', 15, 'Box', 'on')
saveas(Hfig, '../img/patterns/kap-logg.png')
saveas(Hleg, '../img/patterns/legends_kap-logg.png')
close all

% kap-gHp
shstat_options('default');
shstat_options('x_label', 'on');
shstat_options('y_label', 'on');
shstat_options('x_transform', 'none');
[Hfig Hleg] = shstat({'kap','g_Hp'}, legend_RSED, date); % output handle for setting labels
set(gca, 'FontSize', 15, 'Box', 'on')
saveas(Hfig, '../img/patterns/kap-loggHp.png')
saveas(Hleg, '../img/patterns/legends_kap-loggHp.png')
close all

% W-dW
shstat_options('default');
shstat_options('x_label', 'on');
shstat_options('y_label', 'on');
cWdW = read_allStat('c_T', 'W_dWm', 'dWm'); c_T = cWdW(:,1); W = cWdW(:,2); dW = cWdW(:,3);
[Hfig Hleg] = shstat([W, dW ./ c_T], legend_sauria, date); % output handle for setting labels
set(gca, 'FontSize', 15, 'Box', 'on')

figure(Hfig) 
xlabel('_{10}log weight at max gowth, g')      
ylabel('_{10}log max growth at T_{ref}, g/d')

saveas(Hfig, '../img/patterns/logW-logdW.png')
saveas(Hleg, '../img/patterns/legends_logW-logdW.png')
close all

% W-J_O
shstat_options('default');
shstat_options('x_label', 'on');
shstat_options('y_label', 'on');
cWJO = read_allStat('c_T', 'Ww_i', 'J_Oi'); c_T = cWJO(:,1); W = cWJO(:,2); JO = cWJO(:,3);
[Hfig Hleg] = shstat([W, JO ./ c_T], legend_RSED, date); % output handle for setting labels
set(gca, 'FontSize', 15, 'Box', 'on')

figure(Hfig) 
xlabel('_{10}log max adult weight, g')      
ylabel('_{10}log O_2 consumption at T_{ref}, mol/d')

saveas(Hfig, '../img/patterns/logW-logJO.png')
saveas(Hleg, '../img/patterns/legends_logW-logJO.png')
close all

% logss-kap
shstat_options('default');
shstat_options('y_transform', 'none');
shstat_options('x_label', 'on');
shstat_options('y_label', 'on');
[Hfig Hleg] = shstat({'s_s', 'kap'}, legend_RSED, date); % output handle for adding items
set(gca, 'FontSize', 15, 'Box', 'on')

figure(Hfig) % add items to figure
kap = linspace(1e-6,1,100); ss = kap.^2 .* (1 - kap); 
plot(log10(ss), kap, 'k', 'Linewidth', 2)
ylim([0 1]);
saveas(Hfig, '../img/patterns/logss-kap.png')
saveas(Hleg, '../img/patterns/legends_logss-kap.png')

close all

% ss-kap
shstat_options('x_transform', 'none');
shstat_options('y_transform', 'none');
shstat_options('x_label', 'on');
shstat_options('y_label', 'on');
[Hfig Hleg] = shstat({'s_s', 'kap'}, legend_vert, date); % output handle for adding items
set(gca, 'FontSize', 15, 'Box', 'on')

figure(Hfig) % add items to figure
kap = linspace(0, 1, 100); ss = kap.^2 .* (1 - kap); 
plot(ss, kap, 'k', 'Linewidth', 2)
xlim([0 4/27]); ylim([0 1]);
saveas(Hfig, '../img/patterns/ss-kap.png')
saveas(Hleg, '../img/patterns/legends_ss-kap.png')

close all

