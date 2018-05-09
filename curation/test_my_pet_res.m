%% test_my_pet_res
% tests length my_pet_res.html files on server

%%
function [n varargin] = test_my_pet_res(varargin)
% created 2018/05/09 by Bas Kooijman

%% Syntax
% <test_my_pet_res *test_my_pet_res*>(varargin)

%% Description
% tests length my_pet_res.html files on server
%
% Input:
%
% * varargin: optional cell array with entry names, or character string with entry or node names (default 'Animalia')
%
% Output
%
% * n: n-vector with lengths of my_pet_res.html files
% * varargin: n-vector of cells with entry names

%% Example
% [n nm] = test_my_pet_res; run_collection(nm(n<6000));

if isempty(varargin)
  varargin = select('Animalia');
elseif ~iscell(varargin{1}) && isempty(strfind(varargin{1},'_'))
  varargin = select(varargin{1});
elseif iscell(varargin{1})    
  varargin = varargin{:};  % unpack cell string  
end

nargin = length(varargin); % number of entries to scan 
n = zeros(nargin,1);


for i=1:nargin
  my_pet_res = urlread(['https://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/', varargin{i}, '/', varargin{i},'_res.html']);
  n(i) = length(my_pet_res);
end
