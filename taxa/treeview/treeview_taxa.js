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

foldersTree = gFld("<b>Testudines</b>", "treeview_taxa.html")
L2 = insFld(foldersTree, gFld("Pleurodira", "treeview_taxa.html?pic=%22Pleurodira%2Ejpg%22"))
L3 = insFld(L2, gFld("Chelidae", "treeview_taxa.html?pic=%22Chelidae%2Ejpg%22"))
L4 = insFld(L3, gFld("Pseudemydura", "treeview_taxa.html?pic=%22Pseudemydura%2Ejpg%22"))
insDoc(L4, gLnk("S", "Pseudemydura_umbrina", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pseudemydura_umbrina_res.html"))
L2 = insFld(foldersTree, gFld("Cryptodira", "treeview_taxa.html?pic=%22Cryptodira%2Ejpg%22"))
L3 = insFld(L2, gFld("Americhelydia", "treeview_taxa.html?pic=%22Americhelydia%2Ejpg%22"))
L4 = insFld(L3, gFld("Chelonioidea", "treeview_taxa.html?pic=%22Chelonioidea%2Ejpg%22"))
L5 = insFld(L4, gFld("Dermochelyidae", "treeview_taxa.html?pic=%22Dermochelyidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Dermochelys", "treeview_taxa.html?pic=%22Dermochelys%2Ejpg%22"))
insDoc(L6, gLnk("S", "Dermochelys_coriacea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Dermochelys_coriacea_res.html"))
L5 = insFld(L4, gFld("Cheloniidae", "treeview_taxa.html?pic=%22Cheloniidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Carettinae", "treeview_taxa.html?pic=%22Carettinae%2Ejpg%22"))
L7 = insFld(L6, gFld("Caretta", "treeview_taxa.html?pic=%22Caretta%2Ejpg%22"))
insDoc(L7, gLnk("S", "Caretta_caretta", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Caretta_caretta_res.html"))
insDoc(L7, gLnk("S", "Caretta_caretta_MED", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Caretta_caretta_MED_res.html"))
L7 = insFld(L6, gFld("Lepidochelys", "treeview_taxa.html?pic=%22Lepidochelys%2Ejpg%22"))
insDoc(L7, gLnk("S", "Lepidochelys_kempii", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lepidochelys_kempii_res.html"))
L6 = insFld(L5, gFld("Cheloniinae", "treeview_taxa.html?pic=%22Cheloniinae%2Ejpg%22"))
L7 = insFld(L6, gFld("Natator", "treeview_taxa.html?pic=%22Natator%2Ejpg%22"))
insDoc(L7, gLnk("S", "Natator_depressus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Natator_depressus_res.html"))
L7 = insFld(L6, gFld("Chelonia", "treeview_taxa.html?pic=%22Chelonia%2Ejpg%22"))
insDoc(L7, gLnk("S", "Chelonia_mydas", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Chelonia_mydas_res.html"))
L3 = insFld(L2, gFld("Testudinoidea", "treeview_taxa.html?pic=%22Testudinoidea%2Ejpg%22"))
L4 = insFld(L3, gFld("Emystemia", "treeview_taxa.html?pic=%22Emystemia%2Ejpg%22"))
L5 = insFld(L4, gFld("Emydidae", "treeview_taxa.html?pic=%22Emydidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Emys", "treeview_taxa.html?pic=%22Emys%2Ejpg%22"))
insDoc(L6, gLnk("S", "Emys_orbicularis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Emys_orbicularis_res.html"))
L4 = insFld(L3, gFld("Testuguria", "treeview_taxa.html?pic=%22Testuguria%2Ejpg%22"))
L5 = insFld(L4, gFld("Testudinidae", "treeview_taxa.html?pic=%22Testudinidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Testudo", "treeview_taxa.html?pic=%22Testudo%2Ejpg%22"))
insDoc(L6, gLnk("S", "Testudo_hermanni", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Testudo_hermanni_res.html"))
insDoc(L6, gLnk("S", "Testudo_graeca", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Testudo_graeca_res.html"))
foldersTree.treeID = "Testudines"
