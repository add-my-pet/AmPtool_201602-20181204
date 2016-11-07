%% prt_species_list_html
%  deletes and writes ../species_list.html 

%%
function prt_species_list_html
% created by Bas Kooijman; modified 2015/04/14 Starrlight Augustine & Goncalo Marques; 
%   modified 2015/07/21 Starrlight Augustine; 2015/08/28 Starrlight Augustine; 2016/11/05 Bas Kooijman

%% Syntax
% <../prt_species_list_html.m *prt_species_list_html*>

%% Description
% deletes and writes ../species_list.html

%% Remarks
% uses subfunctions open_species_list_html, prt_species_row and close_species_list_html
% expects to find ../entries/ with all entries given by DEBtool_M/taxa/select
% each row in the table has a name

entries = select('Animalia');
n = length(entries);

fid_Spec = open_species_list_html; % open up species_list.html for writing and delete the old file

WD = pwd; % store current path
cd('../entries/Homo_sapiens') % goto random entry to prepare for hopping

for i = 1:n
  %fprintf('%g/ %g : %s \n',i,n, entries{i}) 
  cd(['../',entries{i}]) % goto entries 
  load(['results_',entries{i},'.mat']) % load results_my_pet.mat 
  prt_species_row(metaData, metaPar, fid_Spec)
end

close_species_list_html(fid_Spec); % close species_list.html
cd(WD) % return to current dir

end

%% subfunction open_species_list_html 
% opens up species_list.html for reading and writing
 
function fid_Spec = open_species_list_html
% created by Bas Kooijman; modified 2015/04/14 Starrlight, 2016/11/03 Bas Kooijman

% Syntax
% fid_Spec = <../open_species_list_html.m *open_species_list_html*> 

% Description
%
% Output:
% 
% * fid_Spec: scalar

% Remarks
% This deletes the existing species_list.html

% Example of use
% fid_Spec = open_species_list_html

% if exist('n_spec','var')==0
%   n_spec = 1;  % initiate species numbers

fid_Spec = fopen('../species_list.html', 'w+'); % open file for writing, delete existing content
  
% make the header for species_list.html :
fprintf(fid_Spec, '<!DOCTYPE html>\n');
fprintf(fid_Spec, '<HTML>\n');
fprintf(fid_Spec, '<HEAD>\n');
fprintf(fid_Spec, '  <TITLE>Species List</TITLE>\n');
fprintf(fid_Spec, '  <link rel="stylesheet" type="text/css" href="sys/style.css"> \n');
fprintf(fid_Spec, '  <script src="sys/dropdown.js"></script>\n');
fprintf(fid_Spec, '  <script src="sys/w3data.js"></script>\n');
fprintf(fid_Spec, '</HEAD>\n\n');
fprintf(fid_Spec, '<BODY>\n\n');

fprintf(fid_Spec, '<div w3-include-html="sys/wallpaper_amp.html"></div>\n');
fprintf(fid_Spec, '<script>w3IncludeHTML();</script>\n\n');

fprintf(fid_Spec, '<div w3-include-html="sys/toolbar_list.html"></div>\n');
fprintf(fid_Spec, '<script>w3IncludeHTML();</script>\n\n');
	
fprintf(fid_Spec, '<div id = "main">\n');
fprintf(fid_Spec, '  <div id = "main-wrapper-species">    \n');
fprintf(fid_Spec, '    <div id="contentFull">\n\n');
fprintf(fid_Spec, '      <H2>Species list: taxonomic view</H2>\n\n');
fprintf(fid_Spec, '      <TABLE>\n');
fprintf(fid_Spec, '        <TR HEIGHT=60 BGCOLOR = "#FFE7C6">\n');
fprintf(fid_Spec, '          <TH><a class="link" href="#" onclick="BoxArt_phylum();">phylum</a></TH>\n');
fprintf(fid_Spec, '          <TH>class</TH> <TH>order</TH> <TH>family</TH> <TH>species</TH> <TH>common name</TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFC6A5"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Typified_models">&nbsp; type &nbsp;</a></TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFE7C6"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction#Goodness_of_fit_criterion" >&nbsp; MRE &nbsp;</a></TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFCE9C"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Completeness" >&nbsp; complete &nbsp;</a></TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFFFC6"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Data_types" >&nbsp; data &nbsp;</a></TH>\n');
fprintf(fid_Spec, '        </TR>\n\n');

