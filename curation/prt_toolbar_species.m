%% prt_toolbar_species
% prints the menu bar which is used for the pages which are specific for a
% given species

%%
function  prt_toolbar_species(oid, species, date_acc)
% created 2016/11/02 by Starrlight; modified 2017/09/29, 2017/10/13 2017/10/26 Bas Kooijman 

%% Syntax
% <../prt_toolbar_species.m *prt_toolbar_species*> (oid, species, date_acc)

%% Description
% Prints the menu bar to a given html file
%
% Input:
%
% * oid: string, id of file that the function writes to
% * species: string, name of the species (Genus_species)
% * date_acc: 3-vector with date of acceptance (from metaData.date_acc)

%% Remarks
% Indent of 4 spaces used for printing to html page
% Edit drowdown.js for adding dropdwn's

%% Example of use
% prt_menuBar_species(oid, metaData.species)

fprintf(oid, '    <div class = "dropdown"><button onclick="species()" class="dropbtn">Results</button>\n');
fprintf(oid, '      <div id="speciesDropdown" class="dropdown-content">\n');
fprintf(oid,['        <a href="', species, '_par.html">Parameters</a>\n']);
fprintf(oid,['        <a href="', species, '_stat.html">Implied properties</a>\n']);    
fprintf(oid,['        <a href="', species, '_res.html">Predictions & Data</a>\n']);
fprintf(oid,['        <a href="', species,'_bib.bib">Bibliography</a>\n']);
fprintf(oid, '      </div>\n');
fprintf(oid, '    </div>\n\n');

zip = get_zip(species); n_zip = size(zip, 1); % see if there are any obsolete zip's in the archive
fprintf(oid, '    <div class = "dropdown"><button onclick="code()" class="dropbtn">Code</button>\n');
fprintf(oid, '      <div id="codeDropdown" class="dropdown-content">\n');
fprintf(oid,['        <a href="../../entries/',species,'/mydata_',species,'.m" target="_blank">mydata</a>\n']);
fprintf(oid,['        <a href="../../entries/',species,'/pars_init_',species,'.m" target="_blank">pars_init</a>\n']);
fprintf(oid,['        <a href="../../entries/',species,'/predict_',species,'.m" target="_blank">predict</a>\n']);
fprintf(oid,['        <a HREF="../../entries_zip/',species,'_', datestr(datenum(date_acc), 'yyyymmdd'), '.zip" TARGET="_top" onMouseOver="window.status=Close submenu; return true;">\n']);
fprintf(oid,['          <IMG SRC="../../img/zipicon.png" WIDTH="30px"  BORDER="0" >', datestr(datenum(date_acc), 'yyyymmdd'), '</a>\n']);
for i = 1:n_zip % work from bottom to top to get oldest zip's on bottom
fprintf(oid,['        <a HREF="../../entries_archive/', zip{n_zip-i+1,1}, '" TARGET="_top" onMouseOver="window.status=Close submenu; return true;">\n']);
fprintf(oid,['          <IMG SRC="../../img/zipicon.png" WIDTH="30px"  BORDER="0" >', zip{n_zip-i+1,2}, '</a>\n']);
end
fprintf(oid, '      </div>\n');
fprintf(oid, '    </div>\n\n');

links = get_link(species); n_link = size(links,1);
fprintf(oid, '    <div class = "dropdown"><button onclick="link()" class="dropbtn">Links</button>\n');
fprintf(oid, '      <div id="linkDropdown" class="dropdown-content">\n');
for i = 1:n_link
fprintf(oid,['        <a href="', links{i,1}, '" target="_blank">', links{i,2}, '</a>\n']);
end
fprintf(oid, '      </div>\n');
fprintf(oid, '    </div>\n\n');

end
