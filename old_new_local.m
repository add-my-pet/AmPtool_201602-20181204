function [entries z pAm v kap kapR pM pT kJ EG EHb EHj EHp ha sG muE dV delM MRE COMPLETE] = old_new_local

  WD = pwd;                % store current path

  entries = select('Animalia');
  n = length(entries);

  TA   = zeros(n,2);
  z    = zeros(n,2);
  pAm  = zeros(n,2); 
  v    = zeros(n,2); 
  kap  = zeros(n,2);
  kapR = zeros(n,2);
  pM   = zeros(n,2);
  pT   = zeros(n,2);
  kJ   = zeros(n,2);
  EG   = zeros(n,2);
  EHb  = zeros(n,2);
  EHj  = zeros(n,2);
  EHp  = zeros(n,2);
  ha   = zeros(n,2);
  sG   = zeros(n,2);
  muE  = zeros(n,2);
  dV   = zeros(n,2); 
  delM = zeros(n,2); 
  MRE  = zeros(n,2); 
  COMPLETE = zeros(n,2); 

  %% entries_local values

  cd(['../entries_local/',entries{1}]) % goto entries
  
  try
    % alphabetically arranged list of all authors
    for i = 1:n
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      
      z(i,1)    = par.z;
      pAm(i,1)  = par.z * par.p_M/ par.kap;
      v(i,1)    = par.v; 
      kap(i,1)  = par.kap;
      kapR(i,1) = par.kap_R;
      pM(i,1)   = par.p_M;
      pT(i,1)   = par.p_T;
      kJ(i,1)   = par.k_J;
      EG(i,1)   = par.E_G;
      EHb(i,1)  = par.E_Hb;
      if exist('par.E_Hj','var') 
        EHj(i,1)  = par.E_Hj;
      else
        EHj(i,1)  = par.E_Hb;
      end
      if exist('par.E_Hp','var') 
        EHp(i,1)  = par.E_Hp;
      else
        EHp(i,1)  = par.E_Hb;
      end
      ha(i,1)   = par.h_a;
      sG(i,1)   = par.s_G;
      muE(i,1)  = par.mu_E;
      dV(i,1)   = par.d_V; 
      if exist('par.del_M','var') 
        delM(i,1)  = par.del_M;
      else
        delM(i,1)  = 1;
      end
      TA(i,1)   = par.T_A;
      MRE(i,1)  = metaPar.MRE; 
      COMPLETE(i,1) = metaData.COMPLETE; 
    end
    
    
  catch
    disp('Name of taxon is not recognized')
  end

  
  %% entries values
  
   
  cd(['../../entries/',entries{1}]) % goto entries

  try
    % alphabetically arranged list of all authors
    for i = 1:n
      cd (['../', entries{i}])
      load (['results_', entries{i}])
      
      z(i,2)    = par.z;
      pAm(i,2)  = par.z * par.p_M/ par.kap;
      v(i,2)    = par.v; 
      kap(i,2)  = par.kap;
      kapR(i,2) = par.kap_R;
      pM(i,2)   = par.p_M;
      pT(i,2)   = par.p_T;
      kJ(i,2)   = par.k_J;
      EG(i,2)   = par.E_G;
      EHb(i,2)  = par.E_Hb;
      if exist('par.E_Hj','var') 
        EHj(i,2)  = par.E_Hj;
      else
        EHj(i,2)  = par.E_Hb;
      end
      if exist('par.E_Hp','var') 
        EHp(i,2)  = par.E_Hp;
      else
        EHp(i,2)  = par.E_Hb;
      end
      ha(i,2)   = par.h_a;
      sG(i,2)   = par.s_G;
      muE(i,2)  = par.mu_E;
      dV(i,2)   = par.d_V; 
      if exist('par.del_M','var') 
        delM(i,2)  = par.del_M;
      else
        delM(i,2)  = 1;
      end
      TA(i,2)   = par.T_A;
      MRE(i,2)  = metaPar.MRE; 
      COMPLETE(i,2) = metaData.COMPLETE; 
    end
    
    
  catch
    disp('Name of taxon is not recognized')
  end
   
  cd(WD)                   % goto original path


  close all
   
  fig1 = figure(1);
  plot(log10(z(:,1)), log10(z(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log z, -')  
  ylabel('web _{10}log z, -')
  saveas (gca, 'z_z.png')
  h1 = datacursormode(fig1);
  h1.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(z));
  datacursormode on % mouse click on plot

  
  fig2 = figure(2);
  plot(log10(pAm(:,1)), log10(pAm(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local {_{10}log p_{Am}}, J/d.cm^2')  
  ylabel('web {_{10}log p_{Am}}, J/d.cm^2')
  saveas (gca, 'pAm_pAm.png')
  h2 = datacursormode(fig2);
  h2.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(pAm));
  datacursormode on % mouse click on plot
  
  fig3 = figure(3);
  plot(log10(v(:,1)), log10(v(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log v, cm/d')  
  ylabel('web _{10}log v, cm/d')
  saveas (gca, 'v_v.png')
  h3 = datacursormode(fig3);
  h3.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(v));
  datacursormode on % mouse click on plot

  fig4 = figure(4);
  plot(kap(:,1), kap(:,2), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local kap, -')  
  ylabel('web kap, -')
  saveas (gca, 'kap_kap.png')
  h4 = datacursormode(fig4);
  h4.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, kap);
  datacursormode on % mouse click on plot

  fig5 = figure(5);
  plot(log10(pM(:,1)), log10(pM(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log [p_M], J/d.cm^3')  
  ylabel('web _{10}log [p_M], J/d.cm^3')
  saveas (gca, 'pM_pM.png')
  h5 = datacursormode(fig5);
  h5.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(pM));
  datacursormode on % mouse click on plot

  fig6 = figure(6);
  plot(log10(kJ(:,1)), log10(kJ(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log kJ, 1/d')  
  ylabel('web _{10}log kJ, 1/d')
  saveas (gca, 'kJ_kJ.png')
  h6 = datacursormode(fig6);
  h6.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(kJ));
  datacursormode on % mouse click on plot

  fig7 = figure(7);
  plot(log10(EG(:,1)), log10(EG(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log [E_G], J/cm^3')  
  ylabel('web _{10}log [E_G], J/cm^3')
  saveas (gca, 'EG_EG.png')
  h7 = datacursormode(fig7);
  h7.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(EG));
  datacursormode on % mouse click on plot

  fig8 = figure(8);
  plot(log10(EHb(:,1)), log10(EHb(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log E_Hb, J')  
  ylabel('web _{10}log E_Hb, J')
  saveas (gca, 'EHb_EHb.png')
  h8 = datacursormode(fig8);
  h8.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(EHb));
  datacursormode on % mouse click on plot

  fig9 = figure(9);
  plot(log10(EHj(:,1)), log10(EHj(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log E_Hj, J')  
  ylabel('web _{10}log E_Hj, J')
  saveas (gca, 'EHj_EHj.png')
  h9 = datacursormode(fig9);
  h9.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(EHj));
  datacursormode on % mouse click on plot

  fig10 = figure(10);
  plot(log10(EHp(:,1)), log10(EHp(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log E_Hp, J')  
  ylabel('web _{10}log E_Hp, J')
  saveas (gca, 'EHp_EHp.png')
  h10 = datacursormode(fig10);
  h10.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(EHp));
  datacursormode on % mouse click on plot
  
  fig11 = figure(11);
  plot(log10(ha(:,1)), log10(ha(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log h_a, 1/d^2')  
  ylabel('web _{10}log h_a, 1/d^2')
  saveas (gca, 'ha_ha.png')
  h11 = datacursormode(fig11);
  h11.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(ha));
  datacursormode on % mouse click on plot

  fig12 = figure(12);
  plot(log10(sG(:,1)), log10(sG(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log s_G, -')  
  ylabel('web _{10}log s_G, -')
  saveas (gca, 'sG_sG.png')
  h12 = datacursormode(fig12);
  h12.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(sG));
  datacursormode on % mouse click on plot

  fig13 = figure(13);
  plot(log10(dV(:,1)), log10(dV(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log d_V, g/cm^3')  
  ylabel('web _{10}log d_V, g/cm^3')
  saveas (gca, 'dV_dV.png')
  h13 = datacursormode(fig13);
  h13.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(dV));
  datacursormode on % mouse click on plot

  fig14 = figure(14);
  plot(log10(TA(:,1)), log10(TA(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log TA, K')  
  ylabel('new _{10}log TA, K')
  saveas (gca, 'TA_TA.png')
  h14 = datacursormode(fig14);
  h14.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, log10(TA));
  datacursormode on % mouse click on plot

  fig15 = figure(15);
  plot(MRE(:,1), MRE(:,2), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local MRE, -')  
  ylabel('web MRE, -')
  saveas (gca, 'MRE_MRE.png')
  h15 = datacursormode(fig15);
  h15.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, MRE);
  datacursormode on % mouse click on plot

  fig16 = figure(16);
  plot(COMPLETE(:,1), COMPLETE(:,2), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local COMPLETE, -')  
  ylabel('web COMPLETE, -')
  saveas (gca, 'COMPLETE_COMPLETE.png')
  h16 = datacursormode(fig16);
  h16.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, COMPLETE);
  datacursormode on % mouse click on plot

end