end

%% subfunction prt_species_row
% places a line in species_list.html which has previously been opened for reading and writing

function prt_species_row(metaData, metaPar, fid_Spec)
% created by Bas Kooijman; modified 2015/04/14 Starrlight Augustine & Goncalo Marques; 
%   modified 2015/07/21 Starrlight Augustine; 2015/08/28 Starrlight Augustine; 2016/11/05 Bas Kooijman

% Syntax
% <../prt_species_row.m *prt_species_row*> (metaData, metaPar, fidSpec) 

% Description
% Print the line in ../species.html for a pet
%
% Input:
%
% * metaData: structure 
% * metaPar: structure
% * fidSpec: scalar

v2struct(metaData); v2struct(metaPar);

% Remove underscores 
% Puts first letter of english name in capital:
speciesprintnm = strrep(metaData.species, '_', ' ');
speciesprintnm_en = strrep(metaData.species_en, '_', ' ');
if speciesprintnm_en(1)>='a' && speciesprintnm_en(1)<='z'
  speciesprintnm_en(1)=char(speciesprintnm_en(1)-32);
end

n_data_0 = length(data_0); n_data_1 = length(data_1); 
  

  fprintf(fid_Spec,['        <TR id = "', species, '">\n']);
  fprintf(fid_Spec,['          <TD>', phylum, '</TD>  <TD>', metaData.class, '</TD> <TD>', order, '</TD> <TD>', family, '</TD>\n']);
  fprintf(fid_Spec,['          <TD><A TARGET="_top" HREF="entries_web/results_', species, '.html">', speciesprintnm, '</A></TD> <TD>', speciesprintnm_en, '</TD>\n']);
  fprintf(fid_Spec, '          <TD style="text-align:center"  BGCOLOR = "#FFC6A5">%s</TD>\n', model);
  fprintf(fid_Spec, '          <TD style="text-align:center"  BGCOLOR = "#FFE7C6">%8.3f</TD>\n', MRE);
  fprintf(fid_Spec, '          <TD style="text-align:center"  BGCOLOR = "#FFCE9C">%g</TD>\n', COMPLETE);
  for i = 1:n_data_0
    fprintf(fid_Spec, '          <TD BGCOLOR = "#FFFFC6">%s</TD>\n', data_0{i});      
  end
  for i = 1:n_data_1
    fprintf(fid_Spec, '          <TD BGCOLOR = "#FFFF9C">%s</TD>\n', data_1{i});  
  end
  fprintf(fid_Spec, '        </TR>\n\n');
  
end

%% subfunction close_species_html(fid_Spec)
% closes species_list.html

function close_species_list_html(fid_Spec)
% created by Bas Kooijman; modified 2015/08/28 Starrlight Augustine, 2016/11/03 Bas Kooijman

% Syntax
% <../close_species_list_html.m *close_species_list_html*> (fid_Spec) 

% Description
% Run this after print_species_list_html.m
%
% Input:
%
% * fidSpec : scalar

fprintf(fid_Spec, '      </table>\n\n');
fprintf(fid_Spec, '    </div> <!-- end of content -->\n\n');

fprintf(fid_Spec, '    <div w3-include-html="sys/footer_amp.html"></div>\n');
fprintf(fid_Spec, '    <script>w3IncludeHTML();</script>\n\n');

fprintf(fid_Spec, '  </div> <!-- main wrapper -->\n');
fprintf(fid_Spec, '</div> <!-- main -->\n');

fprintf(fid_Spec, '</BODY>\n');
fprintf(fid_Spec, '</HTML>\n');
fclose(fid_Spec);

end