%% bib2bbl
% translates .bib to .bbl by running Latex under Matlab

%%
function bib2bbl(my_pet_bib, destinationFolder)
% created 2018/02/03 by Bas Kooijman

%% Syntax
% <bib2bbl *bib2bbl*>(my_pet_bib, destinationFolder)

%% Description
% Translates a bib-file into a bbl-file
%
% Input:
%
% * my_pet_bib: bib-file name without extension
% * destinationFolder: optional specification of destinations folder (default: empty)

%% Remarks
% assumes that Bibtex can be ran onder dos.
% The intended use is 
% 
% * convert biblist in results_my_pet.mat to bib by prt_my_pet_bib
% * convert bib to bbl by bib2bbl
% * convert bbl to html by bbl2html
% * insert html-snippet in results_my_pet.html by prt_my_pet_res
%
% Notice that 
%
% * {\em ...} can have an arbitrary number of nested {}, but \emph{} and \textit{} cannot handle nested {}
% * web-adress cannot contain spaces or %20; use ~ instead; this will be replaced by a space in function bbl2html

% create aux file
if ~exist('destinationFolder', 'var')
  destinationFolder = '';
end
fid = fopen([destinationFolder, my_pet_bib, '.aux'], 'w+'); % open file for reading and writing and deletes old content

fprintf(fid,[ ...
   '\\relax\n' ...
   '\\citation{*}\n' ...
   '\\bibstyle{plain}\n' ...
   '\\bibdata{', my_pet_bib, '}\n']);
fclose(fid);

% run bibtex
WD = pwd;
if ~isempty(destinationFolder)
  cd(destinationFolder)
end
dos(['bibtex ', my_pet_bib]);
cd(WD)

% remove help files
delete([destinationFolder, my_pet_bib, '.aux'], [destinationFolder, my_pet_bib, '.blg'])
