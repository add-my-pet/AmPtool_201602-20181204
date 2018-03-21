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

foldersTree = gFld("<b>Maxillopoda</b>", "treeview_taxa.html")
L2 = insFld(foldersTree, gFld("Thecostraca", "treeview_taxa.html?pic=%22Thecostraca%2Ejpg%22"))
L3 = insFld(L2, gFld("Cirripedia", "treeview_taxa.html?pic=%22Cirripedia%2Ejpg%22"))
L4 = insFld(L3, gFld("Scalpelliformes", "treeview_taxa.html?pic=%22Scalpelliformes%2Ejpg%22"))
L5 = insFld(L4, gFld("Pollicipedidae", "treeview_taxa.html?pic=%22Pollicipedidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Pollicipes", "treeview_taxa.html?pic=%22Pollicipes%2Ejpg%22"))
insDoc(L6, gLnk("S", "Pollicipes_polymerus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pollicipes_polymerus/Pollicipes_polymerus_res.html"))
L4 = insFld(L3, gFld("Sessilia", "treeview_taxa.html?pic=%22Sessilia%2Ejpg%22"))
L5 = insFld(L4, gFld("Balanidae", "treeview_taxa.html?pic=%22Balanidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Amphibalanus", "treeview_taxa.html?pic=%22Amphibalanus%2Ejpg%22"))
insDoc(L6, gLnk("S", "Amphibalanus_amphitrite", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Amphibalanus_amphitrite/Amphibalanus_amphitrite_res.html"))
L2 = insFld(foldersTree, gFld("Branchiura", "treeview_taxa.html?pic=%22Branchiura%2Ejpg%22"))
L3 = insFld(L2, gFld("Arguloida", "treeview_taxa.html?pic=%22Arguloida%2Ejpg%22"))
L4 = insFld(L3, gFld("Argulidae", "treeview_taxa.html?pic=%22Argulidae%2Ejpg%22"))
L5 = insFld(L4, gFld("Argulus", "treeview_taxa.html?pic=%22Argulus%2Ejpg%22"))
insDoc(L5, gLnk("S", "Argulus_coregoni", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Argulus_coregoni/Argulus_coregoni_res.html"))
L2 = insFld(foldersTree, gFld("Copepoda", "treeview_taxa.html?pic=%22Copepoda%2Ejpg%22"))
L3 = insFld(L2, gFld("Harpacticoida", "treeview_taxa.html?pic=%22Harpacticoida%2Ejpg%22"))
L4 = insFld(L3, gFld("Ameiridae", "treeview_taxa.html?pic=%22Ameiridae%2Ejpg%22"))
L5 = insFld(L4, gFld("Nitokra", "treeview_taxa.html?pic=%22Nitokra%2Ejpg%22"))
insDoc(L5, gLnk("S", "Nitokra_spinipes", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Nitokra_spinipes/Nitokra_spinipes_res.html"))
L3 = insFld(L2, gFld("Cyclopoida", "treeview_taxa.html?pic=%22Cyclopoida%2Ejpg%22"))
L4 = insFld(L3, gFld("Cyclopidae", "treeview_taxa.html?pic=%22Cyclopidae%2Ejpg%22"))
L5 = insFld(L4, gFld("Acanthocyclops", "treeview_taxa.html?pic=%22Acanthocyclops%2Ejpg%22"))
insDoc(L5, gLnk("S", "Acanthocyclops_robustus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Acanthocyclops_robustus/Acanthocyclops_robustus_res.html"))
L5 = insFld(L4, gFld("Cyclops", "treeview_taxa.html?pic=%22Cyclops%2Ejpg%22"))
insDoc(L5, gLnk("S", "Cyclops_vicinus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cyclops_vicinus/Cyclops_vicinus_res.html"))
L5 = insFld(L4, gFld("Mesocyclops", "treeview_taxa.html?pic=%22Mesocyclops%2Ejpg%22"))
insDoc(L5, gLnk("S", "Mesocyclops_leukarti", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mesocyclops_leukarti/Mesocyclops_leukarti_res.html"))
L3 = insFld(L2, gFld("Calanoida", "treeview_taxa.html?pic=%22Calanoida%2Ejpg%22"))
L4 = insFld(L3, gFld("Calanidae", "treeview_taxa.html?pic=%22Calanidae%2Ejpg%22"))
L5 = insFld(L4, gFld("Calanus", "treeview_taxa.html?pic=%22Calanus%2Ejpg%22"))
insDoc(L5, gLnk("S", "Calanus_sinicus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Calanus_sinicus/Calanus_sinicus_res.html"))
L4 = insFld(L3, gFld("Temoridae", "treeview_taxa.html?pic=%22Temoridae%2Ejpg%22"))
L5 = insFld(L4, gFld("Eurytemora", "treeview_taxa.html?pic=%22Eurytemora%2Ejpg%22"))
insDoc(L5, gLnk("S", "Eurytemora_affinis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Eurytemora_affinis/Eurytemora_affinis_res.html"))
L3 = insFld(L2, gFld("Siphonostomatoida", "treeview_taxa.html?pic=%22Siphonostomatoida%2Ejpg%22"))
L4 = insFld(L3, gFld("Caligidae", "treeview_taxa.html?pic=%22Caligidae%2Ejpg%22"))
L5 = insFld(L4, gFld("Lepeophtheirus", "treeview_taxa.html?pic=%22Lepeophtheirus%2Ejpg%22"))
insDoc(L5, gLnk("S", "Lepeophtheirus_salmonis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lepeophtheirus_salmonis/Lepeophtheirus_salmonis_res.html"))
foldersTree.treeID = "Maxillopoda"
