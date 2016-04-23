%% mydata_shstat

% generate updated allStat if necessary
% allStat = get_allStat(C2K(20),1);
% save('allStat')

% compose your legend if you wish
% mylegend = select_legend; % replace legend_* by mylegend is you active this

close all % remove any existing figure

example = 2; % edit this number
switch example
  case 1
    % first example close to default settings
    shstat_options('default');
    shstat('g', 'g_Hb', legend_RSED); 

  case 2

    % second example with more tricks
    shstat_options('default');
    %shstat_options('x_transform', 'none');
    shstat_options('y_transform', 'none');
    shstat_options('x_label', 'on');
    shstat_options('y_label', 'on');
    [Hfig sskap entries missing] = shstat('s_s', 'kap', legend_vert, date);

    figure(Hfig) % add items to the plot
    %s_d = 4/27 - s_s;  % distance to demand end
    n = 150; sd = linspace(1e-6, 4/27 - 1e-10, n)'; ss = 4/27 - sd;
    kap_ss = zeros(n,2);
    for i = 1:n
      kap_ss(i,:) = roots3([-1; 1;  0; -ss(i)],2);
    end
    plot(log10(ss), kap_ss(:,1), 'k', ... % plot boundery for kappa-values
         log10(ss), kap_ss(:,2), 'k', 'Linewidth', 2)

end