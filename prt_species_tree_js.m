%% prt_species_tree_js
% writes prt_species_tree_js that is called by species_tree.html

%%
function prt_species_tree_js(pedigree_taxa)
% created 2016/03/06 by Bas Kooijman, 
% modified 2016/06/01 Starrlight Augustine, 2016/06/02 Bas Kooijman

%% Syntax
% <../prt_species_tree_js.m *prt_species_tree_js*> (pedigree_taxa) 

%% Description
% Clears and creates file ../sys/prt_species_tree.js and writes java code to it
%
% Input:
%
% * pedigree_taxa: optional character string with pedigree of a taxon, default: 'Animalia' 
%
% Output:
% 
% * writes file ../sys/prt_species_tree.js

%% Remarks
% file ../species_tree.html calls 
%  - java-scripts ../sys/ftiens4.js, ua.js
%  - gif's ../img/nm.gif
%  - jpg's ../img/tree/nm.jpg

%% Example of use
% prt_species_tree_js(pedigree('Animalia')); open ../species_tree.html to see the result
    
    if ~exist('pedigree_taxa','var')
      pedigree_taxa = pedigree;
    end
    
    fid_tv = fopen('../sys/species_tree.js', 'w+'); % open file for writing, delete existing content

    % write header
    fprintf(fid_tv, '//\n');
    fprintf(fid_tv, '// Copyright (c) 2006 by Conor O''''Mahony.\n');
    fprintf(fid_tv, '// For enquiries, please email GubuSoft@GubuSoft.com\n');
    fprintf(fid_tv, '// Please keep all copyright notices below.\n');
    fprintf(fid_tv, '// Original author of TreeView script is Marcelino Martins.\n');
    fprintf(fid_tv, '// This document includes the TreeView script.\n');
    fprintf(fid_tv, '// The TreeView script can be found at http://www.TreeView.net.\n');
    fprintf(fid_tv, '// The script is Copyright (c) 2006 by Conor O''''Mahony.\n');
    fprintf(fid_tv, '//\n');
    fprintf(fid_tv, '// You can find general instructions for this file at www.treeview.net.\n');
    fprintf(fid_tv, '//\n\n');
  
    % write specs
    fprintf(fid_tv, 'USETEXTLINKS = 1\n'); % 0: The icon is the only link to a destination; 1: Both the icon and the text are links to the destination
    fprintf(fid_tv, 'STARTALLOPEN = 0\n'); % 0: Expand only the root node. Do not open other folders; 1: Expand all folders, showing every node in the tree. 
    fprintf(fid_tv, 'USEFRAMES = 0\n');    % 0: Use TreeView in a frame-less layout; 1: Use TreeView in a frame-based layout where the tree is in its own frame
    fprintf(fid_tv, 'USEICONS = 0\n');     % 0: Do not display the icons; 1: Display the icons
    fprintf(fid_tv, 'WRAPTEXT = 1\n');     % 0: The text portion of a node will appear on one line only; 1: The text portion of a node will wrap to always be visible 
    fprintf(fid_tv, 'PRESERVESTATE = 1\n');% 0: Do not store the state of the tree across page loads; 1: Store the state of the tree in cookies, and use that state on next visit
    fprintf(fid_tv, 'HIGHLIGHT = 1\n');    % 0: Do not highlight the selected node; 1: Highlight the selected node
    fprintf(fid_tv, 'ICONPATH = ''img/''\n\n'); % path to icons for tree
  
    % build tree
    nl = strfind(pedigree_taxa, char(10)); node = pedigree_taxa(1:nl-1); pedigree_taxa(1:nl) = [];
    fprintf(fid_tv, ['foldersTree = gFld("<b>', node, '</b>", "species_tree.html")\n']);

    while length(pedigree_taxa) > 3
      nl = strfind(pedigree_taxa, char(10)); node = pedigree_taxa(1:nl-1); pedigree_taxa(1:nl) = [];
      level = max(strfind(node, char(9))); node(1:level) = []; L = ['L', num2str(level)]; Lnew = ['L', num2str(1 + level)];
      if level == 1
        fprintf(fid_tv, ['L2 = insFld(foldersTree, gFld("', node, '", "species_tree.html?pic=', '%%22', node, '%%2Ejpg', '%%22"))\n']);
        %fprintf(fid_tv, ['L2 = insFld(foldersTree, gFld("', node, '", ""))\n']);
      elseif isempty(strfind(node, '_')) && isempty(strfind(node, ' ')) 
        fprintf(fid_tv, [Lnew, ' = insFld(', L, ', gFld("', node, '", "species_tree.html?pic=', '%%22', node, '%%2Ejpg', '%%22"))\n']);
        %fprintf(fid_tv, [Lnew, ' = insFld(', L, ', gFld("', node, '", ""))\n']);
      else
        fprintf(fid_tv, ['insDoc(', L, ', gLnk("S", "', node, '", "entries_web/', node, '.html"))\n']); 
      end
    end
 
    fclose(fid_tv);
  
