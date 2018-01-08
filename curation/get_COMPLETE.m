%% get_COMPLETE
% gets value fro COMPLETE, given data types

%%
function COMPLETE = get_COMPLETE(data, n)
% created 2018/01/05 by Bas Kooijman

%% Syntax
% COMPLETE = <../get_COMPLETE.m *get_COMPLETE*>(data, n)

%% Description
% Sets value for COMPLETE. The general criteria for the std model are
%
% * 0 maximum length and body weight; length as function of weight
% * 1 age, length and weight at birth and puberty for one food level
% * 2 growth (curve) at one food level: length and weight as function of age at constant (or abundant) food level
% * 3 reproduction and feeding as function of age, length and/or weight at one food level
% * 4 growth (curve) at several (> 1) food levels; age, length and weight at birth and puberty at several food levels
% * 5 reproduction and feeding as function of age, length and/or weight at several (> 1) food levels
% * 6 respiration as function of length or weight and life span at several (> 1) food levels
% * 7 elemental composition at one food level, survival due to ageing as function of age
% * 8 elemental composition at several (> 1) food levels, including composition of food
% * 9 elemental balances for C, H, O and N at several body sizes and several food levels
% * 10 energy balance at several body sizes and several food levels (including heat)
%
% Other models have more demands on data, so lower completeness levels, and guesses for data might reduce the level also.
%
% Input:
%
% * data: cell string with names of zero- and uni-variate data labels
% * n: optional value to correct for guesses of model type (default 0)
%
% Output:
% 
% * COMPLETE: scalar for COMPLETE

%% Example of use
% get_COMPLETE('std', sort({'ab', 'am', 'Wwi'}))

if ~exist('n','var')
  n = 0;
end

