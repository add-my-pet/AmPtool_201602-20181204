%% prt_authors
% prints authors.html with submitting authors and their entries

%%
function prt_authors
%% created 2016/02/23 by Bas Kooijman, modified 2016/12/24, 2017/07/30

%% Syntax
% <../prt_authors.m *prt_authors*>(info)

%% Description
% Writes ../authors.html with all authors and their submitted entries

%% Remarks
% allStat.mat always has a field author for each entry, but not always field(s) author_mod_*.
% If author_mod_* exists, date_mod_* must exist.
% Each author_mod_* field can have one or more authors

%% Example of use
% prt_authors

  % get basic data
  [adad entries] = read_allStat('author', 'date_subm', 'author_mod', 'date_mod'); 
  ne = length(entries);   
  % authors
  authors = adad(:,[1 3]);                % (ne,>0)-cell array with all authors
  author = cell(0, 1); % convert (2*ne,1)-cell array, to (n,1)-cell array by vertcat all cell-arrays 
  for i=1:ne % scan entries
    author1 = authors{i,1}; author2 = authors{i,2}; % submit-, mod-authors
    author = [author; author1(:); author2(:)];
  end
  author = sort_fam(unique([author{:}])); % alphabetically arranged list of all authors
  na = length(author);   
  % dates
  dates = adad(:,[2 4]);                  % (ne,>0)-cell array with all dates
    
  % prepare for writing authors.html
  nrow = ceil(na/4); % # of rows in author table, to be filled in cols
  fid_authors = fopen('../authors.html', 'w+'); % open file for writing, delete existing content
  
% write header for authors.html :
fprintf(fid_authors, '<!DOCTYPE html>\n');
fprintf(fid_authors, '<HTML>\n');
fprintf(fid_authors, '<HEAD>\n');
fprintf(fid_authors, '  <TITLE>AmP authors</TITLE>\n');
fprintf(fid_authors, '  <link rel="stylesheet" type="text/css" href="sys/style.css">\n');
fprintf(fid_authors, '  <style>\n');
fprintf(fid_authors, '    /*-- Multilevel DropDown menus --*/\n');
fprintf(fid_authors, '    /*-- http://www.cssscript.com/create-a-multi-level-drop-down-menu-with-pure-css/ --*/\n\n');

fprintf(fid_authors, '    /*-- Set the parent <li> CSS position property to relative --*/\n\n');

fprintf(fid_authors, '    ul {\n');
fprintf(fid_authors, '      list-style: none;\n');
fprintf(fid_authors, '      padding: 0;\n');
fprintf(fid_authors, '      margin: 0;\n');
fprintf(fid_authors, '    }\n\n');
	 
fprintf(fid_authors, '    ul li {\n');
fprintf(fid_authors, '      display: block;\n');
fprintf(fid_authors, '      position: relative;\n');
fprintf(fid_authors, '      float: left;\n');
fprintf(fid_authors, '    }\n\n');

fprintf(fid_authors, '    /*-- The CSS to hide the sub menus --*/\n\n');

fprintf(fid_authors, '    li ul { display: none; }\n\n');
	 
fprintf(fid_authors, '    ul li a {\n');
fprintf(fid_authors, '      display: block;\n');
fprintf(fid_authors, '      padding: 1em;\n');
fprintf(fid_authors, '      text-decoration: none;\n');
fprintf(fid_authors, '      white-space: nowrap;\n');
fprintf(fid_authors, '      color: #fb5c3a;\n');
fprintf(fid_authors, '    }\n\n');
	 
fprintf(fid_authors, '    ul li a:hover { background: #2c3e50; }\n\n');

fprintf(fid_authors, '    /*-- Displays the dropdown menu on hover --*/\n\n');

fprintf(fid_authors, '    ul ul {\n');
fprintf(fid_authors, '      left: 100%%;\n');
fprintf(fid_authors, '      top: 0;\n');
fprintf(fid_authors, '    }\n\n');

fprintf(fid_authors, '    li:hover > ul {\n');
fprintf(fid_authors, '      display: block;\n');
fprintf(fid_authors, '      position: absolute;\n');
fprintf(fid_authors, '    }\n\n');
	 
