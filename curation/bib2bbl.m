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
% assumes that Latex can be ran onder dos.
% The intended use is 
% 
% * convert biblist in results_my_pet.mat to bib via prt_my_pet_bib
% * convert bib to bbl by bib2bbl
% * convert bbl to html by bbl2html
% * insert html-snippet in results_my_pet.html

% create latex file
fid = fopen([my_pet_bib, '.tex'], 'w+'); % open tex file

fprintf(fid,[ ...
   '\\documentclass{article}\n' ...
   '\\pagestyle{empty}\n' ...
   '\\usepackage{a4wide,url}\n' ...
   '\\begin{document}\n' ...
   '  \\nocite{*}\n' ...
   '  \\bibliographystyle{plain}\n' ...
   '  \\bibliography{', my_pet_bib, '}\n' ...
   '\\end{document}\n']);
fclose(fid);

% run pdflatex and bibtex
dos(['pdflatex --interaction=batchmode ', my_pet_bib]);
dos(['bibtex ', my_pet_bib]);

% remove help files
delete([my_pet_bib, '.tex'], [my_pet_bib, '.aux'], [my_pet_bib, '.log'], [my_pet_bib, '.blg'])
