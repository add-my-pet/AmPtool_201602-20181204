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

foldersTree = gFld("<b>Pleuronectidae</b>", "treeview_taxa.html")
L2 = insFld(foldersTree, gFld("Hippoglossinae", "treeview_taxa.html?pic=%22Hippoglossinae%2Ejpg%22"))
L3 = insFld(L2, gFld("Hippoglossus", "treeview_taxa.html?pic=%22Hippoglossus%2Ejpg%22"))
insDoc(L3, gLnk("S", "Hippoglossus_hippoglossus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Hippoglossus_hippoglossus_res.html"))
insDoc(L3, gLnk("S", "Hippoglossus_stenolepis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Hippoglossus_stenolepis_res.html"))
L3 = insFld(L2, gFld("Reinhardtius", "treeview_taxa.html?pic=%22Reinhardtius%2Ejpg%22"))
insDoc(L3, gLnk("S", "Reinhardtius_hippoglossoides", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Reinhardtius_hippoglossoides_res.html"))
L2 = insFld(foldersTree, gFld("Pleuronectinae", "treeview_taxa.html?pic=%22Pleuronectinae%2Ejpg%22"))
L3 = insFld(L2, gFld("Microstomini", "treeview_taxa.html?pic=%22Microstomini%2Ejpg%22"))
L4 = insFld(L3, gFld("Glyptocephalus", "treeview_taxa.html?pic=%22Glyptocephalus%2Ejpg%22"))
insDoc(L4, gLnk("S", "Glyptocephalus_cynoglossus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Glyptocephalus_cynoglossus_res.html"))
L4 = insFld(L3, gFld("Microstomus", "treeview_taxa.html?pic=%22Microstomus%2Ejpg%22"))
insDoc(L4, gLnk("S", "Microstomus_kitt", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Microstomus_kitt_res.html"))
L4 = insFld(L3, gFld("Hypsopsetta", "treeview_taxa.html?pic=%22Hypsopsetta%2Ejpg%22"))
insDoc(L4, gLnk("S", "Hypsopsetta_guttulata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Hypsopsetta_guttulata_res.html"))
L3 = insFld(L2, gFld("Pleuronectini", "treeview_taxa.html?pic=%22Pleuronectini%2Ejpg%22"))
L4 = insFld(L3, gFld("Pleuronectes", "treeview_taxa.html?pic=%22Pleuronectes%2Ejpg%22"))
insDoc(L4, gLnk("S", "Pleuronectes_platessa", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pleuronectes_platessa_res.html"))
L4 = insFld(L3, gFld("Limanda", "treeview_taxa.html?pic=%22Limanda%2Ejpg%22"))
insDoc(L4, gLnk("S", "Limanda_limanda", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Limanda_limanda_res.html"))
insDoc(L4, gLnk("S", "Limanda_ferruginea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Limanda_ferruginea_res.html"))
L3 = insFld(L2, gFld("Psettichthyini", "treeview_taxa.html?pic=%22Psettichthyini%2Ejpg%22"))
L4 = insFld(L3, gFld("Platichthys", "treeview_taxa.html?pic=%22Platichthys%2Ejpg%22"))
insDoc(L4, gLnk("S", "Platichthys_stellatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Platichthys_stellatus_res.html"))