fprintf(fid_authors, '    li:hover li { float: none; }\n\n');
	 
fprintf(fid_authors, '    li:hover a { background: #fb5c3a; color: #000000 }\n\n');
	 
fprintf(fid_authors, '    li:hover li a:hover { background: #2c3e50; }\n\n');
	 
fprintf(fid_authors, '    .main-navigation li ul li { border-top: 0; }\n\n');

fprintf(fid_authors, '    /*-- Displays second level dropdown menus to the right of the first level dropdown menu --*/\n\n');

fprintf(fid_authors, '    ul ul ul {\n');
fprintf(fid_authors, '      left: 100%%;\n');
fprintf(fid_authors, '      top: 0;\n');
fprintf(fid_authors, '    }\n\n');

fprintf(fid_authors, '    /*-- Simple clearfix --*/\n\n');

fprintf(fid_authors, '    ul:before,\n');
fprintf(fid_authors, '    ul:after {\n');
fprintf(fid_authors, '      content: " "; /* 1 */\n');
fprintf(fid_authors, '      display: table; /* 2 */\n');
fprintf(fid_authors, '    }\n\n');
	 
fprintf(fid_authors, '    ul:after { clear: both; }\n');

fprintf(fid_authors, '  </style>\n');
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
fprintf(fid_authors, '      <H2><a href="" title="Locate entries via authors and submission/modification dates by clicking on numbers of entries.\n');
fprintf(fid_authors, '           Click on entry names to goto entries.">Authors and their submitted entries</a></H2>\n\n');
fprintf(fid_authors, '      <div ID = "tab_authors"><table>\n');
for i = 1:nrow % scan all authors
fprintf(fid_authors, '       <tr>\n');
  for j = 1:4
    index = (j - 1) * nrow + i; % index of author
    if index > na
      break
    end
    if j == 1 || j == 3
fprintf(fid_authors,['         <td BGCOLOR = "#FFE7C6" WIDTH="250">', author{index}, '</td>\n']);
fprintf(fid_authors, '         <td BGCOLOR = "#FFE7C6">\n');
    else
fprintf(fid_authors,['         <td WIDTH="250">', author{index}, '</td>\n']);
fprintf(fid_authors, '         <td>\n');
    end
fprintf(fid_authors, '             <ul class="main-navigation">\n');

    % get lists of entries and dates for current author
    txt_entry = cell(0); txt_date = cell(0); date_num = [];
    for k = 1:ne % scan all entries
      if sum(strcmp(author{index}, authors{k,1})) 
        txt_entry = [txt_entry; entries{k}];
        date_num = [date_num; datenum(dates{k,1})];
        txt_date = [txt_date; datestr(date_num(end), 'yyyy/mm/dd')];
      end
      
      authors_mod = authors{k,2}; n_mod = length(authors_mod);
      for l = 1:n_mod
        date_mod = dates{k,2};
        if sum(strcmp(author{index}, authors_mod{l})) 
          txt_entry = [txt_entry; entries{k}];
          date = date_mod{l}; date_num = [date_num; datenum(date{1})];
          txt_date = [txt_date; datestr(date_num(end), 'yyyy/mm/dd')];
        end
      end
    end
    nr = length(date_num);
    
    % sort entries on dates for current author
    [nm ind] = sort(date_num,'descend');
    txt_entry = txt_entry(ind); txt_date = txt_date(ind);
    
fprintf(fid_authors,['               <li><a href="#">', num2str(nr), '</a>\n']);
fprintf(fid_authors, '               <ul>\n');
    for k = 1:nr % scan all dates/entries for current author
fprintf(fid_authors,['                 <li><a target="_top" href="entries_web/', txt_entry{k}, '_res.html">', txt_date{k}, ' ', txt_entry{k}, '</a></li>\n']);
    end
fprintf(fid_authors, '               </ul>\n');
fprintf(fid_authors, '             </ul>\n');
  end
fprintf(fid_authors, '         </td>\n');
fprintf(fid_authors, '       </tr>\n');
end
fprintf(fid_authors, '      </table></div>\n\n');
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