%% mydata_shstat: demo script for using plotting tool shstat
% see shprimpar for more examples of 1D plotting

% generate updated allStat if necessary
% write_allStat(C2K(20),1); % notice that default allStat is at T=T_typical and f=1

% compose/modify your legend if you wish. You can also do this on-the-fly by selecting an empty legend.
% mylegend = select_legend; % replace legend_* by mylegend in the examples below, if you active this.
% If your desired legend is close to an existing one, e.g. legend_fish, you can modify it by: mylegend = select_legend(legend_fish)

close all % remove any existing figure

example = 5; % edit this number
switch example
  case 1 % 2D: use default settings
    shstat_options('default');
    shstat({'g', 'g_Hb'}, legend_RSED); 

  case 2 % 2D: more tricks: no transformation (default is log10), description enabled
    shstat_options('default');
    shstat_options('x_transform', 'none');
    shstat_options('y_transform', 'none');
    shstat_options('x_label', 'on');
    shstat_options('y_label', 'on');
    Hfig = shstat({'s_s', 'kap'}, legend_vert, date); % output handle for adding items, set title

    figure(Hfig) % add items to figure
    kap = linspace(0, 1, 100); ss = kap.^2 .* (1 - kap); 
    plot(ss, kap, 'k', 'Linewidth', 2)

  case 3 % 2D: like 2, but with logarithmic transformation on independent variable only
    shstat_options('default');
    shstat_options('y_transform', 'none');
    shstat_options('x_label', 'on');
    shstat_options('y_label', 'on');
    Hfig = shstat({'s_s', 'kap'}, legend_hexa, date); % output handle for adding items, set title

    figure(Hfig) % add items to figure
    kap = linspace(1e-6,1,100); ss = kap.^2 .* (1 - kap); 
    plot(log10(ss), kap, 'k', 'Linewidth', 2)

  case 4 % 3D: hit rotation-tool in the toolbar of the figure    
    shstat_options('default');
    shstat_options('x_transform', 'none');
    shstat_options('y_transform', 'none');
    shstat_options('z_transform', 'none');
    Hfig = shstat({'kap', 'ep_min', 's_s'}, legend_vert); % output handle for adding items

    figure(Hfig) % add items to figure
    kap = linspace(0, 1, 15)'; f = kap'; ss = kap.^2 .* (1 - kap) * f.^3; % set x,y,z values
    mesh(kap, f, ss'); % add surface to figure
    % define colormap for mesh: k->b->m->r->white
    Colmap = [0 0 0; 0 0 .5; 0 0 1; .5 0 1; 1 0 1; 1 0 .5; 1 0 0; 1 .25 .25; 1 .5 .5; 1 .75 .75];
    colormap(Hfig, Colmap) % set color map to add_my_pet colors 
    axis square

  case 5 % 2D: numerical mode because of computations: setting of xlabel and ylabel required
    shstat_options('default');
    shstat_options('x_transform', 'none');
    shstat_options('y_transform', 'none');
    essk = read_allStat('ep_min', 's_s', 's_M', 'kap'); ep_min = essk(:,1); s_s = essk(:,2); s_M = essk(:,3);  kap = essk(:,4);
    Hfig = shstat([ep_min, (s_s ./ (kap.^2 .* (1 - kap))) .^(1/3)], legend_vert); % output handle for setting labels

    figure(Hfig) % add labels to figure, because this is not done by shstat in numerical mode
    xlabel('e_p^{min}, -')      
    ylabel('max e_p^{min}, -')
   
  case 6 % 1D: single variable with default colors
    shstat_options('default');
    shstat_options('x_transform', 'none');
    shstat_options('y_label', 'on');
    shstat({'kap'});      

  case 7 % 1D: numerical mode because of computations: setting of xlabel required
    vsM = read_allStat('v', 's_M'); sM = vsM(:,2); vj = prod(vsM,2); v = vj(sM == 1); vj = vj(sM > 1);
    shstat_options('default');
    shstat_options('y_label', 'on');
    Hfig = shstat(vj, {'r', 'r'}); % output handle for adding items to same figure and set colors
    shstat(v, {'b', 'b'}, 'post-metam v at T_{ref} and f=1, without and with acceleration', Hfig);
    % setting of figure handle not required, because legend is not shown in new figure, and first figure is still active
    xlabel('_{10} log v, cm/d') 
    
end