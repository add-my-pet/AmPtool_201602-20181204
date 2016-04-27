%% shstat
% plots statistics and/or parameters

function [Hfig val entries missing] = shstat(vars, legend, title, Hfig)
%% created 2016/04/23 by Bas Kooijman

%% Syntax
% [Hfig val entries missing] =  <../shstat.m *shstat*>(vars, legend, title, Hfig)

%% Description
% plots statistics and/or parameters using allStat.mat as source (which must exist). 
%
% Input:
%
% * vars: cell string with name(s) of 1, 2 or 3 independent variables 
% * legend: (m,2)-array with legend (marker, taxa)-pairs
% * title: optional string for title of figure
% * Hfig: optional figure handle (to get the plot in a specified figure)
%
% Output
%
% * Hfig: figure handle (equal to input, if specified there)
% * val: (n,1 or 2 or 3)-matrix with x or (x,y) of (x,y,z)-values (depending on the spefication of vars)
% * entries: n-cell string with names of entries
% * missing: cell string with names of entries that should have been plotted, but are missing (because of lack of data in allStat.mat) 

%% Remarks
% Legend can be set/modified with select_legend. Be aware that the sequence of taxa in legend matters. 
% shstat composes a selection-of-entries matrix with first-to-last colum corresponding to taxa in first-to-last row of legend. 
% In the case that a taxon is included in another one, double plotting is suppressed from first-to-last column of selection matrix, and plotting is done for last-to-first column.
% So, if Aves and Animalia are in legend in this sequence, Animalia-markers are not plotted for Aves, and Aves-markers are on top of Animalia-markers in case of crowding.
% If Animalia is in legend before Aves, no Aves-markers are shown.
%
% Make sure that allStat has been generated at the correct temperature (for times and rates); all parameters are at T_ref.
% Make sure that allStat is consistent with select('Animalia'); can be done via write_allStat.
%
% Set options with shstat_options (such as logarithmic transformation of axes).
% Symbols and units are always plotted on the axes, but descriptions only if x_label, and/or y_label and/or z_label is 'on'.
% In case of 1 variable: ylabel 'survivor function' is plotted if y_label = 'on'; input legend is not used.
% In case of 2 variables: xy-labels are linked to markers (click on them to see entry-names).
% In case of 3 variables: hit rotation in the toolbar of the figure.

