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

foldersTree = gFld("<b>Echinodermata</b>", "treeview_taxa.html")
L2 = insFld(foldersTree, gFld("Asterozoa", "treeview_taxa.html?pic=%22Asterozoa%2Ejpg%22"))
L3 = insFld(L2, gFld("Ophiuroidea", "treeview_taxa.html?pic=%22Ophiuroidea%2Ejpg%22"))
L4 = insFld(L3, gFld("Ophiurida", "treeview_taxa.html?pic=%22Ophiurida%2Ejpg%22"))
L5 = insFld(L4, gFld("Ophiuridae", "treeview_taxa.html?pic=%22Ophiuridae%2Ejpg%22"))
L6 = insFld(L5, gFld("Ophiura", "treeview_taxa.html?pic=%22Ophiura%2Ejpg%22"))
insDoc(L6, gLnk("S", "Ophiura_ophiura", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ophiura_ophiura_res.html"))
insDoc(L6, gLnk("S", "Ophiura_albida", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ophiura_albida_res.html"))
L5 = insFld(L4, gFld("Amphiuridae", "treeview_taxa.html?pic=%22Amphiuridae%2Ejpg%22"))
L6 = insFld(L5, gFld("Amphiura", "treeview_taxa.html?pic=%22Amphiura%2Ejpg%22"))
insDoc(L6, gLnk("S", "Amphiura_filiformis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Amphiura_filiformis_res.html"))
L3 = insFld(L2, gFld("Asteroidea", "treeview_taxa.html?pic=%22Asteroidea%2Ejpg%22"))
L4 = insFld(L3, gFld("Forcipulatida", "treeview_taxa.html?pic=%22Forcipulatida%2Ejpg%22"))
L5 = insFld(L4, gFld("Asteriidae", "treeview_taxa.html?pic=%22Asteriidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Asterias", "treeview_taxa.html?pic=%22Asterias%2Ejpg%22"))
insDoc(L6, gLnk("S", "Asterias_rubens", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Asterias_rubens_res.html"))
L6 = insFld(L5, gFld("Pisaster", "treeview_taxa.html?pic=%22Pisaster%2Ejpg%22"))
insDoc(L6, gLnk("S", "Pisaster_ochraceus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pisaster_ochraceus_res.html"))
L4 = insFld(L3, gFld("Paxillosida", "treeview_taxa.html?pic=%22Paxillosida%2Ejpg%22"))
L5 = insFld(L4, gFld("Astropectinidae", "treeview_taxa.html?pic=%22Astropectinidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Astropecten", "treeview_taxa.html?pic=%22Astropecten%2Ejpg%22"))
insDoc(L6, gLnk("S", "Astropecten_aranciacus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Astropecten_aranciacus_res.html"))
insDoc(L6, gLnk("S", "Astropecten_irregularis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Astropecten_irregularis_res.html"))
L4 = insFld(L3, gFld("Valvatida", "treeview_taxa.html?pic=%22Valvatida%2Ejpg%22"))
L5 = insFld(L4, gFld("Archasteridae", "treeview_taxa.html?pic=%22Archasteridae%2Ejpg%22"))
L6 = insFld(L5, gFld("Archaster", "treeview_taxa.html?pic=%22Archaster%2Ejpg%22"))
insDoc(L6, gLnk("S", "Archaster_typicus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Archaster_typicus_res.html"))
L5 = insFld(L4, gFld("Acanthasteridae", "treeview_taxa.html?pic=%22Acanthasteridae%2Ejpg%22"))
L6 = insFld(L5, gFld("Acanthaster", "treeview_taxa.html?pic=%22Acanthaster%2Ejpg%22"))
insDoc(L6, gLnk("S", "Acanthaster_planci", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Acanthaster_planci_res.html"))
L5 = insFld(L4, gFld("Oreasteridae", "treeview_taxa.html?pic=%22Oreasteridae%2Ejpg%22"))
L6 = insFld(L5, gFld("Protoreaster", "treeview_taxa.html?pic=%22Protoreaster%2Ejpg%22"))
insDoc(L6, gLnk("S", "Protoreaster_nodosus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Protoreaster_nodosus_res.html"))
L5 = insFld(L4, gFld("Solasteridae", "treeview_taxa.html?pic=%22Solasteridae%2Ejpg%22"))
L6 = insFld(L5, gFld("Crossaster", "treeview_taxa.html?pic=%22Crossaster%2Ejpg%22"))
insDoc(L6, gLnk("S", "Crossaster_papposus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Crossaster_papposus_res.html"))
L5 = insFld(L4, gFld("Asterinidae", "treeview_taxa.html?pic=%22Asterinidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Asterina", "treeview_taxa.html?pic=%22Asterina%2Ejpg%22"))
insDoc(L6, gLnk("S", "Asterina_gibbosa", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Asterina_gibbosa_res.html"))
L5 = insFld(L4, gFld("Odontasteridae", "treeview_taxa.html?pic=%22Odontasteridae%2Ejpg%22"))
L6 = insFld(L5, gFld("Odontaster", "treeview_taxa.html?pic=%22Odontaster%2Ejpg%22"))
insDoc(L6, gLnk("S", "Odontaster_validus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Odontaster_validus_res.html"))
L2 = insFld(foldersTree, gFld("Echinozoa", "treeview_taxa.html?pic=%22Echinozoa%2Ejpg%22"))
L3 = insFld(L2, gFld("Echinoidea", "treeview_taxa.html?pic=%22Echinoidea%2Ejpg%22"))
L4 = insFld(L3, gFld("Euechinoidea", "treeview_taxa.html?pic=%22Euechinoidea%2Ejpg%22"))
L5 = insFld(L4, gFld("Carinacea", "treeview_taxa.html?pic=%22Carinacea%2Ejpg%22"))
L6 = insFld(L5, gFld("Echinacea", "treeview_taxa.html?pic=%22Echinacea%2Ejpg%22"))
L7 = insFld(L6, gFld("Camarodonta", "treeview_taxa.html?pic=%22Camarodonta%2Ejpg%22"))
L8 = insFld(L7, gFld("Echinidae", "treeview_taxa.html?pic=%22Echinidae%2Ejpg%22"))
L9 = insFld(L8, gFld("Echinus", "treeview_taxa.html?pic=%22Echinus%2Ejpg%22"))
insDoc(L9, gLnk("S", "Echinus_esculentus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Echinus_esculentus_res.html"))
L9 = insFld(L8, gFld("Gracilechinus", "treeview_taxa.html?pic=%22Gracilechinus%2Ejpg%22"))
insDoc(L9, gLnk("S", "Gracilechinus_affinis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gracilechinus_affinis_res.html"))
L9 = insFld(L8, gFld("Sterechinus", "treeview_taxa.html?pic=%22Sterechinus%2Ejpg%22"))
insDoc(L9, gLnk("S", "Sterechinus_neumayeri", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sterechinus_neumayeri_res.html"))
L8 = insFld(L7, gFld("Odontophora", "treeview_taxa.html?pic=%22Odontophora%2Ejpg%22"))
L9 = insFld(L8, gFld("Strongylocentrotidae", "treeview_taxa.html?pic=%22Strongylocentrotidae%2Ejpg%22"))
L10 = insFld(L9, gFld("Mesocentrotus", "treeview_taxa.html?pic=%22Mesocentrotus%2Ejpg%22"))
insDoc(L10, gLnk("S", "Mesocentrotus_franciscanus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mesocentrotus_franciscanus_res.html"))
L10 = insFld(L9, gFld("Strongylocentrotus", "treeview_taxa.html?pic=%22Strongylocentrotus%2Ejpg%22"))
insDoc(L10, gLnk("S", "Strongylocentrotus_purpuratus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Strongylocentrotus_purpuratus_res.html"))
insDoc(L10, gLnk("S", "Strongylocentrotus_droebachiensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Strongylocentrotus_droebachiensis_res.html"))
L9 = insFld(L8, gFld("Toxopneustidae", "treeview_taxa.html?pic=%22Toxopneustidae%2Ejpg%22"))
L10 = insFld(L9, gFld("Lytechinus", "treeview_taxa.html?pic=%22Lytechinus%2Ejpg%22"))
insDoc(L10, gLnk("S", "Lytechinus_variegatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lytechinus_variegatus_res.html"))
L8 = insFld(L7, gFld("Parechinidae", "treeview_taxa.html?pic=%22Parechinidae%2Ejpg%22"))
L9 = insFld(L8, gFld("Paracentrotus", "treeview_taxa.html?pic=%22Paracentrotus%2Ejpg%22"))
insDoc(L9, gLnk("S", "Paracentrotus_lividus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Paracentrotus_lividus_res.html"))
L5 = insFld(L4, gFld("Irregularia", "treeview_taxa.html?pic=%22Irregularia%2Ejpg%22"))
L6 = insFld(L5, gFld("Atelostomata", "treeview_taxa.html?pic=%22Atelostomata%2Ejpg%22"))
L7 = insFld(L6, gFld("Spatangoida", "treeview_taxa.html?pic=%22Spatangoida%2Ejpg%22"))
L8 = insFld(L7, gFld("Loveniidae", "treeview_taxa.html?pic=%22Loveniidae%2Ejpg%22"))
L9 = insFld(L8, gFld("Echinocardium", "treeview_taxa.html?pic=%22Echinocardium%2Ejpg%22"))
insDoc(L9, gLnk("S", "Echinocardium_cordatum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Echinocardium_cordatum_res.html"))
L6 = insFld(L5, gFld("Neognathostomata", "treeview_taxa.html?pic=%22Neognathostomata%2Ejpg%22"))
L7 = insFld(L6, gFld("Clypeasteroida", "treeview_taxa.html?pic=%22Clypeasteroida%2Ejpg%22"))
L8 = insFld(L7, gFld("Clypeasteridae", "treeview_taxa.html?pic=%22Clypeasteridae%2Ejpg%22"))
L9 = insFld(L8, gFld("Clypeaster", "treeview_taxa.html?pic=%22Clypeaster%2Ejpg%22"))
insDoc(L9, gLnk("S", "Clypeaster_subdepressus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Clypeaster_subdepressus_res.html"))
L3 = insFld(L2, gFld("Holothuroidea", "treeview_taxa.html?pic=%22Holothuroidea%2Ejpg%22"))
L4 = insFld(L3, gFld("Aspidochirotida", "treeview_taxa.html?pic=%22Aspidochirotida%2Ejpg%22"))
L5 = insFld(L4, gFld("Holothuriidae", "treeview_taxa.html?pic=%22Holothuriidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Holothuria", "treeview_taxa.html?pic=%22Holothuria%2Ejpg%22"))
insDoc(L6, gLnk("S", "Holothuria_scabra", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Holothuria_scabra_res.html"))
L5 = insFld(L4, gFld("Stichopodidae", "treeview_taxa.html?pic=%22Stichopodidae%2Ejpg%22"))
L6 = insFld(L5, gFld("Stichopus", "treeview_taxa.html?pic=%22Stichopus%2Ejpg%22"))
insDoc(L6, gLnk("S", "Stichopus_vastus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Stichopus_vastus_res.html"))
foldersTree.treeID = "Echinodermata"
