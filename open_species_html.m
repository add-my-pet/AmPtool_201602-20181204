%% open_species_html
% opens up species_list.html for reading and writing

%% 
function fid_Spec = open_species_html
% originally created by Bas Kooiman; modified 2015/04/14 Starrlight

%% Syntax
% fid_Spec = <../open_species_html.m *open_species_html*> 

%% Description
%
% Output:
% 
% * fid_Spec: scalar

%% Remarks
% This deletes the existing species.html

%% Example of use
% fid_Spec = open_species_html




% if exist('n_spec','var')==0
%   n_spec = 1;  % initiate species numbers

fid_Spec = fopen('species_list.html', 'w+'); % open file for writing, delete existing content
  

% make the header for species_list.html :
fprintf(fid_Spec, '<!DOCTYPE html>\n');
fprintf(fid_Spec, '<HTML>\n');
fprintf(fid_Spec, '<HEAD>\n');
fprintf(fid_Spec, '<TITLE>Species List</TITLE>\n');
fprintf(fid_Spec, '<link rel="stylesheet" type="text/css" href="sys/style.css"> \n');
fprintf(fid_Spec, '<script src="sys/dropdown.js"></script>\n');
fprintf(fid_Spec, '</HEAD>\n');
fprintf(fid_Spec, '<BODY>\n');
fprintf(fid_Spec, '<!-- image with stays fixed in the background  -->\n');
fprintf(fid_Spec, '<div id="h1_container">\n');
fprintf(fid_Spec, '<h1>\n');
fprintf(fid_Spec, '<!--  Add-my-pet -->\n');
fprintf(fid_Spec, '<img alt="add-my-pet" src = "img/addmypet.png"  width = "400px"> \n'); 
fprintf(fid_Spec, '</h1>\n');
fprintf(fid_Spec, '</div>\n');
fprintf(fid_Spec, '<!-- image with stays fixed in the background  -->\n');
fprintf(fid_Spec, '<div id="h2_container">\n');
fprintf(fid_Spec, '<h1>\n');
fprintf(fid_Spec, '<img alt="add-my-pet" src = "img/bannercycle.png"  > \n');
fprintf(fid_Spec, '</h1>\n');
fprintf(fid_Spec, '</div>\n');
fprintf(fid_Spec, '<!--------------------------------------------------------------->\n');
fprintf(fid_Spec, '<!--   PART 1                                                  -->\n');
fprintf(fid_Spec, '<!--   TOP PART OF WEBPAGE IS FIXED                            -->\n');
fprintf(fid_Spec, '<!--   It has the logo and the menu with Javascript            -->\n');
fprintf(fid_Spec, '<!--  dropdown menus                                           -->\n');
fprintf(fid_Spec, '<!--  Please put in bold and in fancy the right links          -->\n');
fprintf(fid_Spec, '<!--------------------------------------------------------------->\n');
fprintf(fid_Spec, '	<div id="top"> \n');
fprintf(fid_Spec, '		<div class="logo">		\n');
fprintf(fid_Spec, '		   <a href="http://www.bio.vu.nl/thb/deb/deblab/"><img src="img/bannercycle.png"  height = "60px"></a>\n');
fprintf(fid_Spec, '		</div>\n');
fprintf(fid_Spec, '		<div id="navwrapper">\n');
fprintf(fid_Spec, '			<div class = "dropdown"><button onclick="context()" class="dropbtn">CONTEXT</button>\n');
fprintf(fid_Spec, '				<div id="contextDropdown" class="dropdown-content">\n');
fprintf(fid_Spec, '					<a href="index.html" >Pet Portal</a>\n');
fprintf(fid_Spec, '					<a href="http://www.debtheory.org/" target="_blank">DEB Portal</a>\n');
fprintf(fid_Spec, '					<a href="http://www.bio.vu.nl/thb/deb/" target="_blank">DEB info</a>\n');
fprintf(fid_Spec, '					<a href="http://www.bio.vu.nl/thb/deb/deblab/" target="_blank">DEBlab</a>\n');
fprintf(fid_Spec, '				</div>\n');
fprintf(fid_Spec, '			</div>	\n');
fprintf(fid_Spec, '			<div class = "dropdown"><button onclick="collection()" class="dropbtn"><b>COLLECTION</b></button> <!--   notice that collection should be bold because we are in species  -->\n');
fprintf(fid_Spec, '				<div id="collectionDropdown" class="dropdown-content">\n');
fprintf(fid_Spec, '					<a class = "menu" href="species_list.html">Species List</a> <!--   notice that class should be "menu" because we are in species  -->\n');
fprintf(fid_Spec, '					<a href="species_tree.html">Species Tree</a>\n');
fprintf(fid_Spec, '					<a href="about.html">About</a>\n');
fprintf(fid_Spec, '				</div>\n');
fprintf(fid_Spec, '			</div>	\n');
fprintf(fid_Spec, '			<div class = "dropdown"><button onclick= "window.open(''http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction'',''_blank'')" class="dropbtn"> WIKI</a></button>\n');
fprintf(fid_Spec, '			</div>	\n');
fprintf(fid_Spec, '		</div>\n');
fprintf(fid_Spec, '	</div>\n');
	
fprintf(fid_Spec, '	<div id = "main">\n');
fprintf(fid_Spec, '		<div id = "main-wrapper-species">    \n');
fprintf(fid_Spec, '			<div id="contentFull">\n');
fprintf(fid_Spec, '			<H1 id = "portaltop">Species List</H1>	\n');	
fprintf(fid_Spec, '			<BR>\n');
fprintf(fid_Spec, '			<TABLE>\n');
fprintf(fid_Spec, '			<TR HEIGHT=60 BGCOLOR = "#FFE7C6">\n');
fprintf(fid_Spec, '			<TH><a class="link" href="#" onclick="BoxArt_phylum();">phylum</a></TH>\n');
fprintf(fid_Spec, '			<TH>class</TH> <TH>order</TH> <TH>family</TH>\n');
fprintf(fid_Spec, '			<TH>species</TH> <TH>common name</TH>\n');
fprintf(fid_Spec, '			<TH BGCOLOR = "#FFC6A5"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Typified_models">&nbsp; type &nbsp;</a></TH>\n');
fprintf(fid_Spec, '			<TH BGCOLOR = "#FFE7C6"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction#Goodness_of_fit_criterion" >&nbsp; MRE &nbsp;</a></TH>\n');
fprintf(fid_Spec, '			<TH BGCOLOR = "#FFCE9C"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Completeness" >&nbsp; complete &nbsp;</a></TH>\n');
fprintf(fid_Spec, '			<TH BGCOLOR = "#FFFFC6"><a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Data_types" >&nbsp; data &nbsp;</a></TH>\n');
fprintf(fid_Spec, '			</TR>\n');

