%% run_collection_intro
% runs functions for collection overhead

%% before running this script
% make sure that AmPtool/taxa/ is updated
% make sure that ../../img/tree is updated
% make sure that AmPtool/curation/get_link is updated
% run write_allStat
% run_collection(taxa-names) to generate files in entries_zip and entries_web

prt_species_names
prt_species_list
prt_species_tree_taxa_js
prt_authors
prt_pars
prt_patterns
prt_pie_SGGJR
prt_about

%% cp files to server after running this script

% ../about.html
% ../authors.html
% ../pars.html
% ../pie_*.html
% ../species_list.html 
% ../species_names.html 

% ../sys/species_tree_*.js

% ../img/about/*.png 
% ../img/pars/*.png
% ../img/patterns/*.png
% ../img/tree/*.jpg and *.jpg.txt

% ../entries_web/*
% ../entries_zip/*
