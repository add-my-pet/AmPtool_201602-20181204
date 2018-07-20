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
STARTALLOPEN = 1
USEFRAMES = 0
USEICONS = 0
WRAPTEXT = 1
PRESERVESTATE = 1
HIGHLIGHT = 1

var AmPpath = 'https://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/';

foldersTree = gFld("<b>Marsupialia</b>", "treeview_taxa.html")
foldersTree.xID = "Marsupialia"
L2 = insFld(foldersTree, gFld("<p id='Didelphimorphia'>Didelphimorphia</p>", "treeview_taxa.html?pic=%22Didelphimorphia%2Ejpg%22"))
L2.xID = "Didelphimorphia"
L3 = insFld(L2, gFld("<p id='Caluromyidae'>Caluromyidae</p>", "treeview_taxa.html?pic=%22Caluromyidae%2Ejpg%22"))
L3.xID = "Caluromyidae"
L4 = insFld(L3, gFld("<p id='Caluromys'>Caluromys</p>", "treeview_taxa.html?pic=%22Caluromys%2Ejpg%22"))
L4.xID = "Caluromys"
lv1 = insDoc(L4, gLnk("S", "<p id='Caluromys_philander'>Caluromys_philander</p>", AmPpath + "Caluromys_philander/Caluromys_philander_res.html"))
lv1.xID = "Caluromys_philander"
L3 = insFld(L2, gFld("<p id='Didelphidae'>Didelphidae</p>", "treeview_taxa.html?pic=%22Didelphidae%2Ejpg%22"))
L3.xID = "Didelphidae"
L4 = insFld(L3, gFld("<p id='Didelphis'>Didelphis</p>", "treeview_taxa.html?pic=%22Didelphis%2Ejpg%22"))
L4.xID = "Didelphis"
lv2 = insDoc(L4, gLnk("S", "<p id='Didelphis_virginiana'>Didelphis_virginiana</p>", AmPpath + "Didelphis_virginiana/Didelphis_virginiana_res.html"))
lv2.xID = "Didelphis_virginiana"
L2 = insFld(foldersTree, gFld("<p id='Dasyuromorphia'>Dasyuromorphia</p>", "treeview_taxa.html?pic=%22Dasyuromorphia%2Ejpg%22"))
L2.xID = "Dasyuromorphia"
L3 = insFld(L2, gFld("<p id='Dasyuridae'>Dasyuridae</p>", "treeview_taxa.html?pic=%22Dasyuridae%2Ejpg%22"))
L3.xID = "Dasyuridae"
L4 = insFld(L3, gFld("<p id='Sarcophilus'>Sarcophilus</p>", "treeview_taxa.html?pic=%22Sarcophilus%2Ejpg%22"))
L4.xID = "Sarcophilus"
lv3 = insDoc(L4, gLnk("S", "<p id='Sarcophilus_harrisii'>Sarcophilus_harrisii</p>", AmPpath + "Sarcophilus_harrisii/Sarcophilus_harrisii_res.html"))
lv3.xID = "Sarcophilus_harrisii"
L4 = insFld(L3, gFld("<p id='Dasyurus'>Dasyurus</p>", "treeview_taxa.html?pic=%22Dasyurus%2Ejpg%22"))
L4.xID = "Dasyurus"
lv4 = insDoc(L4, gLnk("S", "<p id='Dasyurus_viverrinus'>Dasyurus_viverrinus</p>", AmPpath + "Dasyurus_viverrinus/Dasyurus_viverrinus_res.html"))
lv4.xID = "Dasyurus_viverrinus"
L2 = insFld(foldersTree, gFld("<p id='Peramelemorphia'>Peramelemorphia</p>", "treeview_taxa.html?pic=%22Peramelemorphia%2Ejpg%22"))
L2.xID = "Peramelemorphia"
L3 = insFld(L2, gFld("<p id='Peramelidae'>Peramelidae</p>", "treeview_taxa.html?pic=%22Peramelidae%2Ejpg%22"))
L3.xID = "Peramelidae"
L4 = insFld(L3, gFld("<p id='Perameles'>Perameles</p>", "treeview_taxa.html?pic=%22Perameles%2Ejpg%22"))
L4.xID = "Perameles"
lv5 = insDoc(L4, gLnk("S", "<p id='Perameles_nasuta'>Perameles_nasuta</p>", AmPpath + "Perameles_nasuta/Perameles_nasuta_res.html"))
lv5.xID = "Perameles_nasuta"
L2 = insFld(foldersTree, gFld("<p id='Diprotodontia'>Diprotodontia</p>", "treeview_taxa.html?pic=%22Diprotodontia%2Ejpg%22"))
L2.xID = "Diprotodontia"
L3 = insFld(L2, gFld("<p id='Phascolarctidae'>Phascolarctidae</p>", "treeview_taxa.html?pic=%22Phascolarctidae%2Ejpg%22"))
L3.xID = "Phascolarctidae"
L4 = insFld(L3, gFld("<p id='Phascolarctos'>Phascolarctos</p>", "treeview_taxa.html?pic=%22Phascolarctos%2Ejpg%22"))
L4.xID = "Phascolarctos"
lv6 = insDoc(L4, gLnk("S", "<p id='Phascolarctos_cinereus'>Phascolarctos_cinereus</p>", AmPpath + "Phascolarctos_cinereus/Phascolarctos_cinereus_res.html"))
lv6.xID = "Phascolarctos_cinereus"
L3 = insFld(L2, gFld("<p id='Tarsipedidae'>Tarsipedidae</p>", "treeview_taxa.html?pic=%22Tarsipedidae%2Ejpg%22"))
L3.xID = "Tarsipedidae"
L4 = insFld(L3, gFld("<p id='Tarsipes'>Tarsipes</p>", "treeview_taxa.html?pic=%22Tarsipes%2Ejpg%22"))
L4.xID = "Tarsipes"
lv7 = insDoc(L4, gLnk("S", "<p id='Tarsipes_rostratus'>Tarsipes_rostratus</p>", AmPpath + "Tarsipes_rostratus/Tarsipes_rostratus_res.html"))
lv7.xID = "Tarsipes_rostratus"
L3 = insFld(L2, gFld("<p id='Macropodidae'>Macropodidae</p>", "treeview_taxa.html?pic=%22Macropodidae%2Ejpg%22"))
L3.xID = "Macropodidae"
L4 = insFld(L3, gFld("<p id='Lagostrophus'>Lagostrophus</p>", "treeview_taxa.html?pic=%22Lagostrophus%2Ejpg%22"))
L4.xID = "Lagostrophus"
lv8 = insDoc(L4, gLnk("S", "<p id='Lagostrophus_fasciatus'>Lagostrophus_fasciatus</p>", AmPpath + "Lagostrophus_fasciatus/Lagostrophus_fasciatus_res.html"))
lv8.xID = "Lagostrophus_fasciatus"
L4 = insFld(L3, gFld("<p id='Lagorchestes'>Lagorchestes</p>", "treeview_taxa.html?pic=%22Lagorchestes%2Ejpg%22"))
L4.xID = "Lagorchestes"
lv9 = insDoc(L4, gLnk("S", "<p id='Lagorchestes_conspicillatus'>Lagorchestes_conspicillatus</p>", AmPpath + "Lagorchestes_conspicillatus/Lagorchestes_conspicillatus_res.html"))
lv9.xID = "Lagorchestes_conspicillatus"
lv10 = insDoc(L4, gLnk("S", "<p id='Lagorchestes_hirsutus'>Lagorchestes_hirsutus</p>", AmPpath + "Lagorchestes_hirsutus/Lagorchestes_hirsutus_res.html"))
lv10.xID = "Lagorchestes_hirsutus"
L4 = insFld(L3, gFld("<p id='Macropus'>Macropus</p>", "treeview_taxa.html?pic=%22Macropus%2Ejpg%22"))
L4.xID = "Macropus"
lv11 = insDoc(L4, gLnk("S", "<p id='Macropus_agilis'>Macropus_agilis</p>", AmPpath + "Macropus_agilis/Macropus_agilis_res.html"))
lv11.xID = "Macropus_agilis"
lv12 = insDoc(L4, gLnk("S", "<p id='Macropus_antilopinus'>Macropus_antilopinus</p>", AmPpath + "Macropus_antilopinus/Macropus_antilopinus_res.html"))
lv12.xID = "Macropus_antilopinus"
lv13 = insDoc(L4, gLnk("S", "<p id='Macropus_eugenii'>Macropus_eugenii</p>", AmPpath + "Macropus_eugenii/Macropus_eugenii_res.html"))
lv13.xID = "Macropus_eugenii"
lv14 = insDoc(L4, gLnk("S", "<p id='Macropus_fuliginosus'>Macropus_fuliginosus</p>", AmPpath + "Macropus_fuliginosus/Macropus_fuliginosus_res.html"))
lv14.xID = "Macropus_fuliginosus"
lv15 = insDoc(L4, gLnk("S", "<p id='Macropus_giganteus'>Macropus_giganteus</p>", AmPpath + "Macropus_giganteus/Macropus_giganteus_res.html"))
lv15.xID = "Macropus_giganteus"
lv16 = insDoc(L4, gLnk("S", "<p id='Macropus_parma'>Macropus_parma</p>", AmPpath + "Macropus_parma/Macropus_parma_res.html"))
lv16.xID = "Macropus_parma"
lv17 = insDoc(L4, gLnk("S", "<p id='Macropus_rufogriseus'>Macropus_rufogriseus</p>", AmPpath + "Macropus_rufogriseus/Macropus_rufogriseus_res.html"))
lv17.xID = "Macropus_rufogriseus"
lv18 = insDoc(L4, gLnk("S", "<p id='Macropus_rufus'>Macropus_rufus</p>", AmPpath + "Macropus_rufus/Macropus_rufus_res.html"))
lv18.xID = "Macropus_rufus"
L4 = insFld(L3, gFld("<p id='Onychogalea'>Onychogalea</p>", "treeview_taxa.html?pic=%22Onychogalea%2Ejpg%22"))
L4.xID = "Onychogalea"
lv19 = insDoc(L4, gLnk("S", "<p id='Onychogalea_fraenata'>Onychogalea_fraenata</p>", AmPpath + "Onychogalea_fraenata/Onychogalea_fraenata_res.html"))
lv19.xID = "Onychogalea_fraenata"
L4 = insFld(L3, gFld("<p id='Petrogale'>Petrogale</p>", "treeview_taxa.html?pic=%22Petrogale%2Ejpg%22"))
L4.xID = "Petrogale"
lv20 = insDoc(L4, gLnk("S", "<p id='Petrogale_xanthopus'>Petrogale_xanthopus</p>", AmPpath + "Petrogale_xanthopus/Petrogale_xanthopus_res.html"))
lv20.xID = "Petrogale_xanthopus"
L4 = insFld(L3, gFld("<p id='Setonix'>Setonix</p>", "treeview_taxa.html?pic=%22Setonix%2Ejpg%22"))
L4.xID = "Setonix"
lv21 = insDoc(L4, gLnk("S", "<p id='Setonix_brachyurus'>Setonix_brachyurus</p>", AmPpath + "Setonix_brachyurus/Setonix_brachyurus_res.html"))
lv21.xID = "Setonix_brachyurus"
L4 = insFld(L3, gFld("<p id='Wallabia'>Wallabia</p>", "treeview_taxa.html?pic=%22Wallabia%2Ejpg%22"))
L4.xID = "Wallabia"
lv22 = insDoc(L4, gLnk("S", "<p id='Wallabia_bicolor'>Wallabia_bicolor</p>", AmPpath + "Wallabia_bicolor/Wallabia_bicolor_res.html"))
lv22.xID = "Wallabia_bicolor"
foldersTree.treeID = "Marsupialia"
