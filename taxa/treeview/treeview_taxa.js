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
USEFRAMES = 0
USEICONS = 0
STARTALLOPEN = 0
WRAPTEXT = 1
PRESERVESTATE = 1
HIGHLIGHT = 1

foldersTree = gFld("<b>Primates</b>", "treeview_taxa.html")
foldersTree.xID = "Primates"
L2 = insFld(foldersTree, gFld("Lemuriformes", "treeview_taxa.html?pic=%22Lemuriformes%2Ejpg%22"))
L2.xID = "Lemuriformes"
L3 = insFld(L2, gFld("Lemuroidea", "treeview_taxa.html?pic=%22Lemuroidea%2Ejpg%22"))
L3.xID = "Lemuroidea"
L4 = insFld(L3, gFld("Daubentoniidae", "treeview_taxa.html?pic=%22Daubentoniidae%2Ejpg%22"))
L4.xID = "Daubentoniidae"
L5 = insFld(L4, gFld("Daubentonia", "treeview_taxa.html?pic=%22Daubentonia%2Ejpg%22"))
L5.xID = "Daubentonia"
lv1 = insDoc(L5, gLnk("S", "Daubentonia_madagascariensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Daubentonia_madagascariensis/Daubentonia_madagascariensis_res.html"))
lv1.xID = "Daubentonia_madagascariensis"
L4 = insFld(L3, gFld("Indriidae", "treeview_taxa.html?pic=%22Indriidae%2Ejpg%22"))
L4.xID = "Indriidae"
L5 = insFld(L4, gFld("Propithecus", "treeview_taxa.html?pic=%22Propithecus%2Ejpg%22"))
L5.xID = "Propithecus"
lv2 = insDoc(L5, gLnk("S", "Propithecus_diadema", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Propithecus_diadema/Propithecus_diadema_res.html"))
lv2.xID = "Propithecus_diadema"
L4 = insFld(L3, gFld("Cheirogaleidae", "treeview_taxa.html?pic=%22Cheirogaleidae%2Ejpg%22"))
L4.xID = "Cheirogaleidae"
L5 = insFld(L4, gFld("Microcebus", "treeview_taxa.html?pic=%22Microcebus%2Ejpg%22"))
L5.xID = "Microcebus"
lv3 = insDoc(L5, gLnk("S", "Microcebus_murinus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Microcebus_murinus/Microcebus_murinus_res.html"))
lv3.xID = "Microcebus_murinus"
L4 = insFld(L3, gFld("Lepilemuridae", "treeview_taxa.html?pic=%22Lepilemuridae%2Ejpg%22"))
L4.xID = "Lepilemuridae"
L5 = insFld(L4, gFld("Lepilemur", "treeview_taxa.html?pic=%22Lepilemur%2Ejpg%22"))
L5.xID = "Lepilemur"
lv4 = insDoc(L5, gLnk("S", "Lepilemur_mustelinus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lepilemur_mustelinus/Lepilemur_mustelinus_res.html"))
lv4.xID = "Lepilemur_mustelinus"
L4 = insFld(L3, gFld("Lemuridae", "treeview_taxa.html?pic=%22Lemuridae%2Ejpg%22"))
L4.xID = "Lemuridae"
L5 = insFld(L4, gFld("Varecia", "treeview_taxa.html?pic=%22Varecia%2Ejpg%22"))
L5.xID = "Varecia"
lv5 = insDoc(L5, gLnk("S", "Varecia_variegata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Varecia_variegata/Varecia_variegata_res.html"))
lv5.xID = "Varecia_variegata"
L3 = insFld(L2, gFld("Lorisoidea", "treeview_taxa.html?pic=%22Lorisoidea%2Ejpg%22"))
L3.xID = "Lorisoidea"
L4 = insFld(L3, gFld("Lorisidae", "treeview_taxa.html?pic=%22Lorisidae%2Ejpg%22"))
L4.xID = "Lorisidae"
L5 = insFld(L4, gFld("Nycticebus", "treeview_taxa.html?pic=%22Nycticebus%2Ejpg%22"))
L5.xID = "Nycticebus"
lv6 = insDoc(L5, gLnk("S", "Nycticebus_coucang", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Nycticebus_coucang/Nycticebus_coucang_res.html"))
lv6.xID = "Nycticebus_coucang"
L5 = insFld(L4, gFld("Loris", "treeview_taxa.html?pic=%22Loris%2Ejpg%22"))
L5.xID = "Loris"
lv7 = insDoc(L5, gLnk("S", "Loris_tardigradus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Loris_tardigradus/Loris_tardigradus_res.html"))
lv7.xID = "Loris_tardigradus"
L4 = insFld(L3, gFld("Galagidae", "treeview_taxa.html?pic=%22Galagidae%2Ejpg%22"))
L4.xID = "Galagidae"
L5 = insFld(L4, gFld("Galago", "treeview_taxa.html?pic=%22Galago%2Ejpg%22"))
L5.xID = "Galago"
lv8 = insDoc(L5, gLnk("S", "Galago_senegalensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Galago_senegalensis/Galago_senegalensis_res.html"))
lv8.xID = "Galago_senegalensis"
L2 = insFld(foldersTree, gFld("Haplorhini", "treeview_taxa.html?pic=%22Haplorhini%2Ejpg%22"))
L2.xID = "Haplorhini"
L3 = insFld(L2, gFld("Tarsiiformes", "treeview_taxa.html?pic=%22Tarsiiformes%2Ejpg%22"))
L3.xID = "Tarsiiformes"
L4 = insFld(L3, gFld("Tarsiidae", "treeview_taxa.html?pic=%22Tarsiidae%2Ejpg%22"))
L4.xID = "Tarsiidae"
L5 = insFld(L4, gFld("Tarsius", "treeview_taxa.html?pic=%22Tarsius%2Ejpg%22"))
L5.xID = "Tarsius"
lv9 = insDoc(L5, gLnk("S", "Tarsius_tarsier", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tarsius_tarsier/Tarsius_tarsier_res.html"))
lv9.xID = "Tarsius_tarsier"
L3 = insFld(L2, gFld("Simiiformes", "treeview_taxa.html?pic=%22Simiiformes%2Ejpg%22"))
L3.xID = "Simiiformes"
L4 = insFld(L3, gFld("Platyrrhini", "treeview_taxa.html?pic=%22Platyrrhini%2Ejpg%22"))
L4.xID = "Platyrrhini"
L5 = insFld(L4, gFld("Callitrichidae", "treeview_taxa.html?pic=%22Callitrichidae%2Ejpg%22"))
L5.xID = "Callitrichidae"
L6 = insFld(L5, gFld("Callithrix", "treeview_taxa.html?pic=%22Callithrix%2Ejpg%22"))
L6.xID = "Callithrix"
lv10 = insDoc(L6, gLnk("S", "Callithrix_pygmaea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Callithrix_pygmaea/Callithrix_pygmaea_res.html"))
lv10.xID = "Callithrix_pygmaea"
lv11 = insDoc(L6, gLnk("S", "Callithrix_jacchus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Callithrix_jacchus/Callithrix_jacchus_res.html"))
lv11.xID = "Callithrix_jacchus"
L6 = insFld(L5, gFld("Leontopithecus", "treeview_taxa.html?pic=%22Leontopithecus%2Ejpg%22"))
L6.xID = "Leontopithecus"
lv12 = insDoc(L6, gLnk("S", "Leontopithecus_rosalia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Leontopithecus_rosalia/Leontopithecus_rosalia_res.html"))
lv12.xID = "Leontopithecus_rosalia"
L5 = insFld(L4, gFld("Aotidae", "treeview_taxa.html?pic=%22Aotidae%2Ejpg%22"))
L5.xID = "Aotidae"
L6 = insFld(L5, gFld("Aotus", "treeview_taxa.html?pic=%22Aotus%2Ejpg%22"))
L6.xID = "Aotus"
lv13 = insDoc(L6, gLnk("S", "Aotus_trivirgatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aotus_trivirgatus/Aotus_trivirgatus_res.html"))
lv13.xID = "Aotus_trivirgatus"
L5 = insFld(L4, gFld("Pitheciidae", "treeview_taxa.html?pic=%22Pitheciidae%2Ejpg%22"))
L5.xID = "Pitheciidae"
L6 = insFld(L5, gFld("Pithecia", "treeview_taxa.html?pic=%22Pithecia%2Ejpg%22"))
L6.xID = "Pithecia"
lv14 = insDoc(L6, gLnk("S", "Pithecia_pithecia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pithecia_pithecia/Pithecia_pithecia_res.html"))
lv14.xID = "Pithecia_pithecia"
L5 = insFld(L4, gFld("Cebidae", "treeview_taxa.html?pic=%22Cebidae%2Ejpg%22"))
L5.xID = "Cebidae"
L6 = insFld(L5, gFld("Cebus", "treeview_taxa.html?pic=%22Cebus%2Ejpg%22"))
L6.xID = "Cebus"
lv15 = insDoc(L6, gLnk("S", "Cebus_capucinus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cebus_capucinus/Cebus_capucinus_res.html"))
lv15.xID = "Cebus_capucinus"
L6 = insFld(L5, gFld("Saimiri", "treeview_taxa.html?pic=%22Saimiri%2Ejpg%22"))
L6.xID = "Saimiri"
lv16 = insDoc(L6, gLnk("S", "Saimiri_sciureus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Saimiri_sciureus/Saimiri_sciureus_res.html"))
lv16.xID = "Saimiri_sciureus"
L5 = insFld(L4, gFld("Atelidae", "treeview_taxa.html?pic=%22Atelidae%2Ejpg%22"))
L5.xID = "Atelidae"
L6 = insFld(L5, gFld("Alouatta", "treeview_taxa.html?pic=%22Alouatta%2Ejpg%22"))
L6.xID = "Alouatta"
lv17 = insDoc(L6, gLnk("S", "Alouatta_palliata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Alouatta_palliata/Alouatta_palliata_res.html"))
lv17.xID = "Alouatta_palliata"
L4 = insFld(L3, gFld("Catarrhini", "treeview_taxa.html?pic=%22Catarrhini%2Ejpg%22"))
L4.xID = "Catarrhini"
L5 = insFld(L4, gFld("Cercopithecoidea", "treeview_taxa.html?pic=%22Cercopithecoidea%2Ejpg%22"))
L5.xID = "Cercopithecoidea"
L6 = insFld(L5, gFld("Cercopithecidae", "treeview_taxa.html?pic=%22Cercopithecidae%2Ejpg%22"))
L6.xID = "Cercopithecidae"
L7 = insFld(L6, gFld("Chlorocebus", "treeview_taxa.html?pic=%22Chlorocebus%2Ejpg%22"))
L7.xID = "Chlorocebus"
lv18 = insDoc(L7, gLnk("S", "Chlorocebus_aethiops", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Chlorocebus_aethiops/Chlorocebus_aethiops_res.html"))
lv18.xID = "Chlorocebus_aethiops"
L7 = insFld(L6, gFld("Papio", "treeview_taxa.html?pic=%22Papio%2Ejpg%22"))
L7.xID = "Papio"
lv19 = insDoc(L7, gLnk("S", "Papio_hamadryas", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Papio_hamadryas/Papio_hamadryas_res.html"))
lv19.xID = "Papio_hamadryas"
L7 = insFld(L6, gFld("Nasalis", "treeview_taxa.html?pic=%22Nasalis%2Ejpg%22"))
L7.xID = "Nasalis"
lv20 = insDoc(L7, gLnk("S", "Nasalis_larvatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Nasalis_larvatus/Nasalis_larvatus_res.html"))
lv20.xID = "Nasalis_larvatus"
L7 = insFld(L6, gFld("Macaca", "treeview_taxa.html?pic=%22Macaca%2Ejpg%22"))
L7.xID = "Macaca"
lv21 = insDoc(L7, gLnk("S", "Macaca_fascicularis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Macaca_fascicularis/Macaca_fascicularis_res.html"))
lv21.xID = "Macaca_fascicularis"
lv22 = insDoc(L7, gLnk("S", "Macaca_mulatta", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Macaca_mulatta/Macaca_mulatta_res.html"))
lv22.xID = "Macaca_mulatta"
L5 = insFld(L4, gFld("Hominoidea", "treeview_taxa.html?pic=%22Hominoidea%2Ejpg%22"))
L5.xID = "Hominoidea"
L6 = insFld(L5, gFld("Hylobatidae", "treeview_taxa.html?pic=%22Hylobatidae%2Ejpg%22"))
L6.xID = "Hylobatidae"
L7 = insFld(L6, gFld("Hylobates", "treeview_taxa.html?pic=%22Hylobates%2Ejpg%22"))
L7.xID = "Hylobates"
lv23 = insDoc(L7, gLnk("S", "Hylobates_lar", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Hylobates_lar/Hylobates_lar_res.html"))
lv23.xID = "Hylobates_lar"
L7 = insFld(L6, gFld("Symphalangus", "treeview_taxa.html?pic=%22Symphalangus%2Ejpg%22"))
L7.xID = "Symphalangus"
lv24 = insDoc(L7, gLnk("S", "Symphalangus_syndactylus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Symphalangus_syndactylus/Symphalangus_syndactylus_res.html"))
lv24.xID = "Symphalangus_syndactylus"
L6 = insFld(L5, gFld("Hominidae", "treeview_taxa.html?pic=%22Hominidae%2Ejpg%22"))
L6.xID = "Hominidae"
L7 = insFld(L6, gFld("Pongo", "treeview_taxa.html?pic=%22Pongo%2Ejpg%22"))
L7.xID = "Pongo"
lv25 = insDoc(L7, gLnk("S", "Pongo_pygmaeus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pongo_pygmaeus/Pongo_pygmaeus_res.html"))
lv25.xID = "Pongo_pygmaeus"
L7 = insFld(L6, gFld("Gorilla", "treeview_taxa.html?pic=%22Gorilla%2Ejpg%22"))
L7.xID = "Gorilla"
lv26 = insDoc(L7, gLnk("S", "Gorilla_gorilla", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gorilla_gorilla/Gorilla_gorilla_res.html"))
lv26.xID = "Gorilla_gorilla"
L7 = insFld(L6, gFld("Pan", "treeview_taxa.html?pic=%22Pan%2Ejpg%22"))
L7.xID = "Pan"
lv27 = insDoc(L7, gLnk("S", "Pan_troglodytes", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pan_troglodytes/Pan_troglodytes_res.html"))
lv27.xID = "Pan_troglodytes"
L7 = insFld(L6, gFld("Homo", "treeview_taxa.html?pic=%22Homo%2Ejpg%22"))
L7.xID = "Homo"
lv28 = insDoc(L7, gLnk("S", "Homo_sapiens", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Homo_sapiens/Homo_sapiens_res.html"))
lv28.xID = "Homo_sapiens"
foldersTree.treeID = "Primates"
