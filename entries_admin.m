%% entries_admin
% Contains functions for analysis of patterns in (functions of) parameter values and maintenance of the AmP collection

%% Organisation of the AmP collection
% Entries are organised according to the taxonomic position of the taxa that they represent. 
% This position is determined in lists-of-lists. A list is a simple text-file in subdir taxa. 
% Several functions link these lists into a tree. 
% The tree has a root, called <../taxa/Animalia.txt *Animalia*>, nodes and leaves, namely the entries. 
% Each node once occurs in a list and once as name of a list; the root only occurs once as a name of a list. 
% All entry names have an underscore in their name, while no node has an underscore.
% The last node, or list if you wish, that contains leaves is a genus, which is part of the name of the entries it contains. 
% The web-pages <http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/species_list.html *species-list*> and <http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/species_tree_Animalia.html *species-tree*> on the AmP website are composed from this tree.
% Changes in the sequence of entries on these pages can only be done by editing lists.
%
% The tree can be read in the direction from leaves to root with the function <../taxa/html/lineage.html *lineage*>,
% and in the direction from root to leaves with the function <../taxa/html/pedigree.html *pedigree*>. 
% The default input in pedigree is the root, but can also be any node.
% The string produced by pedigree can directly be printed to the screen, which is useful for small trees, 
% but also in an interactive html-file with <../taxa/html/treeview_taxa.html *treeview_taxa*>.
%
% Selection of entries is done with the functions <../taxa/html/select.html *select*> and <../taxa/html/select_01.html *select_01*>.
% Function <../taxa/html/clade.html *clade*> finds the lowest taxon that contains a set of specified taxa, and all its memebers.
%
% All data from all entries are collected by function <../html/write_allStat.html *write_allStat*> into a structure allStat.mat.
% Only curators that have all entries locally can run this function.
% All rates are given at temperature T_typical, which is entry-specific;
% use temperature coorection factor c_T to convert to other temperatures.
% All functions that analyse data read in allStat.mat, using function <../html/read_allStat.html *read_allStat*>.

%% Analysis of data
% The analysis is via plot function <../html/shstat.html *shstat*>, which has inputs data and legends (and optional further inputs).
% A legend is a (n,2)-array of cells specifiying markers and taxa (marker legend), or lines and taxa (line legend, called llegend).
% Several legends are availeble in subdir taxa as input-free function that output a cell-array, such as <../taxa/html/legend_RSED.html *legend_RSED*> and <../taxa/html/legend_fish.html *legend_fish*>.
% Other legends can be composed by DEBtool_M functions <http://www.bio.vu.nl/thb/deb/deblab/debtool/DEBtool_M/lib/misc/html/select_legend.html *select_legend*> and 
% <http://www.bio.vu.nl/thb/deb/deblab/debtool/DEBtool_M/lib/misc/html/select_llegend.html *select_llegend*>.
% Legends can be shown in a figure with DEBtool_M functions <http://www.bio.vu.nl/thb/deb/deblab/debtool/DEBtool_M/lib/misc/html/shlegend.html *shlegend*> and 
% <http://www.bio.vu.nl/thb/deb/deblab/debtool/DEBtool_M/lib/misc/html/shllegend.html *shllegend*>.
% Please notice that the sequence of rows of marker legends matters.
%
% Function <../html/shstat.html *shstat*> can be used in symbolic as well as numerical mode, and for 1-, 2- and 3-dimensional data.
% Markers in 2-dim plots can be clicked to show the name of the corresponding entries.
% The scipt <../mydata_shstat.m *mydata_shstat*> gives examples of use of shstat.