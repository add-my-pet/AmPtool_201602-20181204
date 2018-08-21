%% bib2bbl
% translates .bib to .bbl by running Latex under Matlab

%%
function bib2bbl(my_pet_bib)
% created 2018/02/03 by Bas Kooijman

%% Syntax
% <bib2bbl *bib2bbl*>(my_pet_bib)

%% Description
% Translates a bib-file into a bbl-file
%
% Input:
%
% * my_pet_bib: bib-file name without extension

%% Remarks
% assumes that Bibtex can be ran onder dos and operations occurs in current directory
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

fid = fopen([my_pet_bib, '.aux'], 'w+'); % open file for reading and writing and deletes old content

fprintf(fid,[ ...
   '\\relax\n' ...
   '\\citation{*}\n' ...
   '\\bibstyle{apalike}\n' ...
   '\\bibdata{', my_pet_bib, '}\n']);
fclose(fid); 

% run bibtex
dos(['bibtex ', my_pet_bib]);

% remove help files
%delete([my_pet_bib, '.aux'], [my_pet_bib, '.blg'])
delete([my_pet_bib, '.aux'])

