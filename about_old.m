%% about
% generates html, png

%%
function about
%% created 2016/02/23 by Bas Kooijman; modified 2016/04/26

%% Syntax
% <../about *about*>

%% Description
% Runs plotting routines, creates png-files and link them in an html-file
%
% Output: 
%
%  * files are written in ../img: 
%
%      - entries.png, 
%      - pie_Animal.png
%      - pie_model.png  
%      - COMPLETE.png
%      - MRE.png
%      - COMPLETE_MRE.png
%      - Fm.png
%      - kapX.png
%      - pAm.png
%      - v.png
%      - kap.png
%      - pM.png
%      - EG.png
%      - kJ.png
%      - EHb.png
%      - EBp.png
%      - ha.png
%      - sG.png
%
% * file is written in entries_admin: about.html 

%% Remarks
% Copy png files to 
%   /home/websites/www.bio.vu.nl/webroot/thb/deb/deblab/add_my_pet/img
% and about.html file to
%   /home/websites/www.bio.vu.nl/webroot/thb/deb/deblab/add_my_pet
% to present them on the web.

% fileid = fopen('img/update.txt', 'w');
% fprintf(fileid, datestr(date,26)); 
% fclose(fileid);

close all
clear all

write_allStat; % update Statistics structure allStat.mat

pie_Animalia;tightfig;
saveas (gca, '../img/pie_Animalia.png')
close all

pie_model;tightfig;
saveas (gca, '../img/pie_model.png')
close all

% # of entries in time
[dates entries_new dates_new] = get_date_subm;
surv_dates = surv(dates, 2006); 
surv_dates([1; end - 1; end],:) = [];    
n = size(surv_dates, 1)/2;
    
plot(surv_dates(:,1), n * (1 - surv_dates(:,2)), 'b', 'Linewidth', 3)
set(gca, 'FontSize', 20, 'FontWeight', 'bold', 'Box', 'on')
xlabel('time, yr')
ylabel('# of add\_my\_pet entries')
xlim([2005; max(dates)])
saveas (gca,'../img/entries.png')
close all

% COMPLETE, MRE plots
CM = read_allStat('COMPLETE', 'MRE'); n_entries = size(CM,1);
C_median = median(CM(:,1)); M_median = median(CM(:,2));
plot(CM(:,1), CM(:,2), '.b', 'MarkerSize', 20)
set(gca, 'FontSize', 20, 'FontWeight', 'bold', 'Box', 'on')
xlabel('COMPLETE')
ylabel('MRE')
saveas (gca,'../img/COMPLETE_MRE.png')
close all

surv_COMPLETE = surv(CM(:,1),0);
plot([0; C_median; C_median], [0.5;0.5;0], 'r', surv_COMPLETE(:,1), surv_COMPLETE(:,2), 'b', 'Linewidth', 3)
set(gca, 'FontSize', 20, 'FontWeight', 'bold', 'Box', 'on')
xlabel('COMPLETE')
ylabel('survivor function')
saveas (gca,'../img/COMPLETE.png')
close all

surv_MRE = surv(CM(:,2),0);
plot([0; M_median; M_median], [0.5;0.5;0], 'r', surv_MRE(:,1), surv_MRE(:,2), 'b', 'Linewidth', 3)
set(gca, 'FontSize', 20, 'FontWeight', 'bold', 'Box', 'on')
xlabel('Mean Relative Error')
ylabel('survivor function')
saveas (gca,'../img/MRE.png')
close all

shprimpar % primary parameters

