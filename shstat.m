%% shstat
% plots statistics and/or parameters

function [fig xy entries missing] = shstat(x, y, legend, label_title)
%% created 2016/04/23 by Bas Kooijman

%% Syntax
% [fig xy entries missing] =  <../shstat.m *shstat*>(x, y, legend, options, title)

%% Description
% plots statistics and/or parameters using allStat.mat as source (which must exist). 
%
% Input:
%
% * x: string with name of independent variable
% * y: string with name of dependent variable
% * legend: (m,2)-array with legend (marker, taxa pairs)
% * label_title: optional string for title of figure
%
% Output
%
% * fig
% * xy: (n,2)-matrix with (x,y)-values
% * entries: n-cell string with names of entries
% * missing: cell string with names of entries that should have been plotted, but are missing 

%% Remarks
% Be aware that the sequence of taxa in legend matters.
% Make sure that allStat has been generated at the correct temperature; all parameters are at T_ref.
% Make sure that allStat is consistent with select('Animalia').
% Set options with shstat_options (such as logarithmic transformation).

%% Example of use
% see <mydata_shstat.m *mydata_shstat*>

  global x_transform y_transform x_label y_label

  % get (x,y)-values, units, label
  [xy entries units label] = read_allStat(x,y);
  units_x = units{1}; units_y = units{2}; label_x = label{1}; label_y = label{2};

  % compose selection matrix, missing
  m = size(legend,1); % number of taxa to be plotted
  [sel entries_sel] = select_01('Animalia', legend{1,2});
  if ~isequaln(entries, entries_sel)
    fprintf('Error in shstat: entries in allStat do not correspond with entries in select(''Animalia'')\n')
    fig = []; missing = []; return
  end
  n = length(sel);    % numer of taxa in Animalia 
  for i = 2:m
    sel = [sel, select_01('Animalia', legend{i,2})];
  end
  sel = once(sel);   % remove double selections  
  missing = entries(isnan(sum(xy(sum(sel,2) == 1,:),2))); % determine missing entries
  n_missing = length(missing);
  if ~(n_missing == 0)
    fprintf(['Warning in shstat: ', num2str(n_missing), ' entries are missing in the figure\n'])
  end
  
  % transformation, xlabel, ylabel
  xy_plot = xy; % copy (x,y) value to values to be plotted
  symbol_x = x; symbol_y = y; % initiate text for symbols
  [nm1 nm2] = strtok(x,'_');
  if ~isempty(nm2)
    symbol_x = [nm1, '_{', nm2(2:end), '}'];
  end
  [nm1 nm2] = strtok(y,'_');
  if ~isempty(nm2)
    symbol_y = [nm1, '_{', nm2(2:end), '}'];
  end  
  if strcmp (x_transform, 'log10')
    xy_plot(:,1) = log10(xy_plot(:,1));
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
  if strcmp (y_transform, 'log10')
    xy_plot(:,2) = log10(xy_plot(:,2));
    if strcmp(y_label, 'on')
      label_y = [label_y, ', _{10}log ', symbol_y, ', ', units_y];
    else
      label_y = ['_{10}log ', symbol_y, ', ', units_y];
    end
  else
    if strcmp(y_label, 'on')
      label_y = [label_y, ', ', symbol_y, ', ', units_y];
    else
      label_y = [symbol_y, ', ', units_y];
    end
  end
  
  fig = figure(1); 
  hold on
  for i = 1:m % scan taxa
    marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
    plot(xy_plot(sel(:,i),1), xy_plot(sel(:,i),2), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
  end
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel(label_x)  
  ylabel(label_y)
  if exist('label_title', 'var')
    title(label_title)
  end
      
  %saveas (gca, [x, '_', 'y.png'])
  h = datacursormode(fig);
  h.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, xy_plot);
  datacursormode on % mouse click on plot
  
  shlegend(legend);

end

