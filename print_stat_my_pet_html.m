%% print_stat_my_pet_html
% Creates my_pet_stat.html 

%%
function print_stat_my_pet_html(metaData, metaPar, par)
% created 2016/03/30 by Starrlight

%% Syntax
% <../print_stat_my_pet_html.m *print_stat_my_pet_html*> (metaData, metaPar, par) 

%% Description
% Read and writes my_pet_stat.html. This pages contains a list of implied model
% properties of my_pet.
%
% Input:
%
% * metaData: structure
% * metaPar: structure
% * par: structure

%% Example of use
% load('results_my_pet.mat');
% print_stat_my_pet_html(metaData, metaPar, par)

oid = fopen([metaData.species,'_stat', '.html'], 'w+'); % % open file for writing, delete existing content
fprintf(oid, '%s\n' ,'<!DOCTYPE html>');
fprintf(oid, '%s\n' ,'<HTML>');
fprintf(oid, '%s\n' ,'  <HEAD>');
fprintf(oid,['    <TITLE>add-my-pet:', metaData.species, 'properties</TITLE>\n']);
fprintf(oid, '%s'   ,'    <META NAME = "keywords" ');
fprintf(oid, '%s\n' ,'     CONTENT="add-my-pet, Dynamic Energy Budget theory, DEBtool">');
  
% ------ calls the cascading style sheet (found in subfolder css):
fprintf(oid, '%s\n' ,'<link rel="stylesheet" type="text/css" href="../css/collectionstyle.css">'); 
 
fprintf(oid, '%s\n' , ' </HEAD>');
fprintf(oid, '%s\n\n','  <BODY>');
  
% print out text before the tables
fprintf(oid, '<H2>Implied properties for this entry</H2>');
fprintf(oid, ['<H2>Model: <a class="link" target = "_blank" href="http://www.debtheory.org/wiki/index.php?title=Typified_models" >&nbsp;', metaPar.model,' &nbsp;</a></H2>']);

f = 1; % ad libitum feeding
[stat, txtStat] = statistics_st(metaPar.model, par, metaData.T_typical, f); 
flds = fieldnmnst_st(stat); % fieldnames of all statistics
[webStatFields, webColStat] = get_statfields(metaPar.model); % which statistics in what order should be printed in the table
    
% print the table with the properties :    
fprintf(oid, '    <TABLE id = "t01">\n');
fprintf(oid, '    <TR BGCOLOR = "#FFE7C6"><TH colspan="4">Implied properties at typical temperature (%g deg. C)</TH></TR>\n', K2C(metaData.T_typical));
fprintf(oid, '    <TR BGCOLOR = "#FFE7C6"><TH>symbol</TH><TH> value</TH><TH> units</TH><TH> description</TH></TR>\n');
  for i = 1:length(webStatFields)
    fprintf(oid, '    <TR BGCOLOR = "%s"> <TD>%s</TD> <TD>%g</TD> <TD>%s</TD><TD>%s</TD></TR>\n',...
          webColStat.(webStatFields{i}), webStatFields{i}, stat.(webStatFields{i}), ...
       txtStat.units.(webStatFields{i}), txtStat.label.(webStatFields{i}));
  end
fprintf(oid, '    </TABLE>\n'); 
% end
  
fprintf(oid, '  </BODY>\n');
fprintf(oid, '  </HTML>\n');
fclose(oid);





