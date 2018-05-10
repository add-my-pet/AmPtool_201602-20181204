%% read_allEco
% read eco-codes in allEco.mat

%%
function [codes, entries] = read_allEco(varargin)
% created 2018/05/10 by Bas Kooijman

%% Syntax
% [codes, entries] = <../read_allEco.m *read_allEco*>(varargin)

%% Description
% read eco-codes in allEco.mat. Possible arguments are: climate, ecozone, habitat, embryo, migrate, food, gender, reprod.
%
% Input:
%
% * varargin: names of variables or cell-string with names of variables
%
% Output
%
% * codes: (n,x)-cell-array with codes
% * entries: n-cell string with names of entries

%% Remarks
% Field migrate can be empty in case of no migration or torpor.

%% Example of use
% gender_embryo = read_allEco('gender', 'embryo'); 
  
  load('allEco')        % get all codes in structure allEco
  entries = fieldnames(allEco); n = length(entries); 
  if iscell(varargin{1})    
    varargin = varargin{:}; % unpack cell string
  end
  nargin = length(varargin);    
  codes = cell(n,nargin);
  
  for i = 1:n
    for j = 1:nargin
      codes{i,j} = allEco.(entries{i}).(varargin{j});
    end
  end
  end
    
