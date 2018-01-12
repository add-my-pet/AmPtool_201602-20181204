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

if STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Ri'}, data)
   COMPLETE = 0.9;
elseif STRCMP({'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 1.0;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 'rB'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'Li'; 'Wdi'; 'L-Wd'; 'L-WC'; 'L-WN'; 'Wd-JO'; 'Wd-JN'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'ah'; 'ab'; 'aj'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'ab'; 'as'; 'aj'; 'ap'; 'am'; 'Lb'; 'Ls'; 'Lj'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 'L-Ww'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'am'; 'Li'; 't-L'; 't-N'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'ap'; 'am'; 'Li'; 't-Wd'}, data)
   COMPLETE = 1.5;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 'L-Ww'; 'L-N'; 'Ww-JO'}, data)
   COMPLETE = 1.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 1.7;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'L_t'; 'Wdb'; 'Wd_t'; 'Ni'; 't-L'}, data)
   COMPLETE = 1.8;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'L_t'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 1.8;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ww_L'; 'Ri'}, data)
   COMPLETE = 2.0;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Ls'; 'Lj'; 'L_t'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.0;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'L_t'; 'Lp'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.0;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'L_t'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.0;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'L_t'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.0;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.0;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'L_t'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.0;
elseif STRCMP({'ap';'am';'Lb';'Lp';'Li';'Ri'; 'L-Ww'; 't-L'}, data)
   COMPLETE = 2.1;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ni'; 'L-Ww'}, data)
   COMPLETE = 2.1;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.1;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'ab'; 'am'; 'Ni'; 't-L'; 't-LR'; 't-Wd'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 'GSI'; 'L-Ww'; 'Ww-JO_T'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'ab'; 'aj_T'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'ab'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'GSI'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lp'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.2;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'GSI'; 't-L';'L-Ww'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Ww_L'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap_T'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ap'; 'am'; 'Li'; 'Wwi'; 'GSI'; 't-M_N'; 't-M_DNA'; 't-M_RNA'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 't-L_T'; 'L-Ww'; 'L-JO'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'L_t'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lj'; 'Li'; 'Ni'; 't-L'; 'L-Wd'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'dLp'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'dLp'; 'Wwb'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 't-L' }, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'L-Ww'; 'L-N'; 'Ww-N'}, data)
   COMPLETE = 2.3;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'am'; 'Li'; 'Wd0'; 'Wdb'; 'Wdi'; 'Ni'; 't-L_T'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'; 'L-N'}, data)
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
elseif STRCMP({'ab'; 'aj_T'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'L_t'; 'Wdb'; 'Wwp'; 'Wwi'; 'Ww_t'; 'Ri'; 'E0'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'R_W'; 't-L'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 'L-dL'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'aj_T'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'L_t'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ww_t'; 'R_L'; 'E0'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ah'; 'ab'; 'aj'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'R_L'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ah'; 'ab'; 'am'; 'Lh'; 'Lp'; 'Li'; 'L-N'; 'L-Ww'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.4;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;%
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah_T'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'R_L'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'R_L'; 't-L_f'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L_f'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 't-Ww'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'L_t'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'R_L'; 't-L'; 'L-N'; 'T-ab'; 'T-aj'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L_f'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'R_L'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_f'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'; 'T-ah'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'L_t'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L'; 't-Ww'; 'L-N'; 'Ww-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_f'; 't-Ww'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 'GSI'; 't-L'; 'Ww-JO'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;%
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 'GSI'; 't-WL'; 'Ww-JO'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'; 't-Le'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ww_L'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj_T'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 't-Le_T'; 't-L'; 'T-JO'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L'; 't-Ww'; 'L-R'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lj'; 'Li'; 'Wwb'; 'Ri'; 'dWw_W'; 'JX_W'; 't-L'; 't-Ww'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'am'; 'L_t'; 'Wwe'; 'Ww_t'; 'Ni'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ae'; 'am'; 'Wd0'; 'Wdb'; 'Wdj'; 'Wde'; 't-Wd'; 't-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Wwb'; 'Wwj'; 'Wwe'; 'Ni'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'am'; 'L0'; 'Lb'; 'Lj'; 'Li'; 'Wdj'; 'Ni'; 't-L'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Wdb'; 'Wdp'; 'Ri'; 't-Wd_T'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Wdb'; 'Wdp'; 'Ri'; 't-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lb'; 'Lj'; 'Li'; 'Wwj'; 'Ni'; 'T-ab'; 't-L'; 'L-Wd'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdj'; 'Wwp'; 'Wwi'; 'Ri'; 'Eb'; 'Ej'; 't-L'; 'T-aj'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri';'t-L';'t-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L'; 't-Ww'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;%
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'GSI'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Wwb'; 't-L'; 'L-Ww'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'L_t'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 'L-dL'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj_T'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'; 't-WC_T'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 't-L_T'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_T'; 'ap_T'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 't-L_T'; 'L-N_T'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'; 't-L'; 't-Wd'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'; 'T-ab'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'; 'L-N_T'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww'; 'T-ap'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
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
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L';'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'L_t'; 'Wwb'; 'Wwp'; 'Wwi'; 'L-N'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'L_t'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'L-N'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'T-ab'; 'L-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 't-L'; 'L-L'; 'L-Ww'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Wdi'; 'Ri'; 't-Ww'; 'L-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'GSi'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'am'; 'Lj'; 'Lp'; 'Li'; 'GSI'; 'JX_W'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ni'; 'Ww-JO'; 'T-JO'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lj'; 'Li'; 'Wd0'; 'Wdj'; 'Ni'; 't-L_T'; 't-Wd_T'; 'T-ab'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lb'; 'Lj'; 'Wd0'; 'Wdb'; 'Wdj'; 'Ri'; 't-Wd'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'GSI'; 'L-dL'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 'L-Ww'; 'L-N'; 'Ww-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L';'t-Ww';'Ww-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ap'; 'am'; 'Lh'; 'Lp'; 'Li'; 'Wwi'; 'GSI'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'L-Ww'; 'T-ab'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'GSI'; 't-L';'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L';'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwh'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 'L-Ww'; 'T-ah'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lj'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 'L-dL'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Li'; 'Wwi'; 'Ri'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'L_t'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab';'ap';'am';'Li'; 'Wwb'; 'Wwi';'Ww_L'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'aj'; 'ap'; 'am'; 'Lh'; 'Lb'; 'L_t'; 'Lp'; 'Li'; 'Wwi'; 'Ri'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ap'; 'am'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah_T'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L'; 'L-N'; 'Ww-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 't-Ww'; 'L-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Ww_L'; 'Wwi'; 't-L'; 'L-GSI'; 'L-N'; 'Ww-N'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'R_L'; 't-L'; 't-Ww'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 't-L'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'L_t'; 'Wwb'; 'Wwi'; 'Ww_t'; 'Ri'}, data)
   COMPLETE = 2.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 't-L_f'; 't-N_f'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'; 'Ww-JO'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ww_L'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_f'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ah_T'; 'ap'; 'am'; 'Lh'; 'Lp'; 'Li'; 'R_L'; 'GSI'; 't-L_f'; 't-Ww'; 'L-Ww'; 'T-ah'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L_f'; 'L-Ww'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L_f'; 'L-Ww'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'R_L'; 't-L_f'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Ri'; 't-L_f'; 'L-Ww'; 'T-ab'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Wdb'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 'Ni'; 't-L'; 't-Ww'; 'L-Ww'; 't-N'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdb'; 'Wdj'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'T-ah'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'; 't-Ww_f'; 'L-Ww'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 't-L'; 'L-Ww'; 'L-N'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'; 'Ww-N'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'L_t'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'GSI'; 't-L'; 'L-Ww'; 'L-N'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 't-L'; 'L-Ww'; 'L-N'; 'T-ab'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'Ri'; 'Ww-JX'; 'Ww-dWw'; 't-Ww'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ni'; 't-Ww'; 'T-aj'}, data)
   COMPLETE = 2.6;
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
   COMPLETE = 2.6;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lp'; 'Li'; 'L_W'; 'Wwb'; 'Wwp'; 'Wwi'; 'R_L'; 't-L_f'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 't-L'; 'L-Ww'; 'L-N'; 'T-ab'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_f'}, data)
   COMPLETE = 2.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww_f'; 'L-N'; 'T-JO_f'; 'T-ab'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ah'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'R_L'; 't-L_T'; 't-Ww_T'; 'L-Ww'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Le'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 't-L'; 't-Le'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Ww0'; 'Wwi'; 'Ri'; 't-Le'; 't-VYe'; 'L-N'; 'L-Ww'; 'L-Wwe'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'; 'Ww-JO'; 'L-Ww'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'ae'; 'am'; 'Wd0'; 'Wwj'; 'Wwe'; 'Wde'; 'Ni'; 't-L_f'; 't-Ww'; 'Ww-N'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Wdb'; 'Wdi'; 'Ri'; 'T-ab'; 'T-ap'; 't-L'; 't-Wd'; 'L-Wd'; 't-S'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'L0'; 'Lj'; 'Li'; 'Wdj'; 'Ni'; 'T-ab'; 't-Wd_f'; 't-Ww'; 'L-Wd'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab_T'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'; 't-L_T'}, data)
   COMPLETE = 2.7;
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
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_T'; 't-Ww'; 'Ww-N'; 'L-Ww'; 'L-Wd'; 'T-ah'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Ww0'; 'Wdp'; 'Ri'; 't-L_f'; 'L-Wd'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'WdR_L'; 't-L_f'; 'L-Wd_f'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Li'; 'Wd0'; 'Wwi'; 'Ni'; 't-L'; 't-Ww'; 'Ww-JO'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wd0'; 'Wwp'; 'Wwi'; 'GSI'; 't-L'; 't-Ww'; 't-Wde'; 'T-JO'; 'Ww-dWw'; 'L-Ww_f'; 'L-WwR'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_f'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'am'; 'Lp'; 'Li'; 'Wwb'; 't-L'; 'L-Ww'; 'L-N'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'; 'L-Ww'; 'X-JX'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Li'; 'Wwb'; 'Wwi'; 'Ri'; 't-L_f'; 't-S_f'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ww_L'; 'GSI'; 't-L_f'}, data)
   COMPLETE = 2.7;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wdb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_f'; 't-Ww_f'; 'L-Ww'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ah'; 'am'; 'Lh'; 'L_t'; 'Lp'; 'Li'; 'Wwi'; 't-L'; 'L-Ww'; 'L-N'; 'Ww-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww_f'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ah'; 'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_f'; 'L-Ww'; 'Ww-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 't-Le'; 't-L_f'; 't-Ww'; 'L-Ww'; 't-N'; 'T-ab'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L',; 'L-N'; 'L-Ww'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 'L-Ww'; 'Wd-Ww'; 'Wd-Wa'; 'L-dL'; 'L-N'; 'T-JO_W'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'aj'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 't-L_f'; 'L-N_f'; 'L-Ww'; 'L-Wd'; 'L-E'; 'T-ap'; 'Wd-JO'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ww0'; 'Wdb'; 'Wdp'; 'Wdi'; 't-L_fT'; 'L-JX'; 'L-JO'; 'L-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ah'; 'ab'; 'aj'; 'ap'; 'am'; 'Lj'; 'Lp'; 'Li'; 'Ww0'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 't-L'; 'L-JX'; 'L-JC'; 'L-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 't-Wd'; 't-L_f'; 'T-ab'; 'Ww-N'; 'L-Ww'}, data)
   COMPLETE = 2.8;
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
elseif STRCMP({'ab'; 'aj_T'; 'ae'; 'am'; 'Lb'; 'Lj'; 'Wd0'; 'Wwj'; 'Wwe'; 'Wde'; 'Ni_f'; 't-L_fT'; 'L-Wd'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Ab'; 'Ap'; 'Ai'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ae'; 't-A'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ah';'ab'; 'ap';'am';'Lh'; 'Lb';'Lj';'Lp';'Li'; 'Ww0'; 'Ww_t'; 'Wwp'; 'Wwi'; 't-L_T'; 't-Ww_T';'t-JX_T'; 'L-JO_T'; 'L-Ww'; 'L-N'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'L-Ww'; 'L-JX'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Ri'; 'L-Wd_f'; 'X-dL_L'; 'X-dWd_W'; 't-L_f'; 'Wd-JO_f'; 'X-JC_W'; 'X-JX_W'}, data)
   COMPLETE = 2.8;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L_fT'; 't-R_T'; 't-S'}, data)
   COMPLETE = 2.9;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'dLj'; 'Ri'; 'JXm'; 't-L'; 'L-Wd'; 'Wd-JC_T'; 'Wd-JO_T'; 'Wd-JN_T'}, data)
   COMPLETE = 2.9;
