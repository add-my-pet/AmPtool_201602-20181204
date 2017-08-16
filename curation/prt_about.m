%% prt_about
% generates ../about.html, ../img/png's

%%
function prt_about
%% created 2016/02/23 by Bas Kooijman; modified 2016/04/26, 2016/06/02, 2016/10/24

%% Syntax
% <../prt_about *prt_about*>

%% Description
% Runs plotting routines, creates png-files and link them in an html-file
%
% Output: 
%
%  * files are written in ../img/about: 
%
%      - entries.png, 
%      - pie_Animal.png
%      - pie_model.png  
%      - COMPLETE.png
%      - MRE.png
%      - COMPLETE_MRE.png
%      - MRE_SMSE.png
%
% * file is written in ../about.html 

%% Remarks
% First run write_allStat
% Copy png files to 
%   /home/websites/www.bio.vu.nl/webroot/thb/deb/deblab/add_my_pet/img
% and about.html file to
%   /home/websites/www.bio.vu.nl/webroot/thb/deb/deblab/add_my_pet
% to present them on the web.
% Don't forget to refresh species_tree_js with prt_species_tree_js.m

close all
clear all

% write_allStat; % update Staristics structure allStat.mat

pie_Animalia;
tightfig;
saveas (gca, '../../img/about/pie_Animalia.png')
close all

pie_model;
tightfig;
saveas (gca, '../../img/about/pie_model.png')
close all

% # of entries in time
[dates entries_new dates_new] = get_date_subm;
surv_dates = surv(dates, 2006); 
surv_dates([1; end - 1; end],:) = [];    
n = size(surv_dates, 1)/2;
    
