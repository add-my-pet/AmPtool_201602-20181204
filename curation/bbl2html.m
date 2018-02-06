%% bbl2html
% translates .bbl to .html

%%
function bbl2html(my_pet_bib, destinationFolder, filenm)
% created 2018/02/02 by Bas Kooijman

%% Syntax
% <bbl2html *bbl2hmtl*>(my_pet_bib, destinationFolder, filenm)

%% Description
% Translates a bbl-file into a html-file
%
% Input:
%
% * bbl: bbl.file without extension
% * destinationFolder: optional specification of destonations folder (default: local)
% * filnm: optional file name to append (default: my_pet_bib.html)

%% Remarks
% The intended use is 
% 
% * convert biblist in results_my_pet.mat to bib via prt_my_pet_bib
% * convert bib to bbl by bib2bbl
% * convert bbl to html by bbl2html
% * insert html-snippet in results_my_pet.html

if ~exist('destinationFolder', 'var')
  destinationFolder = '';
end

if ~exist('filenm', 'var')
   fid = fopen([destinationFolder, my_pet_bib, '.html'], 'w+'); % open file for reading and writing and deletes old content
else
   fid = fopen([destinationFolder, filenm, '.html'], 'a'); % open file for appending
end
bbl = fileread([destinationFolder, my_pet_bib, '.bbl']); 

% general edits for whole bbl
bbl = strrep(bbl, '\begin{thebibliography}{1}', ''); 
bbl = strrep(bbl, '\end{thebibliography}', '');
i = strfind(bbl, '\bibitem'); bbl(1:i-1) = []; % remove heading stuff
bbl = strrep(bbl, char(13), '');               % remove unnecessary new lines
bbl = strrep(bbl, '~', ' '); bbl = strrep(bbl, '\newblock', ' ');

% number of bibitems
i_bib = strfind(bbl, '\bibitem'); n_bib = length(i_bib); i_bib = [i_bib, length(bbl)]; % # of bibitems

fprintf(fid, '      <ul class="ref">\n'); % open unordered list

for i = 1:n_bib % scan bibitems
  bibitem_i = bbl(i_bib(i): (i_bib(i+1)-2));
  i_0 = 1+ strfind(bibitem_i, '{'); i_1 = strfind(bibitem_i, '}') - 1; 
  bibkey_i = bibitem_i(i_0:i_1);
  
  % edit bibitem_i
  j = strfind(bibitem_i,'}'); bibitem_i(1:j+1) = []; % remove header from content
  
  url = regexp(bibitem_i, '\url{\S.*}', 'match'); n = length(url);
  for j=1:n
    txt = url{j}; txt(1:4) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['\url{', txt, '}'], ['<a href="', txt, '">', txt, '</a>']);
  end
  
  
  bibitem_i = strrep(bibitem_i, '\em', '&em'); % expression \em gives problems in following line
  em =  regexp(bibitem_i, '{&em\s\w.*}', 'match'); n = length(em);
  for j=1:n
    txt = em{j}; txt(1:5) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['{&em ', txt, '}'], ['<i>', txt, '</i>']);
  end

  n = length(strfind(bibitem_i, '&emph'));
  for j=1:n
    txt = bibitem_i; txt(1: (5 + strfind(txt, '&emph{'))) = []; txt(strfind(txt, '}'): end) = [];
    bibitem_i = strrep(bibitem_i, ['&emph{', txt, '}'], ['<i>', txt, '</i>']);
  end

  n = length(strfind(bibitem_i, '\textit'));
  for j=1:n
    txt = bibitem_i; txt(1: (7 + strfind(txt, '\textit{'))) = []; txt(strfind(txt, '}'): end) = [];
    bibitem_i = strrep(bibitem_i, ['\textit{', txt, '}'], ['<i>', txt, '</i>']);
  end

  % special characters
  bibitem_i = strrep(bibitem_i, '\r', '&r'); % ring
  r =  regexp(bibitem_i, '&r{\w*}', 'match'); n = length(r);
  for j=1:n
    txt = r{j}; txt(1:3) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['&r{', txt, '}'], ['&', txt, 'ring;']);
  end

  bibitem_i = strrep(bibitem_i, '\c', '&c'); % cedil
  c =  regexp(bibitem_i, '&c{\w*}', 'match'); n = length(c);
  for j=1:n
    txt = c{j}; txt(1:3) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['&c{', txt, '}'], ['&', txt, 'cedil;']);
  end

  bibitem_i = strrep(bibitem_i, '\"', '&"'); % uml
  x =  regexp(bibitem_i, '&"{\w*}', 'match'); n = length(x);
  for j=1:n
    txt = x{j}; txt(1:3) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['&"{', txt, '}'], ['&', txt, 'uml;']);
  end

  bibitem_i = strrep(bibitem_i, '\''', '&'''); % acute
  x =  regexp(bibitem_i, '&''{\w*}', 'match'); n = length(x);
  for j=1:n
    txt = x{j}; txt(1:3) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['&''{', txt, '}'], ['&', txt, 'acute;']);
  end

  bibitem_i = strrep(bibitem_i, '\`', '&`'); % grave
  x =  regexp(bibitem_i, '&`{\w*}', 'match'); n = length(x);
  for j=1:n
    txt = x{j}; txt(1:3) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['&`{', txt, '}'], ['&', txt, 'grave;']);
  end

  bibitem_i = strrep(bibitem_i, '\~', '&~'); % tilde
  x =  regexp(bibitem_i, '&~{\w*}', 'match'); n = length(x);
  for j=1:n
    txt = x{j}; txt(1:3) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['&~{', txt, '}'], ['&', txt, 'tilde;']);
  end

  bibitem_i = strrep(bibitem_i, '\^', '&^'); % circ
  x =  regexp(bibitem_i, '&^{\w*}', 'match'); n = length(x);
  for j=1:n
    txt = x{j}; txt(1:3) = []; txt(end) = [];
    bibitem_i = strrep(bibitem_i, ['&^{', txt, '}'], ['&', txt, 'circ;']);
  end

  bibitem_i = strrep(bibitem_i, '\&', '&amp;');
  bibitem_i = strrep(bibitem_i, '{\ss}', '&szlig;');
  bibitem_i = strrep(bibitem_i, '{\l}', '&#322');
  bibitem_i = strrep(bibitem_i, '{\L}', '&#321');

  bibitem_i = strrep(bibitem_i, '\', ''); % just avoid problems
  
  % write bibitem i
  fprintf(fid,['        <li>[<b><font color=Blue>', bibkey_i, '</font></b>] \n']);
  fprintf(fid,['          ', bibitem_i]); 
  fprintf(fid, '        </li>\n');

end

fprintf(fid, '      </ul>\n\n'); % close unordered list
fclose(fid);

% remove bbl file
delete([destinationFolder, my_pet_bib, '.bbl'])