% Write about.html
path = 'HREF = http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_'; % path to entries
fid_about = fopen('about.html', 'w+'); % open file for writing, delete existing content
fprintf(fid_about, '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">\n\n');
fprintf(fid_about, '<HTML>\n');
fprintf(fid_about, '<HEAD>\n\n');
fprintf(fid_about, '  <TITLE>\n');
fprintf(fid_about, '    About Add-my-pet\n');
fprintf(fid_about, '  </TITLE>\n');
fprintf(fid_about, '  <link rel="stylesheet" type="text/css" href="css/manualstyle.css"> \n');
fprintf(fid_about, '</HEAD>\n\n');
fprintf(fid_about, '<BODY>\n');
fprintf(fid_about, '  <H2 ALIGN = "left">Entries in time</H2>\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '    <IMG SRC="img/entries.png" WIDTH=300px>\n');
fprintf(fid_about, '    <div class = "caption">  \n');
fprintf(fid_about, '      The add-my-pet collection started at 2009/02/12 as part of the\n');
fprintf(fid_about, '      <A HREF ="http://www.bio.vu.nl/thb/deb/course/" target="_blank"> DEB tele course 2009</A>.\n');
fprintf(fid_about, ['      The collection has ', num2str(n_entries), ' entries at ', datestr(date,26), '\n']);
fprintf(fid_about, '    </div>\n');
fprintf(fid_about, '  </div>\n\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '    <TABLE id="t01" style="clear:left">\n');
fprintf(fid_about, '      <TR >\n');
fprintf(fid_about, '        <TH colspan="2" WIDTH=300>Latest additions to the collection</TH>\n');
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{1}, '.html TARGET="_top"><I>', entries_new{1}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(1,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{2}, '.html TARGET="_top"><I>', entries_new{2}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(2,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{3}, '.html TARGET="_top"><I>', entries_new{3}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(3,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{4}, '.html TARGET="_top"><I>', entries_new{4}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(4,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{5}, '.html TARGET="_top"><I>', entries_new{5}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(5,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '    </TABLE>\n');
fprintf(fid_about, '  </div>\n\n');
fprintf(fid_about, '  <H2 style="clear:left">Data completeness and mean relative errors</H2>\n\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '     <IMG SRC="img/COMPLETE.png" WIDTH=300px>\n');
fprintf(fid_about, '     <div class = "caption"> \n');
fprintf(fid_about, '       Survivor function of data completeness. \n');
fprintf(fid_about, '     </div>\n');
fprintf(fid_about, '     <a href="http://www.debtheory.org/wiki/index.php?title=Completeness" TARGET="_top"> \n');
fprintf(fid_about, '     Goto the definition of completeness</a>\n');
fprintf(fid_about, '  </div>\n\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '    <IMG SRC="img/MRE.png" WIDTH=300px>\n');
fprintf(fid_about, '    <div class = "caption">\n');
fprintf(fid_about, '      Survivor function of the mean relative error.\n');
fprintf(fid_about, '    </div>\n');
fprintf(fid_about, '    <a href="http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction#Data_quality_and_availability" TARGET="_top"> \n');
fprintf(fid_about, '    Goto the definition of mean relative error.</a>\n');
fprintf(fid_about, '  </div>\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '    <IMG SRC="img/COMPLETE_MRE.png" WIDTH=300px>\n');
fprintf(fid_about, '    <div class = "caption">\n');
fprintf(fid_about, '      The relationship between the mean relative error and data completeness. \n');
fprintf(fid_about, '    </div>\n');
fprintf(fid_about, '  </div>\n');
fprintf(fid_about, '  <H2 style="clear:left">Overview of the collection</H2>\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '    <IMG SRC="img/pie_Animalia.png" WIDTH=550px>\n');
fprintf(fid_about, '    <div style="margin-top:-75px; margin-bottom:50px">\n');
fprintf(fid_about, '      The collection is complete \n');
fprintf(fid_about, '        for large phyla (perhaps excluding the sponges) and \n');
fprintf(fid_about, '        for chordate orders (excluding some deepwater rayfinned fish and marsupial moles) and \n');
fprintf(fid_about, '        for primate families.\n');
fprintf(fid_about, '      <a href="http://www.bio.vu.nl/thb/deb/deblab/debtool/DEBtool_M/taxa/treeview_taxa.html" TARGET="_top"> Goto the treeview of the collection</a>\n');
fprintf(fid_about, '    </div>\n');
fprintf(fid_about, '  </div>\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '    <IMG SRC="img/pie_model.png" WIDTH=550px>\n');
fprintf(fid_about, '    <div style="margin-top:-75px; margin-bottom:50px">\n');
fprintf(fid_about, '      A variety of related models captures animal life-cycle diversity.\n');
fprintf(fid_about, '      <a href="http://www.debtheory.org/wiki/index.php?title=Typified_models" TARGET="_top">\n');
fprintf(fid_about, '      Goto the description of the various models</a>\n');
fprintf(fid_about, '    </div>\n');
fprintf(fid_about, '  </div>\n\n');
fprintf(fid_about, '  <H2 style="clear:left">Background documentation</H2>\n\n');
fprintf(fid_about, '  <div class="clear">\n');
fprintf(fid_about, '    <a href="http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction#Add-my-pet_papers" TARGET="_top">\n');
fprintf(fid_about, '    An increasing number of papers has been published on the add-my-pet collection, \n');
fprintf(fid_about, '    both on the methodology and ecological and evolutionary patterns in parameter values among species.</a>\n\n');
fprintf(fid_about, '    <p>\n'); 
fprintf(fid_about, '    <a href="http://www.bio.vu.nl/thb/deb/DEB_papers.pdf" TARGET="_top">\n');
fprintf(fid_about, '    Many papers have been written on specific entries, which have been cited at entry-pages.</a>\n');
fprintf(fid_about, '  </div>\n');
fprintf(fid_about, '  <div class="footer">\n');
fprintf(fid_about, '    <HR>\n');
fprintf(fid_about, '    <p>\n');
fprintf(fid_about, '    Go to the <A HREF="http://www.debtheory.org" TARGET="_top"> DEB portal</A>\n');
fprintf(fid_about, '  </div>\n');
fprintf(fid_about, '</BODY>\n');
fprintf(fid_about, '</HTML>\n');
fclose(fid_about);









