%% prt_authors
% prints authors.html with submitting authors and their entries

%%
function prt_authors
%% created 2016/02/23 by Bas Kooijman, modified 2016/12/24

%% Syntax
% <../prt_authors.m *prt_authors*>(info)

%% Description
% Writes ../authors.html with all authors and their submitted entries

%% Example of use
% prt_authors

  [ad entries] = read_allStat('author','date_subm');
  ne = length(entries); authors = ad(:,1); dates = ad(:,2); datenr = zeros(ne,1); ymd = cell(ne);
  
  for i=1:ne
    datenr(i) = datenum(dates{i});
    ymd{i} = datestr(datenr(i), 'yyyy/mm/dd');
  end
  
  % alphabetically arranged list of all authors
  author = sort_fam(unique([authors{:}]))'; 
    
  % binary matrix of authors x entries
  na = length(author); nae = zeros(na,ne);
  for i = 1:ne
    authorsi = authors{i};
    nai = length(authorsi);
    for j = 1:nai
      nae(:,i) = nae(:,i) + strcmp(author,authorsi{j});
    end
  end
  nae = (nae > 0);
  
  nr = sum(nae,2); % number of entries by each author
    
  % sorted entries for each author
  entry = cell(na); date = cell(na); 
  for i = 1:na
    [nm index] = sort(datenr(nae(i,:)==1),'descend');
    E = entries(nae(i,:)==1); entry{i} = E(index);
    D = ymd(nae(i,:)==1);     date{i} = D(index);
  end
    
  nrow = ceil(na/4); % # of rows in author table, to be filled in cols
  fid_authors = fopen('../authors.html', 'w+'); % open file for writing, delete existing content
  
% make the header for authors.html :
fprintf(fid_authors, '<!DOCTYPE html>\n');
fprintf(fid_authors, '<HTML>\n');
fprintf(fid_authors, '<HEAD>\n');
fprintf(fid_authors, '  <TITLE>AmP authors</TITLE>\n');
fprintf(fid_authors, '  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">\n');
fprintf(fid_authors, '  <meta name="viewport" content="width=device-width, initial-scale=1">\n');
fprintf(fid_authors, '  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>\n');
fprintf(fid_authors, '  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>\n');
fprintf(fid_authors, '  <style>\n');
fprintf(fid_authors, '    .dropdown-submenu {\n');
fprintf(fid_authors, '      position: relative;\n');
fprintf(fid_authors, '    }\n\n');
fprintf(fid_authors, '    .dropdown-submenu .dropdown-menu {\n');
fprintf(fid_authors, '      top: 0;\n');
fprintf(fid_authors, '      left: 100%%;\n');
fprintf(fid_authors, '      margin-top: -1px;\n');
fprintf(fid_authors, '    }\n');
fprintf(fid_authors, '  </style>\n');
fprintf(fid_authors, '  <link rel="stylesheet" type="text/css" href="sys/style.css">\n');
fprintf(fid_authors, '  <script src="sys/dropdown.js"></script>\n');
fprintf(fid_authors, '  <script src="sys/w3data.js"></script>\n');
fprintf(fid_authors, '</HEAD>\n\n');
fprintf(fid_authors, '<BODY>\n\n');

fprintf(fid_authors, '<div w3-include-html="sys/wallpaper_amp.html"></div>\n');
fprintf(fid_authors, '<div w3-include-html="sys/toolbar_amp.html"></div>\n');
fprintf(fid_authors, '<script>w3IncludeHTML();</script>\n\n');
	
fprintf(fid_authors, '<div id = "main">\n');
fprintf(fid_authors, '  <div id = "main-wrapper-species">    \n');
fprintf(fid_authors, '    <div id="contentFull">\n\n');
fprintf(fid_authors, '      <H2>Authors and their submitted entries</H2>\n\n');
fprintf(fid_authors, '      <table>\n');
for i = 1:nrow
fprintf(fid_authors, '       <tr>\n');
  for j = 1:4
    index = (j - 1) * nrow + i; % index of author
    if index > na
      break
    end
    if j == 1 || j == 3
fprintf(fid_authors, '         <td BGCOLOR = "#FFE7C6">\n');
    else
fprintf(fid_authors, '         <td>\n');
    end
fprintf(fid_authors, '           <div class = "dropdown">\n');
fprintf(fid_authors,['             <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">', author{index}, '<span class="caret"></span></button>\n']);
fprintf(fid_authors, '             <ul class="dropdown-menu">\n');
    txt_entry = entry{index}; txt_date = date{index};
    for k = 1:nr(index)
fprintf(fid_authors,['               <li><a target="_top" href="entries_web/', txt_entry{k}, '_res.html">', txt_date{k}, ' ', txt_entry{k}, '</a></li>\n']);
    end
fprintf(fid_authors, '             </ul>\n');
fprintf(fid_authors, '           </div>\n');
    if j == 1 || j == 3
fprintf(fid_authors,['         </td><td  BGCOLOR = "#FFE7C6">', num2str(nr(index)), '</td>\n']);
    else
fprintf(fid_authors,['         </td><td>', num2str(nr(index)), '</td>\n']);
    end
  end
fprintf(fid_authors, '       </tr>\n');
end
fprintf(fid_authors, '      </table>\n\n');
fprintf(fid_authors, '    </div> <!-- end of content -->\n\n');

fprintf(fid_authors, '    <div w3-include-html="sys/footer_amp.html"></div>\n');
fprintf(fid_authors, '    <script>w3IncludeHTML();</script>\n\n');

fprintf(fid_authors, '  </div> <!-- main wrapper -->\n');
fprintf(fid_authors, '</div> <!-- main -->\n');

fprintf(fid_authors, '</BODY>\n');
fprintf(fid_authors, '</HTML>\n');
fclose(fid_authors);
  
end

%% subfunction

function sauthor = sort_fam(author)
  % orders a cell-array of authors to their names after the last space
  
  n = length(author); fam = author;
  for i = 1:n
    name = author(i); name = name{:}; 
    name(1:max(strfind(name, ' '))) = [];
    fam(i) = {name};
  end
  [nm index] = sort(fam);
  sauthor = author(index);
end