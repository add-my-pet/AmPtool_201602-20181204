%% about_add_my_pet
% generates html

%%
function about_add_my_pet
%% created 2016/02/23 by Bas Kooijman

%% Syntax
% CM = <../about_add_my_pet *about_add_my_pet*>

%% Description
% Runs plotting routines, creates png-files and link them in an html-file
%
%
% Output png and html files: 

pie_Animalia;
saveas (gca, 'img/pie_Animalia.png')

pie_model;
saveas (gca, 'img/pie_model.png')

[dates taxa_new dates_new] = get_date_subm;
surv_dates = surv(dates, 2006); 
surv_dates([1; end - 1; end],:) = [];    
n = size(surv_dates, 1)/2;
    
plot(surv_dates(:,1), n * (1 - surv_dates(:,2)), 'g', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('time, yr')
ylabel('# of add\_my\_pet entries')
saveas (gca,'img/entries.png')

CM = complete_mre;
plot(CM(:,1), CM(:,2), '.g', 'MarkerSize', 20)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('COMPLETE')
ylabel('MRE')
saveas (gca,'img/COMPLET_MRE.png')

surv_COMPLETE = surv(CM(:,1),0);
plot(surv_COMPLETE(:,1), surv_COMPLETE(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('COMPLETE')
saveas (gca,'img/COMPLETE.png')

surv_MRE = surv(CM(:,2),0);
plot(surv_MRE(:,1), surv_MRE(:,2), 'r', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('Mean Relative Error')
saveas (gca,'img/MRE.png')

