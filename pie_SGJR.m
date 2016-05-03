%% pie_SGJR
% presents pies for allocation at birth, puberty, ultimate

%%
function  pSGJR = pie_SGJR (entry, wrt)
%% created 2016/05/02 by Bas Kooijman

%% Syntax
% pSGJR = <../pie_SGJR.m *pie_SGJR*> (entry, wrt)

%% Description
% Allocation to somatic maintenance, growth, maturity maintenance and maturation/reproduction 
%   for birth, puberty and ultimate and cumulative invertment at birth are presented in 4 pies.
% Data are obtained from allStat, use load('allStat') before use and make allStat global.
%
% Input
%
% entry: string with name of entry
% wrt: optional indicator for writing files to ../entries/entry (default: 0)
%
% Output (apart from figure):
% 
% * pSGRJ: (4,3)-matrix with powers in J/d

%% Remarks
% <allPie_SGJR.html *allPie_SGJR*> writes all pies to all entries

%% Example of use
% pie_SGJR('Odontaster_validus'); 

  global allStat
  
  if ~exist('wrt','var') || isempty(wrt)
      wrt = false;
  end
  
  pSGJR = [allStat.(entry).p_Sb allStat.(entry).p_Sp allStat.(entry).p_Si;
           allStat.(entry).p_Gb allStat.(entry).p_Gp allStat.(entry).p_Gi; 
           allStat.(entry).p_Jb allStat.(entry).p_Jp allStat.(entry).p_Ji; 
           allStat.(entry).p_Rb allStat.(entry).p_Rp allStat.(entry).p_Ri];
  pSGJR = max(1e-16, pSGJR);
  
  par = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap];
  pie_color = [1 0 0; 0 1 0; 1 0 1; 0 0 1]; % colors for S, G, J. R
  
  Hfig = figure(1); % divide p_* by sum, else errors occur (probably due to small numbers)
  txt{1} = ['p_S = ', num2str(pSGJR(1,1)), ' J/d'];
  txt{2} = ['p_G = ', num2str(pSGJR(2,1)), ' J/d'];
  txt{3} = ['p_J = ', num2str(pSGJR(3,1)), ' J/d'];
  txt{4} = ['p_R = ', num2str(pSGJR(4,1)), ' J/d'];
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGJR(:,1)/sum(pSGJR(:,1),1), 'Bevel', 'Elliptical', 'Labels', txt);
  colormap(pie_color);
  title('allocation at birth');
  if wrt
    saveas(Hfig, ['../entries/',entry, '/pie_pSGJRb.png']);
  end

  Hfig = figure(2);
  txt{1} = ['p_S = ', num2str(pSGJR(1,2)), ' J/d'];
  txt{2} = ['p_G = ', num2str(pSGJR(2,2)), ' J/d'];
  txt{3} = ['p_J = ', num2str(pSGJR(3,2)), ' J/d'];
  txt{4} = ['p_R = ', num2str(pSGJR(4,2)), ' J/d'];
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGJR(:,2)/sum(pSGJR(:,2),1), 'Bevel', 'Elliptical', 'Labels', txt);
  colormap(pie_color);
  title('allocation at puberty');
  if wrt
    saveas(Hfig, ['../entries/',entry, '/pie_pSGJRp.png']);
  end
  
  Hfig = figure(3);
  txt{1} = ['p_S = ', num2str(pSGJR(1,3)), ' J/d'];
  txt{2} = '';
  txt{3} = ['p_J = ', num2str(pSGJR(3,3)), ' J/d'];
  txt{4} = ['p_R = ', num2str(pSGJR(4,3)), ' J/d'];
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGJR(:,3)/sum(pSGJR(:,3),1), 'Bevel', 'Elliptical', 'Labels', txt);
  colormap(pie_color);
  title('allocation at ultimate');
  if wrt
    saveas(Hfig, ['../entries/',entry, '/pie_pSGJRi.png'])
  end
  
  % cumulative investment at birth
  par_pie = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap, allStat.(entry).kap_G];
  if strcmp(allStat.(entry).model, 'stf') || strcmp(allStat.(entry).model, 'stx')
    Hfig = birth_pie_foetus(par_pie);
  else
    Hfig = birth_pie(par_pie);
  end
  if wrt
    saveas(Hfig, ['../entries/',entry, '/pie_ESGJRb.png'])
  end
  
end

