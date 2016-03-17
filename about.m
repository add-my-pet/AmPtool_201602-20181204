%% about_add_my_pet
% generates html

%%
function about_add_my_pet
%% created 2016/02/23 by Bas Kooijman

%% Syntax
% CM = <../about_add_my_pet *about_add_my_pet*>

%% Description
% Runs plotting routines, creates png-files and link them in an html-file
%
%
% Output png and html files: 

fileid = fopen('img/update.txt', 'w');
fprintf(fileid, datestr(date,26)); 

pie_Animalia;
saveas (gca, 'img/pie_Animalia.png')

pie_model;
saveas (gca, 'img/pie_model.png')

[dates entries_new dates_new] = get_date_subm;
surv_dates = surv(dates, 2006); 
surv_dates([1; end - 1; end],:) = [];    
n = size(surv_dates, 1)/2;
    
plot(surv_dates(:,1), n * (1 - surv_dates(:,2)), 'g', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('time, yr')
ylabel('# of add\_my\_pet entries')
saveas (gca,'img/entries.png')

CM = complete_mre;
plot(CM(:,1), CM(:,2), '.g', 'MarkerSize', 20)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('COMPLETE')
ylabel('MRE')
saveas (gca,'img/COMPLETE_MRE.png')

surv_COMPLETE = surv(CM(:,1),0);
plot(surv_COMPLETE(:,1), surv_COMPLETE(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('COMPLETE')
saveas (gca,'img/COMPLETE.png')

surv_MRE = surv(CM(:,2),0);
plot(surv_MRE(:,1), surv_MRE(:,2), 'r', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('Mean Relative Error')
saveas (gca,'img/MRE.png')

% Write about.html
path = 'HREF = http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/'; % path to entries
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
fprintf(fid_about, '      The add-my-pet collection started at 12 Feb 2009 as part of the\n');
fprintf(fid_about, '      <A HREF ="http://www.bio.vu.nl/thb/deb/course/" target="_blank"> DEB tele course 2009</A>.\n');
fprintf(fid_about, '      The numbers of entries have been steadily increasing ever since, as can be seen on this image.\n');
fprintf(fid_about, '    </div>\n');
fprintf(fid_about, '  </div>\n\n');
fprintf(fid_about, '  <div class="about">\n');
fprintf(fid_about, '    <TABLE id="t01" style="clear:left">\n');
fprintf(fid_about, '      <TR >\n');
fprintf(fid_about, '        <TH colspan="2" WIDTH=300>Latest additions to the collection</TH>\n');
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{1}, '.html><I>', entries_new{1}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(1,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{1}, '.html><I>', entries_new{2}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(2,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{1}, '.html><I>', entries_new{3}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(3,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{1}, '.html><I>', entries_new{4}, '</I></a></TD>\n']);
fprintf(fid_about, ['        <TD WIDTH=100>', dates_new(4,:), '</TD>\n']);
fprintf(fid_about, '      </TR>\n');
fprintf(fid_about, '      <TR>\n');
fprintf(fid_about, ['       	<TD WIDTH=300><a ', path, entries_new{1}, '.html><I>', entries_new{5}, '</I></a></TD>\n']);
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
fprintf(fid_about, '  <div class="about">\n');
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









