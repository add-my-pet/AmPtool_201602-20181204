%% prt_species_names
%  deletes and writes ../species_names.html 

%%
function prt_species_names
% created at 2016/12/30 by Bas Kooijman

%% Syntax
% <../prt_species_names.m *prt_species_names*>

%% Description
% deletes and writes ../species_names.html with scientific and common names on alphabeth

[nms entries] = read_allStat('species','species_en');
n = length(entries); 
[x index] = sort(nms(:,1)); nms = nms(index,:); 
snm = nms(:,1); cnm = nms(:,2); snm_prt = snm; 
for i = 1:n
  snm_prt{i} = strrep(snm{i}, '_', ' '); % replace "_" by space
  cnm_prt = cnm{i};
  if cnm_prt(1)>='a' && cnm_prt(1)<='z'  % puts first letter of common name in capital:
    cnm_prt(1) = char(cnm_prt(1) - 32);
    cnm{i} = cnm_prt;
  end
end
nms(:,2) = cnm; [cnm index] = sort(cnm);

fid_Spec = fopen('../species_names.html', 'w+'); % open file for writing, delete existing content
  
% make the header for species_list.html :
fprintf(fid_Spec, '<!DOCTYPE html>\n');
fprintf(fid_Spec, '<HTML>\n');
fprintf(fid_Spec, '<HEAD>\n');
fprintf(fid_Spec, '  <TITLE>Species Names</TITLE>\n');
fprintf(fid_Spec, '  <link rel="stylesheet" type="text/css" href="sys/style.css"> \n');
fprintf(fid_Spec, '  <script src="sys/dropdown.js"></script>\n');
fprintf(fid_Spec, '  <script src="sys/w3data.js"></script>\n');
fprintf(fid_Spec, '  <style>\n');
fprintf(fid_Spec, '    .newspaper {\n');
fprintf(fid_Spec, '      -webkit-column-count: 4; /* Chrome, Safari, Opera */\n');
fprintf(fid_Spec, '      -moz-column-count: 4; /* Firefox */\n');
fprintf(fid_Spec, '      column-count: 4;\n');
fprintf(fid_Spec, '      width: 1000px;\n');
fprintf(fid_Spec, '    }\n');
fprintf(fid_Spec, '  </style>\n');
fprintf(fid_Spec, '</HEAD>\n\n');
fprintf(fid_Spec, '<BODY>\n\n');

fprintf(fid_Spec, '<div w3-include-html="sys/wallpaper_amp.html"></div>\n');
fprintf(fid_Spec, '<div w3-include-html="sys/toolbar_amp.html"></div>\n');
fprintf(fid_Spec, '<script>w3IncludeHTML();</script>\n\n');
	
fprintf(fid_Spec, '<div id = "main">\n');
fprintf(fid_Spec, '  <div id = "main-wrapper-species">    \n');
fprintf(fid_Spec, '    <div id="contentFull">\n\n');
fprintf(fid_Spec, '      <H2 id="scientific_name"><a href="#common_name" title="Locate entries by scientific name.\n');
fprintf(fid_Spec, '        Goto entries by clicking on entry names.\n');
fprintf(fid_Spec, '        Click here for common names">Scientific names</a></H2>\n\n');
fprintf(fid_Spec, '      <div class = "newspaper">\n'); 

for i = 1:n
fprintf(fid_Spec,['        <a target="_top" href="entries_web/', snm{i}, '_res.html" title="', nms{i,2}, '">', snm_prt{i}, '</a><br>\n']);
end
fprintf(fid_Spec, '      </div>\n\n');  
fprintf(fid_Spec, '      <H2 id="common_name"><a href="#scientific_name" title="Locate entries by common name.\n');
fprintf(fid_Spec, '        Goto entries by clicking on entry names\n');
fprintf(fid_Spec, '        Click here for scientific names">Common names</a></H2>\n\n');
fprintf(fid_Spec, '      <div class = "newspaper">\n');  
for i = 1:n
fprintf(fid_Spec,['        <a target="_top" href="entries_web/', entries{index(i)}, '_res.html" title="', snm_prt{index(i)}, '">', cnm{i}, '</a><br>\n']);
end
fprintf(fid_Spec, '      </div>\n\n');  
fprintf(fid_Spec, '    </div> <!-- end of content -->\n\n');

fprintf(fid_Spec, '    <div w3-include-html="sys/footer_amp.html"></div>\n');
fprintf(fid_Spec, '    <script>w3IncludeHTML();</script>\n\n');

fprintf(fid_Spec, '  </div> <!-- main wrapper -->\n');
fprintf(fid_Spec, '</div> <!-- main -->\n');

fprintf(fid_Spec, '</BODY>\n');
fprintf(fid_Spec, '</HTML>\n');
fclose(fid_Spec);

end