%% Example of use
% see <mydata_shstat.m *mydata_shstat*>

  global x_transform y_transform z_transform  x_label y_label z_label

  % get (x,y,z)-values, units, label
  n = length(vars);
  switch n
    case 1
      [val entries units label] = read_allStat(vars{1});
      units_x = units{1}; label_x = label{1}; 
    case 2
      [val entries units label] = read_allStat(vars{1},vars{2});
      units_x = units{1}; units_y = units{2}; label_x = label{1}; label_y = label{2};
    case 3
      [val entries units label] = read_allStat(vars{1},vars{2},vars{3});
      units_x = units{1}; units_y = units{2}; units_z = units{3}; label_x = label{1}; label_y = label{2}; label_z = label{3};
  end

  % compose selection matrix, missing entries
  if n == 1
    missing = entries(isnan(val)); % determine missing entries
  else
    m = size(legend,1); % number of taxa to be plotted
    [sel entries_sel] = select_01('Animalia', legend{1,2});
    if ~isequaln(entries, entries_sel)
      fprintf('Error in shstat: entries in allStat do not correspond with entries in select(''Animalia'')\n')
      fig = []; missing = []; return
    end
    for i = 2:m
      sel = [sel, select_01('Animalia', legend{i,2})];
    end
    sel = once(sel);    % remove double selections  
    missing = entries(isnan(sum(val(sum(sel,2) == 1,:),2))); % determine missing entries
  end
  n_missing = length(missing);
  if ~(n_missing == 0)
    fprintf(['Warning from shstat: ', num2str(n_missing), ' entries are missing in the figure\n'])
  end

  % edit symbol as text on axis
  symbol_x = vars{1};  % initiate text for symbols
  [nm1 nm2] = strtok(symbol_x,'_');
  if ~isempty(nm2)
    symbol_x = [nm1, '_{', nm2(2:end), '}'];
  end
  if n > 1
    symbol_y = vars{2};
    [nm1 nm2] = strtok(symbol_y,'_');
    if ~isempty(nm2)
      symbol_y = [nm1, '_{', nm2(2:end), '}'];
    end  
  end
  if n > 2
    symbol_z = vars{3};
    [nm1 nm2] = strtok(symbol_z,'_');
    if ~isempty(nm2)
      symbol_z = [nm1, '_{', nm2(2:end), '}'];
    end  
  end
  
  % transformation, xlabel, ylabel, zlabel
  val_plot = val; % copy (x,y,z)-values to values to be plotted
  if strcmp (x_transform, 'log10')
    val_plot(:,1) = log10(val_plot(:,1));
    if strcmp(x_label, 'on')
      label_x = [label_x, ', _{10}log ', symbol_x, ', ', units_x];
    else
      label_x = ['_{10}log ', symbol_x, ', ', units_x];
    end
  else
    if strcmp(x_label, 'on')
      label_x = [label_x, ', ', symbol_x, ', ', units_x];
    else
      label_x = [symbol_x, ', ', units_x];
    end
  end
  if n > 1 && strcmp (y_transform, 'log10')
    val_plot(:,2) = log10(val_plot(:,2));
    if strcmp(y_label, 'on')
      label_y = [label_y, ', _{10}log ', symbol_y, ', ', units_y];
    else
      label_y = ['_{10}log ', symbol_y, ', ', units_y];
    end
  elseif n > 1
    if strcmp(y_label, 'on')
      label_y = [label_y, ', ', symbol_y, ', ', units_y];
    else
      label_y = [symbol_y, ', ', units_y];
    end
  end
  if n > 2 && strcmp (z_transform, 'log10')
    val_plot(:,3) = log10(val_plot(:,3));
    if strcmp(z_label, 'on')
      label_z = [label_z, ', _{10}log ', symbol_z, ', ', units_z];
    else
      label_z = ['_{10}log ', symbol_z, ', ', units_z];
    end
  elseif n > 2
    if strcmp(z_label, 'on')
      label_z = [label_z, ', ', symbol_z, ', ', units_z];
    else
      label_z = [symbol_z, ', ', units_z];
    end
  end
  
  % actual plotting
  if exist('Hfig', 'var')
    Hfig = figure(Hfig); 
  else
    Hfig = figure;
  end
  
  hold on
  switch n
    case 1
      x_median = median(val_plot); x_min = min(val_plot);
      surv_x = surv(val_plot); 
      plot([x_min; x_median; x_median], [0.5;0.5;0], 'r', surv_x(:,1), surv_x(:,2), 'b', 'Linewidth', 2)
      set(gca, 'FontSize', 15, 'Box', 'on')
      xlabel(label_x)
      if strcmp(y_label, 'on')
        ylabel('survivor function')
      end
      if exist('label_title', 'var')
        title(label_title)
      end
      
      %saveas (gca, [vars{1}, '.png'])

    case 2
      for j = 1:m      % scan taxa
        i = m - j + 1; % reverse sequence of plotting in case markers overlap
        marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
        plot(val_plot(sel(:,i),1), val_plot(sel(:,i),2), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
      end
      set(gca, 'FontSize', 15, 'Box', 'on')
      xlabel(label_x)  
      ylabel(label_y)
      if exist('label_title', 'var')
        title(label_title)
      end
      
      %saveas (gca, [vars{1}, '_', vars{2}, '.png'])
      h = datacursormode(Hfig);
      h.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, val_plot);
      datacursormode on % mouse click on plot
    
      shlegend(legend);
      
    case 3
      for j = 1:m      % scan taxa
        i = m - j + 1; % reverse sequence of plotting in case markers overlap
        marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
        plot3(val_plot(sel(:,i),1), val_plot(sel(:,i),2), val_plot(sel(:,i),3), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
      end
      set(gca, 'FontSize', 15, 'Box', 'on')
      xlabel(label_x)  
      ylabel(label_y)
      zlabel(label_z)
      if exist('label_title', 'var')
        title(label_title)
      end
      
      %saveas (gca, [vars{1}, '_', vars{2}, '_', vars{3}, '.png'])
      shlegend(legend);

  end
end

