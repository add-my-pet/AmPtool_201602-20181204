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
foldersTree.xID = "Cladocera"
L2 = insFld(foldersTree, gFld("Sididae", "treeview_taxa.html?pic=%22Sididae%2Ejpg%22"))
L2.xID = "Sididae"
L3 = insFld(L2, gFld("Diaphanosoma", "treeview_taxa.html?pic=%22Diaphanosoma%2Ejpg%22"))
L3.xID = "Diaphanosoma"
lv1 = insDoc(L3, gLnk("S", "Diaphanosoma_brachyurum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Diaphanosoma_brachyurum/Diaphanosoma_brachyurum_res.html"))
lv1.xID = "Diaphanosoma_brachyurum"
L2 = insFld(foldersTree, gFld("Anomopoda", "treeview_taxa.html?pic=%22Anomopoda%2Ejpg%22"))
L2.xID = "Anomopoda"
L3 = insFld(L2, gFld("Bosminidae", "treeview_taxa.html?pic=%22Bosminidae%2Ejpg%22"))
L3.xID = "Bosminidae"
L4 = insFld(L3, gFld("Bosmina", "treeview_taxa.html?pic=%22Bosmina%2Ejpg%22"))
L4.xID = "Bosmina"
lv2 = insDoc(L4, gLnk("S", "Bosmina_longirostris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Bosmina_longirostris/Bosmina_longirostris_res.html"))
lv2.xID = "Bosmina_longirostris"
L4 = insFld(L3, gFld("Eubosmina", "treeview_taxa.html?pic=%22Eubosmina%2Ejpg%22"))
L4.xID = "Eubosmina"
lv3 = insDoc(L4, gLnk("S", "Eubosmina_coregoni", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Eubosmina_coregoni/Eubosmina_coregoni_res.html"))
lv3.xID = "Eubosmina_coregoni"
L3 = insFld(L2, gFld("Chydoridae", "treeview_taxa.html?pic=%22Chydoridae%2Ejpg%22"))
L3.xID = "Chydoridae"
L4 = insFld(L3, gFld("Chydorus", "treeview_taxa.html?pic=%22Chydorus%2Ejpg%22"))
L4.xID = "Chydorus"
lv4 = insDoc(L4, gLnk("S", "Chydorus_sphaericus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Chydorus_sphaericus/Chydorus_sphaericus_res.html"))
lv4.xID = "Chydorus_sphaericus"
L4 = insFld(L3, gFld("Pleuroxus", "treeview_taxa.html?pic=%22Pleuroxus%2Ejpg%22"))
L4.xID = "Pleuroxus"
lv5 = insDoc(L4, gLnk("S", "Pleuroxus_aduncus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pleuroxus_aduncus/Pleuroxus_aduncus_res.html"))
lv5.xID = "Pleuroxus_aduncus"
lv6 = insDoc(L4, gLnk("S", "Pleuroxus_striatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pleuroxus_striatus/Pleuroxus_striatus_res.html"))
lv6.xID = "Pleuroxus_striatus"
L3 = insFld(L2, gFld("Daphniidae", "treeview_taxa.html?pic=%22Daphniidae%2Ejpg%22"))
L3.xID = "Daphniidae"
L4 = insFld(L3, gFld("Ceriodaphnia", "treeview_taxa.html?pic=%22Ceriodaphnia%2Ejpg%22"))
L4.xID = "Ceriodaphnia"
lv7 = insDoc(L4, gLnk("S", "Ceriodaphnia_pulchella", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ceriodaphnia_pulchella/Ceriodaphnia_pulchella_res.html"))
lv7.xID = "Ceriodaphnia_pulchella"
lv8 = insDoc(L4, gLnk("S", "Ceriodaphnia_dubia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ceriodaphnia_dubia/Ceriodaphnia_dubia_res.html"))
lv8.xID = "Ceriodaphnia_dubia"
L4 = insFld(L3, gFld("Daphnia", "treeview_taxa.html?pic=%22Daphnia%2Ejpg%22"))
L4.xID = "Daphnia"
lv9 = insDoc(L4, gLnk("S", "Daphnia_cucullata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Daphnia_cucullata/Daphnia_cucullata_res.html"))
lv9.xID = "Daphnia_cucullata"
lv10 = insDoc(L4, gLnk("S", "Daphnia_longispina", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Daphnia_longispina/Daphnia_longispina_res.html"))
lv10.xID = "Daphnia_longispina"
lv11 = insDoc(L4, gLnk("S", "Daphnia_hyalina", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Daphnia_hyalina/Daphnia_hyalina_res.html"))
lv11.xID = "Daphnia_hyalina"
lv12 = insDoc(L4, gLnk("S", "Daphnia_magna", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Daphnia_magna/Daphnia_magna_res.html"))
lv12.xID = "Daphnia_magna"
lv13 = insDoc(L4, gLnk("S", "Daphnia_pulex", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Daphnia_pulex/Daphnia_pulex_res.html"))
lv13.xID = "Daphnia_pulex"
L4 = insFld(L3, gFld("Scapholeberis", "treeview_taxa.html?pic=%22Scapholeberis%2Ejpg%22"))
L4.xID = "Scapholeberis"
lv14 = insDoc(L4, gLnk("S", "Scapholeberis_mucronata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Scapholeberis_mucronata/Scapholeberis_mucronata_res.html"))
lv14.xID = "Scapholeberis_mucronata"
L4 = insFld(L3, gFld("Simocephalus", "treeview_taxa.html?pic=%22Simocephalus%2Ejpg%22"))
L4.xID = "Simocephalus"
lv15 = insDoc(L4, gLnk("S", "Simocephalus_serrulatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Simocephalus_serrulatus/Simocephalus_serrulatus_res.html"))
lv15.xID = "Simocephalus_serrulatus"
L3 = insFld(L2, gFld("Moinidae", "treeview_taxa.html?pic=%22Moinidae%2Ejpg%22"))
L3.xID = "Moinidae"
L4 = insFld(L3, gFld("Moina", "treeview_taxa.html?pic=%22Moina%2Ejpg%22"))
L4.xID = "Moina"
lv16 = insDoc(L4, gLnk("S", "Moina_macrocopa", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Moina_macrocopa/Moina_macrocopa_res.html"))
lv16.xID = "Moina_macrocopa"
L2 = insFld(foldersTree, gFld("Leptodoridae", "treeview_taxa.html?pic=%22Leptodoridae%2Ejpg%22"))
L2.xID = "Leptodoridae"
L3 = insFld(L2, gFld("Leptodora", "treeview_taxa.html?pic=%22Leptodora%2Ejpg%22"))
L3.xID = "Leptodora"
lv17 = insDoc(L3, gLnk("S", "Leptodora_kindtii", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Leptodora_kindtii/Leptodora_kindtii_res.html"))
lv17.xID = "Leptodora_kindtii"
foldersTree.treeID = "Cladocera"
