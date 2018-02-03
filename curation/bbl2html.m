%% bbl2html
% translates .bbl to .html

%%
function bbl2html(my_pet_bib)
% created 2018/02/02 by Bas Kooijman

%% Syntax
% <bbl2html *bbl2hmtl*>(my_pet)

%% Description
% Translates a bbl-file into a html-file
%
% Input:
%
% * bbl: bbl.file without extension

%% Remarks
% The intended use is 
% 
% * convert biblist in results_my_pet.mat to bib via prt_my_pet_bib
% * convert bib to bbl by bib2bbl
% * convert bbl to html by bbl2html
% * insert html-snippet in results_my_pet.html

bbl = fileread([my_pet_bib, '.bbl']); 

% general edits for whole bbl
bbl = strrep(bbl, '\begin{thebibliography}{1}', ''); 
bbl = strrep(bbl, '\end{thebibliography}', '');
i = strfind(bbl, '\bibitem'); bbl(1:i-1) = []; % remove heading stuff
bbl = strrep(bbl, char(13), '');               % remove unnecessary new lines
bbl = strrep(bbl, '~', ' '); bbl = strrep(bbl, '\newblock', ' ');

i_bib = strfind(bbl, '\bibitem'); n_bib = length(i_bib); i_bib = [i_bib, length(bbl)]; % # of bibitems

fid = fopen([my_pet_bib, '.html'], 'w+'); % open output file 

fprintf(fid, '<ul>\n'); % open unordered list

for i = 1:n_bib % scan bibitems
  bibitem_i = bbl(i_bib(i): (i_bib(i+1)-2));
  i_0 = 1+ strfind(bibitem_i, '{'); i_1 = strfind(bibitem_i, '}') - 1; 
  bibkey_i = bibitem_i(i_0:i_1);
  
  % edit bibitem_i
  i = strfind(bibitem_i,'}'); bibitem_i(1:i+1) = [];
  
  url = regexp(bibitem_i, '\url{\S*}', 'match'); n = length(url);
  for j=1:n
    txt = url{j}; txt(1:4) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['\url{', txt, '}'], ['<a href="', txt, '">', txt, '</a>']);
  end
  
  emph =  regexp(bibitem_i, '\emph{\S*}', 'match'); n = length(emph);
  for j=1:n
    txt = emph{j}; txt(1:6) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['\emph{', txt, '}'], ['<i>', txt, '</i>']);
  end
  
  bibitem_i = strrep(bibitem_i, '\em', '&em'); % expression \em gives problems in following line
  em =  regexp(bibitem_i, '{&em\s\w.*}', 'match'); n = length(em);
  for j=1:n
    txt = em{j}; txt(1:5) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['{&em ', txt, '}'], ['<i>', txt, '</i>']);
  end
    
  bibitem_i = strrep(bibitem_i, '\em ', '');
  bibitem_i = strrep(bibitem_i, '\', '');
  
  % write bibitem i
  fprintf(fid,['<li>[', bibkey_i, '] \n']);
  fprintf(fid,['  ', bibitem_i]); 
  fprintf(fid,'</li>\n');

end

fprintf(fid, '</ul>\n'); % close unordered list
fclose(fid);

% remove bbl file
% delete([my_pet_bib, '.bbl'])