elseif STRCMP({'ab'; 'aj'; 'ae'; 'am'; 'Ww0'; 'Wwb'; 'Wwj'; 'Wwe'; 'Wwi'; 'Ww_t'; 'Ni'; 't-Wwe'; 't-Ww'; 't-JO'; 't-JOe'}, data)
   COMPLETE = 2.9;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 'T-JO'; 'T-dWw_f'; 'Ww-JO'; 'Ww-JO'; 't-N'; 'L-Ww'}, data)
   COMPLETE = 3;
elseif STRCMP({'ah'; 'ab'; 'aj'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lp'; 'Li'; 'Wwp'; 'Wwi'; 'Ri'; 't-L'; 't-Ww'; 'L-N'; 'Ww-N'}, data)
   COMPLETE = 3;
elseif STRCMP({'ah'; 'ap'; 'am'; 'Lh'; 'Lp'; 'Li'; 'Ww0'; 'Wwh'; 'Wwi'; 'Ri'; 'GSI'; 't-L'; 'L-Ww'; 't-WwYe'; 't-WwVe'; 't-JOe'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 'L-dL'; 'L-N'; 'L-F'; 'WC-JX'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab_T'; 'aj'; 'am'; 'Lb'; 'Lj'; 'Li'; 'Wd0'; 'Ww0'; 'Wdb'; 'Wwi'; 'GSI'; 't-Le_T'; 't-L_f'; 't-Wd_f'; 't-JOe'; 'L-Ww'; 'T-JO'}, data)
   COMPLETE = 3;
elseif STRCMP({'aj'; 'ap'; 'am'; 'Wwb'; 'Wwj'; 'Wwp'; 'Wwi'; 'GSI'; 't-L_fT'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'aj'; 'ae'; 'am'; 'Ww0'; 'Wwb'; 'Wwj'; 'Wwe'; 'Ni'; 't-Ww'; 't-JO'; 't-N'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'aj'; 'ae'; 'am'; 'E0'; 'L_t'; 'Ww0'; 'Wwj'; 'Wwe'; 'Ri'; 't-Ww'; 'Ww-JO'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'ap'; 'Lb'; 'Lp'; 'Li'; 'Wdb'; 'Wdp'; 'Wdi'; 'Ri'; 't-L_fT'; 't-S_T'; 'X-Li'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 'Ni_f'; 't-L_f'}, data)
   COMPLETE = 3;
elseif STRCMP({'ap'; 'am'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'; 't-Ww_f'}, data)
   COMPLETE = 3;
elseif STRCMP({'ap'; 'am'; 'L0'; 'Lb'; 'Lp'; 'Li'; 'Wwi'; 'Ri'; 'RQ'; 'L-Ww'; 'L-Wd'; 'L-WN'; 'L-WC'; 't-Ww'; 'L-R'; 'T-ab'; 'T-JO'; 'T-JN'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'WC0'; 'Wwi'; 'R_L'; 't-L'; 't-N'; 'L-Ww'; 'L-WC'; 'L-V'; 'L-R'; 'Ww-R'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 'RQ'; 't-L_T'; 'L-F'; 'Ww-JO_T'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Ri'; 'L-dL'; 'L-Wd'; 'Ww-dWw'; 'Wd-JO'; 'Ww-JX'}, data)
   COMPLETE = 3;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'R_L'; 't-L'; 't-N'; 'L-Ww'; 'L-N'; 'Ww-N';  'Ww-pX_T'; 'Ww-JO_T'; 'T-ah'; 'T-dL'}, data)
   COMPLETE = 3.2;
elseif STRCMP({'ab'; 'am'; 'L0'; 'Lp'; 'Li'; 'WC0'; 'Wwi'; 'R_L'; 't-Ww'; 't-WC'; 'Ww-R_f'; 'Ww-JO_T'}, data)
   COMPLETE = 3.2;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwi'; 'Wdb'; 'Wdj'; 'Wdi'; 'Ri'; 'GSI'; 'K'; 't-L_fT'; 't-Ww_f'; 't-Wd_f'; 't-F_f'; 't-JX'; 't-WwR'; 'L-JO'; 'L-Wd'}, data)
   COMPLETE = 3.3;
elseif STRCMP({'ah'; 'ab'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwh'; 'Wwj'; 'Wwi'; 'Ri'; 'GSI'; 'E0'; 't-L_T'; 't-Wd_T'; 't-Ww_f'; 'L-Ww'; 't-p+'; 't-JOe'; 't-JNe'; 't-VY'; 't-E'; 't-Wwe'; 't-Wde'; 'T-ab'; 'L-N'}, data)
   COMPLETE = 3.4;
elseif STRCMP({'ab'; 'am'; 'Lb'; 'Lp'; 'Wd0'; 'Wdb'; 'Wd_L'; 't-L_f'; 't-Wd_f'; 't-M_PLC'; 't-N'; 'L-JX'; 'L-JO'; 't-S'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'Vb'; 't-V_f'; 'JX-ap'; 'JX-am'; 'JX-Vp'; 'JX-Vi'; 'JX-Ri'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wdp'; 'Wdi'; 'GSI'; 'Fm'; 't-L'; 'L-Ww'; 'L-F'; 'L-JO'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Li'; 'Wwb'; 'Ri'; 't-L'; 't-Ww_f'; 'Ww-JX_f'; 'Ww-JO_f'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ah_T'; 'ab_T'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wd0'; 'Wdh'; 'Wdb'; 'Wwi'; 'Ri'; 't-Ww_f'; 't-L_f'; 't-Wde'; 't-Wde_E'; 'T-ah'; 'Ww-JO'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ah_T'; 'ab_T'; 'aj'; 'ap'; 'am'; 'Lh'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 't-L_fT'; 't-Ww_fT'; 't-VY_T'; 'Ww-R'; 'Ww-N_T'; 'T-ah'; 'T-JO'; 'T-JN'}, data)
   COMPLETE = 3.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wd0'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ni'; 'E0'; 't-Le_T'; 'L-Wde_T'; 'T-ab'; 't-L_fT'; 't-Ww_fT'; 'L-Ww'; 'L-N'}, data)
   COMPLETE = 3.6;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'GSI'; 'Ri'; 't-L'; 't-dL'; 'L-Ww'; 'X-JX_L'; 'X-JP_L'; 'JX-JO_L'; 'L-JO'}, data)
   COMPLETE = 3.8;
elseif STRCMP({'ab'; 'aj'; 'ap'; 'am'; 'L0'; 'Lb'; 'Lj'; 'Lp'; 'Li'; 'Wd0'; 'Wwi'; 'Ri'; 'GSI'; 't-Le'; 't-L_fT'; 't-Ww_f'; 't-Wd_f'; 't-N'; 't-JO'; 't-S'}, data)
   COMPLETE = 4.5;
elseif STRCMP({'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wdi'; 'Ri'; 't-L_f'; 't-JX_f'; 't-N_f'; 'L-Wd_f'; 'L-JO_T'; 'L-Wd'}, data)
   COMPLETE = 5;
elseif STRCMP({'ab_T'; 'ap'; 'Lj'; 'Lp'; 'Li'; 'Wd0'; 'Wdb'; 'Wdi'; 'Ri'; 'JOb'; 'JOi'; 't-L_f'; 't-Ww_f'; 't-Wwe'; 't-Wd_f'; 't-N_f'; 't-JOe'; 't-S'}, data)
   COMPLETE = 5;
elseif STRCMP({'am'; 'Lb'; 'Li'; 'Wwb_f'; 'Wdb_f'; 'Wwp'; 'Wdi'; 'Ri'; 'T-ab'; 't-L_fT'; 't-N_fT'; 'Ww-JO'}, data)
   COMPLETE = 5;
else 
   COMPLETE = NaN;
end
 

COMPLETE = COMPLETE - n; % reduce for punish points 
