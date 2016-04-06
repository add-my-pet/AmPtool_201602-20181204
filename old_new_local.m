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
   
  figure
  plot(log10(z(:,1)), log10(z(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log z, -')  
  ylabel('new _{10}log z, -')
  saveas (gca, 'z_z.png')
  
  figure
  plot(log10(pAm(:,1)), log10(pAm(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local {_{10}log p_{Am}}, J/d.cm^2')  
  ylabel('new {_{10}log p_{Am}}, J/d.cm^2')
  saveas (gca, 'pAm_pAm.png')
  
  figure
  plot(log10(v(:,1)), log10(v(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log v, cm/d')  
  ylabel('new _{10}log v, cm/d')
  saveas (gca, 'v_v.png')

  figure
  plot(kap(:,1), kap(:,2), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local kap, -')  
  ylabel('new kap, -')
  saveas (gca, 'kap_kap.png')

  figure
  plot(log10(pM(:,1)), log10(pM(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log [p_M], J/d.cm^3')  
  ylabel('new _{10}log [p_M], J/d.cm^3')
  saveas (gca, 'pM_pM.png')

  figure
  plot(log10(kJ(:,1)), log10(kJ(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log kJ, 1/d')  
  ylabel('new _{10}log kJ, 1/d')
  saveas (gca, 'kJ_kJ.png')

  figure
  plot(log10(EG(:,1)), log10(EG(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log [E_G], J/cm^3')  
  ylabel('new _{10}log [E_G], J/cm^3')
  saveas (gca, 'EG_EG.png')

  figure
  plot(log10(EHb(:,1)), log10(EHb(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log E_Hb, J')  
  ylabel('new _{10}log E_Hb, J')
  saveas (gca, 'EHb_EHb.png')

  figure
  plot(log10(EHj(:,1)), log10(EHj(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log E_Hj, J')  
  ylabel('new _{10}log E_Hj, J')
  saveas (gca, 'EHj_EHj.png')

  figure
  plot(log10(EHp(:,1)), log10(EHp(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log E_Hp, J')  
  ylabel('new _{10}log E_Hp, J')
  saveas (gca, 'EHp_EHp.png')
  
  figure
  plot(log10(ha(:,1)), log10(ha(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log h_a, 1/d^2')  
  ylabel('new _{10}log h_a, 1/d^2')
  saveas (gca, 'ha_ha.png')

  figure
  plot(log10(sG(:,1)), log10(sG(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log s_G, -')  
  ylabel('new _{10}log s_G, -')
  saveas (gca, 'sG_sG.png')

  figure
  plot(log10(dV(:,1)), log10(dV(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log d_V, g/cm^3')  
  ylabel('new _{10}log d_V, g/cm^3')
  saveas (gca, 'dV_dV.png')

  figure
  plot(log10(TA(:,1)), log10(TA(:,2)), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local _{10}log TA, K')  
  ylabel('new _{10}log TA, K')
  saveas (gca, 'TA_TA.png')

  figure
  plot(MRE(:,1), MRE(:,2), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local MRE, -')  
  ylabel('new MRE, -')
  saveas (gca, 'MRE_MRE.png')

  figure
  plot(COMPLETE(:,1), COMPLETE(:,2), '.b', 'MarkerSize', 20)
  set(gca, 'FontSize', 15, 'Box', 'on')
  xlabel('local COMPLETE, -')  
  ylabel('new COMPLETE, -')
  saveas (gca, 'COMPLETE_COMPLETE.png')
