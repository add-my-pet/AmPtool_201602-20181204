%% run_collection
% generates files for AmP website 

%%
function run_collection(varargin)
% created 2016/11/13 Bas Kooijman and Starrlight Augustine; modified 2017/04/26, 2018/02/13, 2018/03/28 Bas Kooijman

%% Syntax
% <../run_collection.m *run_collection*> (varargin)

%% Description
% Writes html and bib pages in entries_web and zip file in entries_zip.
% Deletes .cache, .wn, .asv, .bib,  .bbl', .html files from entries.
% This function calls function bib2bbl, which writes and deletes the .aux file as source for Bibtex.
% It also runs Bibtex (under Matlab) to produce a bbl-file, make sure that you have it.
% Then function bbl2html is called, which produces html code, writes it in my_pet_res.html, and deletes the bbl-file.
%
% Input:
%
% * entries: optional cell array with entry names, or character string with entry or node names (default 'Animalia')
%
% Output:
%
% * 1 bib-file, 3 html-files and 4 png-files per entry are written in ../entries_web 
% * 1 zip-file is written in ../entries_zip

%% Remarks
% run_collection_intro to generate about and access files for the collection

%% Example of use
% run_collection or 
% run_collection('Mola_mola') or
% run_collection('Mola_mola', 'Molva_molva') or
% run_collection({'Mola_mola', 'Molva_molva'}) or 
% run_collection('Clitellata');

if isempty(varargin)
  varargin = select('Animalia');
elseif ~iscell(varargin{1}) && isempty(strfind(varargin{1},'_'))
  varargin = select(varargin{1});
elseif iscell(varargin{1})    
  varargin = varargin{:}; % unpack cell string  
end

nargin = length(varargin); % number of entries to scan    
WD = pwd; % store current path

for i = 1:nargin 
  destinationFolder = ['../../entries_web/', varargin{i},'/']; % target for html and png files
  mkdir(destinationFolder);
  fprintf(' %g : %s \n', i, varargin{i}) % report progress to screen 
  
  cd(['../../entries/', varargin{i}]) % goto entry i in dir entries

  feval(['run_', varargin{i}]); close all;
  delete('*.cache', '*.wn', '*.asv', '*.bib', '*.bbl', '*.html') % delete unwanted and bib files
  %
  load(['results_', varargin{i}, '.mat']) % load results_my_pet.mat 
  [data, auxData, metaData, txtData] = feval(['mydata_',metaData.species]); % run mydata_* to create data files
  prdData = feval(['predict_',metaData.species], par, data, auxData); % run predict_* to compute predictions
  prdData = predict_pseudodata(par, data, prdData); % appends new field to prdData with predictions for the pseudo data:  
  cd(WD) % goto orginal path, but print to destinationFolder
  
  prt_my_pet_bib(metaData.species,metaData.biblist, destinationFolder) % print bib file
  prt_my_pet_par(metaData, metaPar, par, txtPar, destinationFolder) % print html with parameters
  prt_my_pet_stat(metaData, metaPar, par, destinationFolder) % print html with implied properties, including pie-png's
  prt_my_pet_res(data, prdData, auxData, metaData, txtData, metaPar, destinationFolder) % print html with results

  cd('../../entries_zip');
  zip_my_pet(varargin{i}, '../entries'); % zip the entry  
  cd(WD)  % goto original path    
end
    
close all
