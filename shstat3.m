%% shstat3
% plots statistics and/or parameters

function [fig xyz entries missing] = shstat3(x, y, z, legend, label_title)
%% created 2016/04/25 by Bas Kooijman

%% Syntax
% [fig xyz entries missing] =  <../shstat3.m *shstat3*>(x, y, z, legend, options, title)

%% Description
% plots statistics and/or parameters using allStat.mat as source (which must exist). 
%
% Input:
%
% * x: string with name of independent variable
% * y: string with name of first dependent variable
% * z: string with name of second dependent variable
% * legend: (m,2)-array with legend (marker, taxa pairs)
% * label_title: optional string for title of figure
%
% Output
%
% * fig
% * xyz: (n,3)-matrix with (x,y,z)-values
% * entries: n-cell string with names of entries
% * missing: cell string with names of entries that should have been plotted, but are missing 

%% Remarks
% Be aware that the sequence of taxa in legend matters.
% Make sure that allStat has been generated at the correct temperature; all parameters are at T_ref.
% Make sure that allStat is consistent with select('Animalia').
% Set options with shstat_options (such as logarithmic transformation).

%% Example of use
% see <mydata_shstat.m *mydata_shstat*>

  global x_transform y_transform z_transform x_label y_label z_label

  % get (x,y)-values, units, label
  [xyz entries units label] = read_allStat(x,y,z);
  units_x = units{1}; units_y = units{2}; units_z = units{3}; label_x = label{1}; label_y = label{2}; label_z = label{3};

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
  missing = entries(isnan(sum(xyz(sum(sel,2) == 1,:),2))); % determine missing entries
  n_missing = length(missing);
  if ~(n_missing == 0)
    fprintf(['Warning in shstat: ', num2str(n_missing), ' entries are missing in the figure\n'])
  end
  
  % transformation, xlabel, ylabel
  xyz_plot = xyz; % copy (x,y) value to values to be plotted
  symbol_x = x; symbol_y = y; symbol_z = z;  % initiate text for symbols
  [nm1 nm2] = strtok(x,'_');
  if ~isempty(nm2)
    symbol_x = [nm1, '_{', nm2(2:end), '}'];
  end
  [nm1 nm2] = strtok(y,'_');
  if ~isempty(nm2)
    symbol_y = [nm1, '_{', nm2(2:end), '}'];
  end  
  [nm1 nm2] = strtok(z,'_');
  if ~isempty(nm2)
    symbol_z = [nm1, '_{', nm2(2:end), '}'];
  end  
  if strcmp (x_transform, 'log10')
    xyz_plot(:,1) = log10(xyz_plot(:,1));
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
    xyz_plot(:,2) = log10(xyz_plot(:,2));
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
  if strcmp (z_transform, 'log10')
    xyz_plot(:,3) = log10(xyz_plot(:,3));
    if strcmp(z_label, 'on')
      label_z = [label_z, ', _{10}log ', symbol_z, ', ', units_z];
    else
      label_z = ['_{10}log ', symbol_z, ', ', units_z];
    end
  else
    if strcmp(z_label, 'on')
      label_z = [label_z, ', ', symbol_z, ', ', units_z];
    else
      label_z = [symbol_z, ', ', units_z];
    end
  end
  
  fig = figure(1); 
  hold on
  for i = 1:m % scan taxa
    marker = legend{i,1}; T = marker{1}; MS = marker{2}; LW = marker{3}; MEC = marker{4}; MFC = marker{5};  
    plot3(xyz_plot(sel(:,i),1), xyz_plot(sel(:,i),2), xyz_plot(sel(:,i),3), T, 'MarkerSize', MS, 'LineWidth', LW, 'MarkerFaceColor', MFC, 'MarkerEdgeColor', MEC)
  end
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel(label_x)  
  ylabel(label_y)
  zlabel(label_z)
  if exist('label_title', 'var')
    title(label_title)
  end
      
  %saveas (gca, [x, '_', y, '_', z, '.png'])
  
  shlegend(legend);

end