if STRCMP({'Li'; 'Wdi'; 'L-Wd'; 'L-WC'; 'L-WN'; 'Wd-JO'; 'Wd-JN'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'am'; 'Li'; 't-L'; 't-N'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'ap'; 'am'; 'Li'; 't-Wd'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 1.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'ab'; 'ap_T'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ap'; 'am'; 'Li'; 'Wwi'; 'GSI'; 't-M_N'; 't-M_DNA'; 't-M_RNA'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 't-L_T'; 'L-Ww'; 'L-JO'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'L_t'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'dLp'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ni'; 'GSI'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'am'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'ax'; 'am'; 'Wwb'; 'Wwx'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 'dLb'; 'Ww_L'; 't-L'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdp'; 'Wdi'; 'R_L'; 't-L'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L'; 'L-Wd'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L'; 'T-ab'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_f'; 'ap_f'; 'am_f'; 'Lb_f'; 'Lp_f'; 'Li_f'; 'Vb_f'; 'Vp_f'; 'Vi_f'; 'Ri_f'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 'JX_L'; 't-L'; 't-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Wdb'; 'Wwp'; 'Wwi'; 'Ni'; 't-Ww'; 'T-t'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_T'; 'as'; 'ap'; 'am'; 'Lb'; 'Wdb'; 'Wds'; 'Wwp'; 'Wwi'; 'Ni'; 't-L'; 't-Ww'; 't-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Wwb'; 'Wwi'; 'Ni'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_T'; 'as'; 'ap'; 'am'; 'Wwb'; 'Wws'; 'Wwp'; 'Wwi'; 'Ni'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_T'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ni'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ni'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li';'Wwb'; 'Wwp'; 'Wwi'; 'Ni'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ni'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Wwb'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wdi'; 'Ri'; 't-L'; 't-Ww'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lp';  'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp';  'Li'; 'Wwb'; 'GSI'; 'pAi'; 't-L'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp';  'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp';  'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp';  'Li'; 'Wdb'; 'Wdj'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'; 'L-Wd'; 't-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdj'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wd_L'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 'L-Wd'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ax'; 'aR'; 'am'; 'Wwb'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li';  'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Vb'; 'Vp'; 'Vi'; 'Ri'; 't-A'; 't-V'; 't-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ni'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'L_t'; 'Ni'; 'Wwb'; 'Wwi'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Wwi'; 't-L'; 'L-Ww'; 'T-JO'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wd_L'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ax'; 'ap'; 'am'; 'L0'; 'Lx'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdp'; 'Wdi'; 'rB'; 'Ri'}, data)
   COMPLETE = 2.5;   
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ww_L'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wdp'; 'WdR_Wd'; 't-L'; 't-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Wd'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdj'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'as'; 'ap'; 'am'; 'Lb'; 'Ls'; 'Lp'; 'Li'; 'Wwb'; 'Wws'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Ww_L'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Wwb'; 'Wwp'; 'Ni'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L'; 'T-ab'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'T-ab'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L_T'; 'T-ab'; 'L-Wd'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ww_L'; 'Ri'; 't-L_f'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_fT'; 'L-Ww'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_T'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L'; 'L-N'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'; 'L-Ww'; 't-Wd'; 't-WdR'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L'; 'T-ab'; 'X-Lp'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'aj'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdj'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'; 'T-ab'; 'T-aj'; 'T-ap'; 'T-am'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdj'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'; 'T-ab'; 'T-aj'; 'T-ap'; 'T-am'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'L-Wd'; 'T-ab'; 'T-aj'; 'T-ap'; 'T-am'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdj'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'; 'T-ab'; 'T-aj'; 'T-ap'; 'T-am'}, data)
   COMPLETE = 2.6;%
elseif STRCMP({'ah'; 'aj'; 'ap'; 'am'; 'Lh'; 'Lj'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 'JOi'; 't-L'; 'X-aj'; 'X-ap'; 'X-Ri'; 'T-ah'; 'T-aj'; 'T-ap'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'L-Wd'; 'L-JO_T'; 'T-JO'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'Wdi'; 't-L_T'; 't-N_T'; 't-S_T'; 'T-ap'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab_f'; 'ap_f'; 'am_f'; 'Lb'; 'Lp_f'; 'Li_f'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ni_f'; 't-L_f'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdi'; 'Ni'; 'T-ab'; 'T-ap'; 't-N_T'; 't-L_T'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab_T'; 'ap'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Ri'; 't-L_T'; 't-N_T'; 't-S_T'; 'T-ab'; 'T-ap'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wd0'; 'pXm_Wd'; 't-L_f'; 't-Wd'; 'L-Wd'; 'L-N'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-JX'; 'T-ab'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Ww0'; 'Wdp'; 'Ri'; 't-L_f'; 'L-Wd'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'WdR_L'; 't-L_f'; 'L-Wd_f'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'am'; 'WC0'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww_T'; 'T-ab'; 'T-ap'; 'T-JX'; 'T-JC'; 'T-R'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'; 'Wd-JO_T'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ap'; 'am'; 'Lj'; 'Li'; 'Wwb'; 'Wdi'; 'GSI'; 'E_L'; 't-L_f'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Li'; 'Ww0'; 'Wwb'; 'Wwp'; 'Wwi'; 't-Ww'; 't-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Ww0'; 'Wwb'; 'Wwp'; 'Wwi'; 't-Ww'; 't-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Wwp'; 'Wwi'; 'Ni_f'; 't-Ww_f'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'am'; 'L0'; 'Lj'; 'Lp'; 'Li'; 'WC0'; 'WN0'; 'Wwp'; 'Wdi'; 'R_L'; 'L-Wd'; 'L-Ww'; 'Wd-JO'; 'Wd-JN'; 'T-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 'V-V'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Ab'; 'Ap'; 'Ai'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ae'; 't-A'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'; 'L-JX'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_fT'; 't-R_T'; 't-S'}, data)
   COMPLETE = 2.9;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'dLj'; 'Ri'; 'JXm'; 't-L'; 'L-Wd'; 'Wd-JC_T'; 'Wd-JO_T'; 'Wd-JN_T'}, data)
   COMPLETE = 2.9;
elseif STRCMP({'ab'; 'ap'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'; 't-L_fT'; 't-S_T'; 'X-Li'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 'Ni_f'; 't-L_f'}, data)
   COMPLETE = 3;%
elseif STRCMP({'ap'; 'am'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww_f'}, data)
   COMPLETE = 3;
elseif STRCMP({'ap'; 'am'; 'L0'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 'RQ'; 'L-Ww'; 'L-Wd'; 'L-WN'; 'L-WC'; 't-Ww'; 'L-R'; 'T-ab'; 'T-JO'; 'T-JN'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'WC0'; 'Wwi'; 'R_L'; 't-L'; 't-N'; 'L-Ww'; 'L-WC'; 'L-V'; 'L-R'; 'Ww-R'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 'RQ'; 't-L_T'; 'L-F'; 'Ww-JO_T'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'am'; 'L0'; 'Lp'; 'Li'; 'WC0'; 'Wwi'; 'R_L'; 't-Ww'; 't-WC'; 'Ww-R_f'; 'Ww-JO_T'}, data)
   COMPLETE = 3.2;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwi'; 'Wdb'; 'Wdj'; 'Wdi'; 'Ri'; 'GSI'; 'K'; 't-L_fT'; 't-Ww_f'; 't-Wd_f'; 't-F_f'; 't-JX'; 't-WwR'; 'L-JO'; 'L-Wd'}, data)
   COMPLETE = 3.3;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Wd0'; 'Wdb'; 'Wd_L'; 't-L_f'; 't-Wd_f'; 't-M_PLC'; 't-N'; 'L-JX'; 'L-JO'; 't-S'}, data)
   COMPLETE = 3.5;%
elseif STRCMP({'Vb'; 't-V_f'; 'JX-ap'; 'JX-am'; 'JX-Vp'; 'JX-Vi'; 'JX-Ri'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdp'; 'Wdi'; 'GSI'; 'Fm'; 't-L'; 'L-Ww'; 'L-F'; 'L-JO'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 't-Ww_f'; 'Ww-JX_f'; 'Ww-JO_f'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 'Ri'; 't-L'; 't-dL'; 'L-Ww'; 'X-JX_L'; 'X-JP_L'; 'JX-JO_L'; 'L-JO'}, data)
   COMPLETE = 3.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L_f'; 't-JX_f'; 't-N_f'; 'L-Wd_f'; 'L-JO_T'; 'L-Wd'}, data)
   COMPLETE = 5;
elseif STRCMP({'ab_T'; 'ap'; 'Lj'; 'Lp'; 'Li'; 'Wd0'; 'Wdb'; 'Wdi'; 'Ri'; 'JOb'; 'JOi'; 't-L_f'; 't-Ww_f'; 't-Wwe'; 't-Wd_f'; 't-N_f'; 't-JOe'; 't-S'}, data)
   COMPLETE = 5;
else 
   COMPLETE = NaN;
end
 

COMPLETE = COMPLETE - n; % reduce for punish points 
