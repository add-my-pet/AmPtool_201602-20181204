%% shstat
% plots statistics and/or parameters

function [fig xy entries missing] = shstat(x, y, legend, label_title)
%% created 2016/04/23 by Bas Kooijman

%% Syntax
% [xy entries missing] =  <../shstat.m *shstat*>(x, y, legend, options, title)

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
  
  % compose selection matrix
  m = size(legend,1); % number of taxa to be plotted
  [sel entries] = select_01('Animalia', legend{1,2});
  n = length(sel);    % numer of taxa in Animalia
  for i = 2:m
    sel = [sel, select_01('Animalia', legend{i,2})];
  end
  sel = once(sel);   % remove double selections
  Sel = sum(sel,2) == 1;  % total selection
  
  missing = [];      % initiate missing entries
  units_x = []; units_y = []; label_x = []; label_y = [];
  xy = zeros(n,2);   % initiate (x,y)-pairs
  load('allStat')    % get all parameters and statistics
  
  for i = 1:n        % get (x,y)-values
    if isfield(allStat.(entries{i}), x)
      xy(i,1) = allStat.(entries{i}).(x);
      units_x = allStat.(entries{i}).units.(x);
      label_x = allStat.(entries{i}).label.(x);
    else
      xy(i,1) = NaN; 
      if Sel == 1
        missing = [missing; entries(i)];
      end
    end
    if isfield(allStat.(entries{i}), y)
      xy(i,2) = allStat.(entries{i}).(y);
      units_y = allStat.(entries{i}).units.(y);
      label_y = allStat.(entries{i}).label.(y);
    else
      xy(i,2) = NaN; 
      if Sel == 1
        missing = [missing; entries(i)];
      end
    end        
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

  n_missing = length(missing);
  if n_missing >0
    fprintf(['warning from shstat: ', num2str(n_missing), ' entries are missing in the plot\n']);
  end
end

