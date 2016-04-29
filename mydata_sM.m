%% mydata_sM: explanation for deviations of ep_min values from max ep_min

    kapsse = read_allStat('kap','s_s','s_M','ep_min'); 
    kap = kapsse(:,1); s_s = kapsse(:,2); s_M = kapsse(:,3); ep_min = kapsse(:,4);
    ep_minmax = (s_s ./ (kap.^2 .* (1 - kap))) .^(1/3); del_ep = ep_minmax ./ ep_min;
    
    pars_lj = read_allStat('g', 'k', 'l_T', 'v_Hb', 'v_Hj', 'v_Hp');
    model = read_allStat('model');
    ne = length(s_M); s_Mep = ones(ne,1);
    for i = 1:ne
      if s_M(i) > 1
        if strcmp(model(i), 'hex')
          s_Mep(i) = NaN;
        else
          [lj, lp, lb] = get_lj(pars_lj(i,:), 1e-5+ ep_min(i)); s_Mep(i)= lj/ lb;
        end
      end
    end
    del_sM = s_Mep ./ s_M ; 
    
    Hfig = figure;
    plot(del_ep, del_sM, '.k');
    xlabel('max e_p^{min}/ e_p^{min}')      
    ylabel('s_M at f=e_p^{min}/ s_M at f=1')
    h = datacursormode(Hfig);
    h.UpdateFcn = @(obj, event_obj)xylabels(obj, event_obj, entries, val_plot);
    datacursormode on % mouse click on plot
