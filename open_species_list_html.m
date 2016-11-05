%% open_species_list_html
% opens up species_list.html for reading and writing

%% 
function fid_Spec = open_species_list_html
% originally created by Bas Kooijman; modified 2015/04/14 Starrlight, 2016/11/03 Bas Kiijman

%% Syntax
% fid_Spec = <../open_species_list_html.m *open_species_list_html*> 

%% Description
%
% Output:
% 
% * fid_Spec: scalar

%% Remarks
% This deletes the existing species_list.html

%% Example of use
% fid_Spec = open_species_list_html

% if exist('n_spec','var')==0
%   n_spec = 1;  % initiate species numbers

fid_Spec = fopen('species_list.html', 'w+'); % open file for writing, delete existing content
  
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
fprintf(fid_Spec, '    <div id="contentFull">\n');
fprintf(fid_Spec, '      <TABLE>\n');
fprintf(fid_Spec, '        <TR HEIGHT=60 BGCOLOR = "#FFE7C6">\n');
fprintf(fid_Spec, '          <TH><a class="link" href="#" onclick="BoxArt_phylum();">phylum</a></TH>\n');
fprintf(fid_Spec, '          <TH>class</TH> <TH>order</TH> <TH>family</TH> <TH>species</TH> <TH>common name</TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFC6A5"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Typified_models">&nbsp; type &nbsp;</a></TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFE7C6"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction#Goodness_of_fit_criterion" >&nbsp; MRE &nbsp;</a></TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFCE9C"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Completeness" >&nbsp; complete &nbsp;</a></TH>\n');
fprintf(fid_Spec, '          <TH BGCOLOR = "#FFFFC6"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Data_types" >&nbsp; data &nbsp;</a></TH>\n');
fprintf(fid_Spec, '        </TR>\n\n');
