%% pie_pSGJR
% presents pies for allocation at birth, puberty, ultimate

%%
function  pSGJR = pie_pSGJR (entry)
%% created 2016/05/02 by Bas Kooijman

%% Syntax
% pSGJR = <../pie_PMGJR.m *pie_PMJGR*> 

%% Description
% Allocation to somatic maintenance, growth, maturity maintenance and maturation/reproduction 
%   are presented in a three pies for birth, puberty and ultimate
%
% Output (apart from figure):
% 
% * pSGRJ: (4,3)-matrix with powers in J/d

%% Remarks
% 
%% Example of use
% pie_pSGJR('Odontaster_validus');

  close all
  
  load('allStat')
  pSGJR = [allStat.(entry).p_Sb allStat.(entry).p_Sp allStat.(entry).p_Si;
           allStat.(entry).p_Gb allStat.(entry).p_Gp allStat.(entry).p_Gi; 
           allStat.(entry).p_Jb allStat.(entry).p_Jp allStat.(entry).p_Ji; 
           allStat.(entry).p_Rb allStat.(entry).p_Rp allStat.(entry).p_Ri];
  pSGJR = max(1e-16, pSGJR);
  
  par = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap];
  
  figure(1)
  txt{1} = ['p_S = ', num2str(pSGJR(1,1)), ' J/d'];
  txt{2} = ['p_G = ', num2str(pSGJR(2,1)), ' J/d'];
  txt{3} = ['p_J = ', num2str(pSGJR(3,1)), ' J/d'];
  txt{4} = ['p_R = ', num2str(pSGJR(4,1)), ' J/d'];
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGJR(:,1)/sum(pSGJR(:,1),1), 'Bevel', 'Elliptical', 'Labels', txt);
  title('allocation at birth');

  figure(2)
  txt{1} = ['p_S = ', num2str(pSGJR(1,2)), ' J/d'];
  txt{2} = ['p_G = ', num2str(pSGJR(2,2)), ' J/d'];
  txt{3} = ['p_J = ', num2str(pSGJR(3,2)), ' J/d'];
  txt{4} = ['p_R = ', num2str(pSGJR(4,2)), ' J/d'];
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGJR(:,2)/sum(pSGJR(:,2),1), 'Bevel', 'Elliptical', 'Labels', txt);
  title('allocation at puberty');

  figure(3)
  txt{1} = ['p_S = ', num2str(pSGJR(1,3)), ' J/d'];
  txt{2} = '';
  txt{3} = ['p_J = ', num2str(pSGJR(3,3)), ' J/d'];
  txt{4} = ['p_R = ', num2str(pSGJR(4,3)), ' J/d'];
  set(gca, 'FontSize', 15, 'Box', 'on')
  pie3s(pSGJR(:,3)/sum(pSGJR(:,3),1), 'Bevel', 'Elliptical', 'Labels', txt);
  title('allocation at ultimate');

  % cumulative investment
  par_pie = [allStat.(entry).g, allStat.(entry).k, allStat.(entry).v_Hb, allStat.(entry).kap, allStat.(entry).kap_G];
  if strcmp(allStat.(entry).model, 'stf') || strcmp(allStat.(entry).model, 'stx')
    birth_pie_foetus(par_pie);
  else
    birth_pie(par_pie);
  end
end

