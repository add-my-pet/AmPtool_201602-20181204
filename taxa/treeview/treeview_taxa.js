//
// Copyright (c) 2006 by Conor O''Mahony.
// For enquiries, please email GubuSoft@GubuSoft.com
// Please keep all copyright notices below.
// Original author of TreeView script is Marcelino Martins.
// This document includes the TreeView script.
// The TreeView script can be found at http://www.TreeView.net.
// The script is Copyright (c) 2006 by Conor O''Mahony.
//
// You can find general instructions for this file at www.treeview.net.
//

USETEXTLINKS = 1
STARTALLOPEN = 0
USEFRAMES = 0
USEICONS = 0
WRAPTEXT = 1
PRESERVESTATE = 1
HIGHLIGHT = 1

foldersTree = gFld("<b>Cladocera</b>", "treeview_taxa.html")
L2 = insFld(foldersTree, gFld("Bosminidae", "treeview_taxa.html?pic=%22Bosminidae%2Ejpg%22"))
L3 = insFld(L2, gFld("Bosmina", "treeview_taxa.html?pic=%22Bosmina%2Ejpg%22"))
insDoc(L3, gLnk("S", "Bosmina_longirostris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Bosmina_longirostris.html"))
L3 = insFld(L2, gFld("Eubosmina", "treeview_taxa.html?pic=%22Eubosmina%2Ejpg%22"))
insDoc(L3, gLnk("S", "Eubosmina_coregoni", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Eubosmina_coregoni.html"))
L2 = insFld(foldersTree, gFld("Chydoridae", "treeview_taxa.html?pic=%22Chydoridae%2Ejpg%22"))
L3 = insFld(L2, gFld("Chydorus", "treeview_taxa.html?pic=%22Chydorus%2Ejpg%22"))
insDoc(L3, gLnk("S", "Chydorus_sphaericus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Chydorus_sphaericus.html"))
L3 = insFld(L2, gFld("Pleuroxus", "treeview_taxa.html?pic=%22Pleuroxus%2Ejpg%22"))
insDoc(L3, gLnk("S", "Pleuroxus_aduncus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Pleuroxus_aduncus.html"))
insDoc(L3, gLnk("S", "Pleuroxus_striatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Pleuroxus_striatus.html"))
L2 = insFld(foldersTree, gFld("Daphniidae", "treeview_taxa.html?pic=%22Daphniidae%2Ejpg%22"))
L3 = insFld(L2, gFld("Ceriodaphnia", "treeview_taxa.html?pic=%22Ceriodaphnia%2Ejpg%22"))
insDoc(L3, gLnk("S", "Ceriodaphnia_pulchella", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Ceriodaphnia_pulchella.html"))
insDoc(L3, gLnk("S", "Ceriodaphnia_dubia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Ceriodaphnia_dubia.html"))
L3 = insFld(L2, gFld("Daphnia", "treeview_taxa.html?pic=%22Daphnia%2Ejpg%22"))
insDoc(L3, gLnk("S", "Daphnia_cucullata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Daphnia_cucullata.html"))
insDoc(L3, gLnk("S", "Daphnia_hyalina", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Daphnia_hyalina.html"))
insDoc(L3, gLnk("S", "Daphnia_magna", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Daphnia_magna.html"))
insDoc(L3, gLnk("S", "Daphnia_pulex", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Daphnia_pulex.html"))
L3 = insFld(L2, gFld("Scapholeberis", "treeview_taxa.html?pic=%22Scapholeberis%2Ejpg%22"))
insDoc(L3, gLnk("S", "Scapholeberis_mucronata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Scapholeberis_mucronata.html"))
L3 = insFld(L2, gFld("Simocephalus", "treeview_taxa.html?pic=%22Simocephalus%2Ejpg%22"))
insDoc(L3, gLnk("S", "Simocephalus_serrulatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Simocephalus_serrulatus.html"))
L2 = insFld(foldersTree, gFld("Sididae", "treeview_taxa.html?pic=%22Sididae%2Ejpg%22"))
L3 = insFld(L2, gFld("Diaphanosoma", "treeview_taxa.html?pic=%22Diaphanosoma%2Ejpg%22"))
insDoc(L3, gLnk("S", "Diaphanosoma_brachyurum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Diaphanosoma_brachyurum.html"))
L2 = insFld(foldersTree, gFld("Leptodoridae", "treeview_taxa.html?pic=%22Leptodoridae%2Ejpg%22"))
L3 = insFld(L2, gFld("Leptodora", "treeview_taxa.html?pic=%22Leptodora%2Ejpg%22"))
insDoc(L3, gLnk("S", "Leptodora_kindtii", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/i_results_Leptodora_kindtii.html"))