plot(surv_dates(:,1), n * (1 - surv_dates(:,2)), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('time, yr')
ylabel('# of add\_my\_pet entries')
xlim([2009; max(dates)])
saveas (gca,'../../img/about/entries.png')
close all

% COMPLETE, MRE plots
CMS = read_allStat('COMPLETE', 'MRE', 'SMSE'); n_entries = size(CMS,1);
C_median = median(CMS(:,1)); M_median = median(CMS(:,2)); S_median = median(CMS(:,3));
plot(CMS(:,1), CMS(:,2), '.b', 'MarkerSize', 20)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('COMPLETE'); ylabel('MRE')
saveas (gca,'../../img/about/COMPLETE_MRE.png')
close all

plot(CMS(:,2), CMS(:,3), '.b', 'MarkerSize', 20)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('MRE'); ylabel('SMSE')
xlim([0 0.55]); ylim([0 0.55])
saveas (gca,'../../img/about/MRE_SMSE.png')
close all

surv_COMPLETE = surv(CMS(:,1),0);
plot([0; C_median; C_median], [0.5;0.5;0], 'r', surv_COMPLETE(:,1), surv_COMPLETE(:,2), 'b', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('COMPLETE'); ylabel('survivor function')
saveas (gca,'../../img/about/COMPLETE.png')
close all

surv_MRE = surv(CMS(:,2),0);
plot([0; M_median; M_median], [0.5;0.5;0], 'b', surv_MRE(:,1), surv_MRE(:,2), 'b', 'Linewidth', 2)
surv_SMSE = surv(CMS(:,3),0); hold on
plot([0; S_median; S_median], [0.5;0.5;0], 'r', surv_SMSE(:,1), surv_SMSE(:,2), 'r', 'Linewidth', 2)
set(gca, 'FontSize', 15, 'Box', 'on')
xlabel('(Symmetic) Mean (Squared) Relative Error')
ylabel('survivor function')
xlim([0 0.55])
saveas (gca,'../../img/about/MRE.png')
close all

% Write about.html
path = 'entries_web/'; % path to entries
fid_about = fopen('../../about.html', 'w+'); % open file for writing, delete existing content

fprintf(fid_about, '<!DOCTYPE html>\n');
fprintf(fid_about, '<HTML>\n');
fprintf(fid_about, '<HEAD>\n');
fprintf(fid_about, '  <TITLE>About AmP</TITLE>\n');
fprintf(fid_about, '  <link rel="stylesheet" type="text/css" href="sys/style.css"> \n');
fprintf(fid_about, '  <script src="sys/dropdown.js"></script>\n');
fprintf(fid_about, '  <script src="sys/w3data.js"></script>\n');
fprintf(fid_about, '  <script type="text/javascript" language="javascript">\n');
fprintf(fid_about, '    function changeImage(img){\n');
fprintf(fid_about, '      document.getElementById(''daphnia'').src=img;\n');
fprintf(fid_about, '    }\n');
fprintf(fid_about, '  </script>\n');
fprintf(fid_about, '</HEAD>\n\n');
fprintf(fid_about, '<BODY>\n\n');

fprintf(fid_about, '<div w3-include-html="sys/wallpaper_amp.html"></div>\n');
fprintf(fid_about, '<div w3-include-html="sys/toolbar_amp.html"></div>\n');
fprintf(fid_about, '<script>w3IncludeHTML();</script>\n\n');

fprintf(fid_about, '<!--------------------------------------------------------------->\n');
fprintf(fid_about, '<!--   PART main                                               -->\n');
fprintf(fid_about, '<!--   Where all of the text is placed                         -->\n');
fprintf(fid_about, '<!--   use "contentFull" for 1 column                          -->\n');
fprintf(fid_about, '<!--   use "content" if you want two columns"                  -->\n');
fprintf(fid_about, '<!--------------------------------------------------------------->\n'); 
fprintf(fid_about, '<div id = "main">\n');
fprintf(fid_about, '  <div id = "main-wrapper">    \n');
fprintf(fid_about, '    <div id="content">\n');

%%
fprintf(fid_about, '    <H1 id = "portaltop">About Add-my-pet</H1>\n'); 
fprintf(fid_about, '    <H2 id = "aims">Overview of the collection</H2>\n\n');

fprintf(fid_about, '    <div class="sidelement2">\n');
fprintf(fid_about, '      <img src="img/about/pie_Animalia.png" width="350px">\n');
fprintf(fid_about, '      <div class = "caption">   \n');
fprintf(fid_about, '        The collection is complete for large <a href="phyla.html" target="_blank">phyla</a>. \n');
fprintf(fid_about, '        Chordates are complete at order level, primates at family level.\n');
fprintf(fid_about, '      </div>\n');
fprintf(fid_about, '    </div>\n\n');
fprintf(fid_about, '    <div class="sidelement2">\n');
fprintf(fid_about, '      <img src="img/about/pie_model.png" width="350px"> \n');
fprintf(fid_about, '        <div class = "caption">   \n');
fprintf(fid_about, '          A <a href="http://www.debtheory.org/wiki/index.php?title=Typified_models" TARGET="_blank">variety of related models</a> captures animal life-cycle diversity and quantifies properties in <a href="pars.html" target="_blank">parameters</a>.\n');
fprintf(fid_about, '        </div>\n');
fprintf(fid_about, '      </div>\n\n');
fprintf(fid_about, '      <H2 class="clear"> Data completeness and mean relative errors</H2>\n\n');  
fprintf(fid_about, '      <div class="sidelement2">\n');
fprintf(fid_about, '        <img src="img/about/COMPLETE.png" width="350px">\n');
fprintf(fid_about, '        <div class = "caption">   \n');
fprintf(fid_about, '          Survivor function of <a href="http://www.debtheory.org/wiki/index.php?title=Completeness" TARGET="_blank">data completness</a>.\n');
fprintf(fid_about, '        </div>\n');
fprintf(fid_about, '      </div>\n\n');
fprintf(fid_about, '      <div class="sidelement2">\n');
fprintf(fid_about, '        <img src="img/about/MRE.png" width="350px">\n' );
fprintf(fid_about, '        <div class = "caption">   \n');
fprintf(fid_about, '          Survivor functions of the <a href="http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction#Data_quality_and_availability" TARGET="_blank">Mean Relative Error (MRE) and Symmetric Mean Squared Error (SMSE)</a>.\n');
fprintf(fid_about, '        </div>\n');
fprintf(fid_about, '      </div>\n\n');
fprintf(fid_about, '      <div class="sidelement2">\n');
fprintf(fid_about, '        <img src="img/about/COMPLETE_MRE.png" width="350px">\n');
fprintf(fid_about, '        <div class = "caption">   \n');
fprintf(fid_about, '          The relationship between mean relative error and data completeness. \n');
fprintf(fid_about, '        </div>\n');
fprintf(fid_about, '      </div>\n\n');
fprintf(fid_about, '      <div class="sidelement2">\n');
fprintf(fid_about, '        <img src="img/about/MRE_SMSE.png" width="350px">\n');
fprintf(fid_about, '        <div class = "caption">   \n');
fprintf(fid_about, '          The relationship between <a href="http://www.debtheory.org/wiki/index.php?title=Symmetric_mean_squared_error" TARGET="_blanck">symmetric mean squared error (SMSE)</a> and mean relative error. \n');
fprintf(fid_about, '        </div>\n');
fprintf(fid_about, '      </div>\n\n');
        
fprintf(fid_about, '      <H2 id="disclaimer" class = "clear"> Disclaimer</H2>\n\n');    
fprintf(fid_about, '      <p>\n');
fprintf(fid_about, '      Add-my-pet is optimized for learning, training and research.\n');
fprintf(fid_about, '      Some of the text on this website might be simplified to improve reading and basic understanding.\n');
fprintf(fid_about, '      Files, references, and code are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content.\n');
fprintf(fid_about, '      <p>\n');
fprintf(fid_about, '      The entries continue to change as the collection grows for several reasons: \n');
fprintf(fid_about, '      errors are spotted and corrected; more data is included; assumptions about data quality change; entries are split up by population; \n');
fprintf(fid_about, '      our understanding of what are the best priors to use for particular taxa increases; algorithms for estimation are improved; the model changed. \n');
fprintf(fid_about, '      <p>\n');
fprintf(fid_about, '      Add-my-pet makes explicit a number of wide spread scientific problems such as: data quality, differences between experiments etc. \n');
fprintf(fid_about, '      The resulting parameter estimates depend on a lot of assumptions concerning which data we choose to include and exclude as well as how the data is interpreted\n');
fprintf(fid_about, '      (e.g. what we are willing to assume about the initial conditions of the organism.)\n\n');
fprintf(fid_about, '    <!--------------------------------------------------------------->\n');
fprintf(fid_about, '    <!--   This div closes the content box                         -->\n');
fprintf(fid_about, '    <!--   Do not delete                                           -->\n');
fprintf(fid_about, '    <!--------------------------------------------------------------->\n');
fprintf(fid_about, '    </div> <!-- end of content -->\n\n');
%%
fprintf(fid_about, '    <!--------------------------------------------------------------->\n');
fprintf(fid_about, '    <!--   EDIT the content of the second column                   -->\n');
fprintf(fid_about, '    <!--   remove if we use contentFull (see above)                -->\n');
fprintf(fid_about, '    <!--------------------------------------------------------------->\n');

fprintf(fid_about, '    <div id = "sidebar">\n\n');  
fprintf(fid_about, '      <H1 id = "portaltop"> &nbsp;</H1> <!--   This is here to make heading across both columns even  -->\n');   
fprintf(fid_about, '      <H2 class="clear"> Entries in time </H2>\n\n');

fprintf(fid_about, '      <div class="sidelement">\n');
fprintf(fid_about, '        <img src="img/about/entries.png" width="350px">\n');
fprintf(fid_about, '        <div class = "caption">   \n');
fprintf(fid_about, '          The add-my-pet collection started at 2009/02/12 as part of the \n');
fprintf(fid_about, '          <A HREF ="http://deb.akvaplan.com/teledescription.html" target="_blank">DEB tele course</A>.\n');
fprintf(fid_about,['          It has ', num2str(n_entries), ' entries at ', datestr(date,26), '\n']);
fprintf(fid_about, '        </div>\n');
fprintf(fid_about, '      </div>\n\n');
    
fprintf(fid_about, '      <!--------------------------------------------------------------->\n');
fprintf(fid_about, '      <!--  Latest entries                                           -->\n');
fprintf(fid_about, '      <!---------------------------------------------------------------> \n');
fprintf(fid_about, '      <TABLE id="t02">\n');
fprintf(fid_about, '        <TR><TH colspan="2"><b>Latest additions to the collection:</b></TH></TR>\n');
fprintf(fid_about, '        <TR>\n');
fprintf(fid_about,['          <TD WIDTH=300><a HREF = "', path, entries_new{1}, '_res.html "><I>', entries_new{1}, '</I></a></TD>\n']);
fprintf(fid_about,['          <TD WIDTH=100>', dates_new(1,:), '</TD>\n']);
fprintf(fid_about, '        </TR>\n');
fprintf(fid_about, '        <TR>\n');
fprintf(fid_about,['          <TD WIDTH=300><a HREF = "', path, entries_new{2}, '_res.html "><I>', entries_new{2}, '</I></a></TD>\n']);
fprintf(fid_about,['          <TD WIDTH=100>', dates_new(2,:), '</TD>\n']);
fprintf(fid_about, '        </TR>\n');
fprintf(fid_about, '        <TR>\n');
fprintf(fid_about,['          <TD WIDTH=300><a HREF = "', path, entries_new{3}, '_res.html"><I>', entries_new{3}, '</I></a></TD>\n']);
fprintf(fid_about,['          <TD WIDTH=100>', dates_new(3,:), '</TD>\n']);
fprintf(fid_about, '        </TR>\n');
fprintf(fid_about, '        <TR>\n');
fprintf(fid_about,['          <TD WIDTH=300><a HREF = "', path, entries_new{4}, '_res.html "><I>', entries_new{4}, '</I></a></TD>\n']);
fprintf(fid_about,['          <TD WIDTH=100>', dates_new(4,:), '</TD>\n']);
fprintf(fid_about, '        </TR>\n');
fprintf(fid_about, '        <TR>\n');
fprintf(fid_about,['          <TD WIDTH=300><a HREF = "', path, entries_new{5}, '_res.html "><I>', entries_new{5}, '</I></a></TD>\n']);
fprintf(fid_about,['          <TD WIDTH=100>', dates_new(5,:), '</TD>\n']);
fprintf(fid_about, '        </TR>\n');
fprintf(fid_about, '      </TABLE>\n\n');

fprintf(fid_about, '      <H2 class="clear"> DEB research & DEBtool</H2>\n\n');

fprintf(fid_about, '      <div>\n');
fprintf(fid_about, '        <img src="img/about/daphnia1a.gif" alt="" width="180" height="" id="daphnia" onmouseover="changeImage(''img/about/daphnia1b.gif'')"/>\n');
fprintf(fid_about, '      </div>\n');
fprintf(fid_about, '      <div class = "caption" onmouseover="changeImage(''img/about/daphnia1a.gif'')">\n');
fprintf(fid_about, '        DEB research started in the spring of 1979 \n');
fprintf(fid_about, '        with a study on how toxicants affect reproduction in the waterflea <i>Dapnia magna</i>,\n');
fprintf(fid_about, '        including the consequences at the population level.\n'); 
fprintf(fid_about, '        Software package <a href="/thb/deb/deblab/DEBtool_M/manual/" target="_top">DEBtool</a> was developed\n');
fprintf(fid_about, '        since 2000 to support applications of DEB theory, such as Add-my-Pet.\n');
fprintf(fid_about, '      </div>\n');

fprintf(fid_about, '      <H2 class="clear"> Background documentation </H2>\n\n');
    
fprintf(fid_about, '      <p>\n');
fprintf(fid_about, '      <a href="http://www.debtheory.org/wiki/index.php?title=Add-my-pet_Introduction#Add-my-pet_papers" TARGET="_blank">An increasing number of papers has been published on the add-my-pet collection, both on the methodology and ecological and evolutionary patterns in parameter values among species.</a>\n');
                
fprintf(fid_about, '      <p>\n');   
fprintf(fid_about, '      <a href="http://www.bio.vu.nl/thb/deb/DEB_papers.pdf" TARGET="_blank">Many papers have been written on specific entries</a>, which have been cited at entry-pages. \n');
fprintf(fid_about, '    </div> <!-- end of sidebar -->\n\n');

fprintf(fid_about, '    <div w3-include-html="sys/footer_amp.html"></div>\n');
fprintf(fid_about, '    <script>w3IncludeHTML();</script>\n\n');

fprintf(fid_about, '  </div> <!-- main wrapper -->\n');
fprintf(fid_about, '</div> <!-- main -->\n');
% ----------------------------------------------------------
fprintf(fid_about, '</BODY>\n');
fprintf(fid_about, '</HTML>\n');
fclose(fid_about);

