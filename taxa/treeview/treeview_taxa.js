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

foldersTree = gFld("<b>Echinodermata</b>", "treeview_taxa.html")
foldersTree.xID = "Echinodermata"
L2 = insFld(foldersTree, gFld("<p id='Asterozoa'>Asterozoa</p>", "treeview_taxa.html?pic=%22Asterozoa%2Ejpg%22"))
L2.xID = "Asterozoa"
L3 = insFld(L2, gFld("<p id='Ophiuroidea'>Ophiuroidea</p>", "treeview_taxa.html?pic=%22Ophiuroidea%2Ejpg%22"))
L3.xID = "Ophiuroidea"
L4 = insFld(L3, gFld("<p id='Ophiurida'>Ophiurida</p>", "treeview_taxa.html?pic=%22Ophiurida%2Ejpg%22"))
L4.xID = "Ophiurida"
L5 = insFld(L4, gFld("<p id='Ophiuridae'>Ophiuridae</p>", "treeview_taxa.html?pic=%22Ophiuridae%2Ejpg%22"))
L5.xID = "Ophiuridae"
L6 = insFld(L5, gFld("<p id='Ophiura'>Ophiura</p>", "treeview_taxa.html?pic=%22Ophiura%2Ejpg%22"))
L6.xID = "Ophiura"
lv1 = insDoc(L6, gLnk("S", "<p id='Ophiura_ophiura'>Ophiura_ophiura</p>", AmPpath + "Ophiura_ophiura/Ophiura_ophiura_res.html"))
lv1.xID = "Ophiura_ophiura"
lv2 = insDoc(L6, gLnk("S", "<p id='Ophiura_albida'>Ophiura_albida</p>", AmPpath + "Ophiura_albida/Ophiura_albida_res.html"))
lv2.xID = "Ophiura_albida"
L5 = insFld(L4, gFld("<p id='Amphiuridae'>Amphiuridae</p>", "treeview_taxa.html?pic=%22Amphiuridae%2Ejpg%22"))
L5.xID = "Amphiuridae"
L6 = insFld(L5, gFld("<p id='Amphiura'>Amphiura</p>", "treeview_taxa.html?pic=%22Amphiura%2Ejpg%22"))
L6.xID = "Amphiura"
lv3 = insDoc(L6, gLnk("S", "<p id='Amphiura_filiformis'>Amphiura_filiformis</p>", AmPpath + "Amphiura_filiformis/Amphiura_filiformis_res.html"))
lv3.xID = "Amphiura_filiformis"
L3 = insFld(L2, gFld("<p id='Asteroidea'>Asteroidea</p>", "treeview_taxa.html?pic=%22Asteroidea%2Ejpg%22"))
L3.xID = "Asteroidea"
L4 = insFld(L3, gFld("<p id='Forcipulatida'>Forcipulatida</p>", "treeview_taxa.html?pic=%22Forcipulatida%2Ejpg%22"))
L4.xID = "Forcipulatida"
L5 = insFld(L4, gFld("<p id='Asteriidae'>Asteriidae</p>", "treeview_taxa.html?pic=%22Asteriidae%2Ejpg%22"))
L5.xID = "Asteriidae"
L6 = insFld(L5, gFld("<p id='Asterias'>Asterias</p>", "treeview_taxa.html?pic=%22Asterias%2Ejpg%22"))
L6.xID = "Asterias"
lv4 = insDoc(L6, gLnk("S", "<p id='Asterias_rubens'>Asterias_rubens</p>", AmPpath + "Asterias_rubens/Asterias_rubens_res.html"))
lv4.xID = "Asterias_rubens"
L6 = insFld(L5, gFld("<p id='Pisaster'>Pisaster</p>", "treeview_taxa.html?pic=%22Pisaster%2Ejpg%22"))
L6.xID = "Pisaster"
lv5 = insDoc(L6, gLnk("S", "<p id='Pisaster_ochraceus'>Pisaster_ochraceus</p>", AmPpath + "Pisaster_ochraceus/Pisaster_ochraceus_res.html"))
lv5.xID = "Pisaster_ochraceus"
L4 = insFld(L3, gFld("<p id='Paxillosida'>Paxillosida</p>", "treeview_taxa.html?pic=%22Paxillosida%2Ejpg%22"))
L4.xID = "Paxillosida"
L5 = insFld(L4, gFld("<p id='Astropectinidae'>Astropectinidae</p>", "treeview_taxa.html?pic=%22Astropectinidae%2Ejpg%22"))
L5.xID = "Astropectinidae"
L6 = insFld(L5, gFld("<p id='Astropecten'>Astropecten</p>", "treeview_taxa.html?pic=%22Astropecten%2Ejpg%22"))
L6.xID = "Astropecten"
lv6 = insDoc(L6, gLnk("S", "<p id='Astropecten_aranciacus'>Astropecten_aranciacus</p>", AmPpath + "Astropecten_aranciacus/Astropecten_aranciacus_res.html"))
lv6.xID = "Astropecten_aranciacus"
lv7 = insDoc(L6, gLnk("S", "<p id='Astropecten_irregularis'>Astropecten_irregularis</p>", AmPpath + "Astropecten_irregularis/Astropecten_irregularis_res.html"))
lv7.xID = "Astropecten_irregularis"
L5 = insFld(L4, gFld("<p id='Luidiidae'>Luidiidae</p>", "treeview_taxa.html?pic=%22Luidiidae%2Ejpg%22"))
L5.xID = "Luidiidae"
L6 = insFld(L5, gFld("<p id='Luidia'>Luidia</p>", "treeview_taxa.html?pic=%22Luidia%2Ejpg%22"))
L6.xID = "Luidia"
lv8 = insDoc(L6, gLnk("S", "<p id='Luidia_sarsii'>Luidia_sarsii</p>", AmPpath + "Luidia_sarsii/Luidia_sarsii_res.html"))
lv8.xID = "Luidia_sarsii"
L4 = insFld(L3, gFld("<p id='Valvatida'>Valvatida</p>", "treeview_taxa.html?pic=%22Valvatida%2Ejpg%22"))
L4.xID = "Valvatida"
L5 = insFld(L4, gFld("<p id='Archasteridae'>Archasteridae</p>", "treeview_taxa.html?pic=%22Archasteridae%2Ejpg%22"))
L5.xID = "Archasteridae"
L6 = insFld(L5, gFld("<p id='Archaster'>Archaster</p>", "treeview_taxa.html?pic=%22Archaster%2Ejpg%22"))
L6.xID = "Archaster"
lv9 = insDoc(L6, gLnk("S", "<p id='Archaster_typicus'>Archaster_typicus</p>", AmPpath + "Archaster_typicus/Archaster_typicus_res.html"))
lv9.xID = "Archaster_typicus"
L5 = insFld(L4, gFld("<p id='Acanthasteridae'>Acanthasteridae</p>", "treeview_taxa.html?pic=%22Acanthasteridae%2Ejpg%22"))
L5.xID = "Acanthasteridae"
L6 = insFld(L5, gFld("<p id='Acanthaster'>Acanthaster</p>", "treeview_taxa.html?pic=%22Acanthaster%2Ejpg%22"))
L6.xID = "Acanthaster"
lv10 = insDoc(L6, gLnk("S", "<p id='Acanthaster_planci'>Acanthaster_planci</p>", AmPpath + "Acanthaster_planci/Acanthaster_planci_res.html"))
lv10.xID = "Acanthaster_planci"
L5 = insFld(L4, gFld("<p id='Oreasteridae'>Oreasteridae</p>", "treeview_taxa.html?pic=%22Oreasteridae%2Ejpg%22"))
L5.xID = "Oreasteridae"
L6 = insFld(L5, gFld("<p id='Protoreaster'>Protoreaster</p>", "treeview_taxa.html?pic=%22Protoreaster%2Ejpg%22"))
L6.xID = "Protoreaster"
lv11 = insDoc(L6, gLnk("S", "<p id='Protoreaster_nodosus'>Protoreaster_nodosus</p>", AmPpath + "Protoreaster_nodosus/Protoreaster_nodosus_res.html"))
lv11.xID = "Protoreaster_nodosus"
L5 = insFld(L4, gFld("<p id='Solasteridae'>Solasteridae</p>", "treeview_taxa.html?pic=%22Solasteridae%2Ejpg%22"))
L5.xID = "Solasteridae"
L6 = insFld(L5, gFld("<p id='Crossaster'>Crossaster</p>", "treeview_taxa.html?pic=%22Crossaster%2Ejpg%22"))
L6.xID = "Crossaster"
lv12 = insDoc(L6, gLnk("S", "<p id='Crossaster_papposus'>Crossaster_papposus</p>", AmPpath + "Crossaster_papposus/Crossaster_papposus_res.html"))
lv12.xID = "Crossaster_papposus"
L5 = insFld(L4, gFld("<p id='Asterinidae'>Asterinidae</p>", "treeview_taxa.html?pic=%22Asterinidae%2Ejpg%22"))
L5.xID = "Asterinidae"
L6 = insFld(L5, gFld("<p id='Asterina'>Asterina</p>", "treeview_taxa.html?pic=%22Asterina%2Ejpg%22"))
L6.xID = "Asterina"
lv13 = insDoc(L6, gLnk("S", "<p id='Asterina_gibbosa'>Asterina_gibbosa</p>", AmPpath + "Asterina_gibbosa/Asterina_gibbosa_res.html"))
lv13.xID = "Asterina_gibbosa"
L5 = insFld(L4, gFld("<p id='Odontasteridae'>Odontasteridae</p>", "treeview_taxa.html?pic=%22Odontasteridae%2Ejpg%22"))
L5.xID = "Odontasteridae"
L6 = insFld(L5, gFld("<p id='Odontaster'>Odontaster</p>", "treeview_taxa.html?pic=%22Odontaster%2Ejpg%22"))
L6.xID = "Odontaster"
lv14 = insDoc(L6, gLnk("S", "<p id='Odontaster_validus'>Odontaster_validus</p>", AmPpath + "Odontaster_validus/Odontaster_validus_res.html"))
lv14.xID = "Odontaster_validus"
L2 = insFld(foldersTree, gFld("<p id='Echinozoa'>Echinozoa</p>", "treeview_taxa.html?pic=%22Echinozoa%2Ejpg%22"))
L2.xID = "Echinozoa"
L3 = insFld(L2, gFld("<p id='Echinoidea'>Echinoidea</p>", "treeview_taxa.html?pic=%22Echinoidea%2Ejpg%22"))
L3.xID = "Echinoidea"
L4 = insFld(L3, gFld("<p id='Euechinoidea'>Euechinoidea</p>", "treeview_taxa.html?pic=%22Euechinoidea%2Ejpg%22"))
L4.xID = "Euechinoidea"
L5 = insFld(L4, gFld("<p id='Carinacea'>Carinacea</p>", "treeview_taxa.html?pic=%22Carinacea%2Ejpg%22"))
L5.xID = "Carinacea"
L6 = insFld(L5, gFld("<p id='Echinacea'>Echinacea</p>", "treeview_taxa.html?pic=%22Echinacea%2Ejpg%22"))
L6.xID = "Echinacea"
L7 = insFld(L6, gFld("<p id='Camarodonta'>Camarodonta</p>", "treeview_taxa.html?pic=%22Camarodonta%2Ejpg%22"))
L7.xID = "Camarodonta"
L8 = insFld(L7, gFld("<p id='Echinidae'>Echinidae</p>", "treeview_taxa.html?pic=%22Echinidae%2Ejpg%22"))
L8.xID = "Echinidae"
L9 = insFld(L8, gFld("<p id='Echinus'>Echinus</p>", "treeview_taxa.html?pic=%22Echinus%2Ejpg%22"))
L9.xID = "Echinus"
lv15 = insDoc(L9, gLnk("S", "<p id='Echinus_esculentus'>Echinus_esculentus</p>", AmPpath + "Echinus_esculentus/Echinus_esculentus_res.html"))
lv15.xID = "Echinus_esculentus"
L9 = insFld(L8, gFld("<p id='Gracilechinus'>Gracilechinus</p>", "treeview_taxa.html?pic=%22Gracilechinus%2Ejpg%22"))
L9.xID = "Gracilechinus"
lv16 = insDoc(L9, gLnk("S", "<p id='Gracilechinus_affinis'>Gracilechinus_affinis</p>", AmPpath + "Gracilechinus_affinis/Gracilechinus_affinis_res.html"))
lv16.xID = "Gracilechinus_affinis"
L9 = insFld(L8, gFld("<p id='Sterechinus'>Sterechinus</p>", "treeview_taxa.html?pic=%22Sterechinus%2Ejpg%22"))
L9.xID = "Sterechinus"
lv17 = insDoc(L9, gLnk("S", "<p id='Sterechinus_neumayeri'>Sterechinus_neumayeri</p>", AmPpath + "Sterechinus_neumayeri/Sterechinus_neumayeri_res.html"))
lv17.xID = "Sterechinus_neumayeri"
L8 = insFld(L7, gFld("<p id='Odontophora'>Odontophora</p>", "treeview_taxa.html?pic=%22Odontophora%2Ejpg%22"))
L8.xID = "Odontophora"
L9 = insFld(L8, gFld("<p id='Strongylocentrotidae'>Strongylocentrotidae</p>", "treeview_taxa.html?pic=%22Strongylocentrotidae%2Ejpg%22"))
L9.xID = "Strongylocentrotidae"
L10 = insFld(L9, gFld("<p id='Mesocentrotus'>Mesocentrotus</p>", "treeview_taxa.html?pic=%22Mesocentrotus%2Ejpg%22"))
L10.xID = "Mesocentrotus"
lv18 = insDoc(L10, gLnk("S", "<p id='Mesocentrotus_franciscanus'>Mesocentrotus_franciscanus</p>", AmPpath + "Mesocentrotus_franciscanus/Mesocentrotus_franciscanus_res.html"))
lv18.xID = "Mesocentrotus_franciscanus"
L10 = insFld(L9, gFld("<p id='Strongylocentrotus'>Strongylocentrotus</p>", "treeview_taxa.html?pic=%22Strongylocentrotus%2Ejpg%22"))
L10.xID = "Strongylocentrotus"
lv19 = insDoc(L10, gLnk("S", "<p id='Strongylocentrotus_purpuratus'>Strongylocentrotus_purpuratus</p>", AmPpath + "Strongylocentrotus_purpuratus/Strongylocentrotus_purpuratus_res.html"))
lv19.xID = "Strongylocentrotus_purpuratus"
lv20 = insDoc(L10, gLnk("S", "<p id='Strongylocentrotus_droebachiensis'>Strongylocentrotus_droebachiensis</p>", AmPpath + "Strongylocentrotus_droebachiensis/Strongylocentrotus_droebachiensis_res.html"))
lv20.xID = "Strongylocentrotus_droebachiensis"
L9 = insFld(L8, gFld("<p id='Toxopneustidae'>Toxopneustidae</p>", "treeview_taxa.html?pic=%22Toxopneustidae%2Ejpg%22"))
L9.xID = "Toxopneustidae"
L10 = insFld(L9, gFld("<p id='Lytechinus'>Lytechinus</p>", "treeview_taxa.html?pic=%22Lytechinus%2Ejpg%22"))
L10.xID = "Lytechinus"
lv21 = insDoc(L10, gLnk("S", "<p id='Lytechinus_variegatus'>Lytechinus_variegatus</p>", AmPpath + "Lytechinus_variegatus/Lytechinus_variegatus_res.html"))
lv21.xID = "Lytechinus_variegatus"
L8 = insFld(L7, gFld("<p id='Parechinidae'>Parechinidae</p>", "treeview_taxa.html?pic=%22Parechinidae%2Ejpg%22"))
L8.xID = "Parechinidae"
L9 = insFld(L8, gFld("<p id='Paracentrotus'>Paracentrotus</p>", "treeview_taxa.html?pic=%22Paracentrotus%2Ejpg%22"))
L9.xID = "Paracentrotus"
lv22 = insDoc(L9, gLnk("S", "<p id='Paracentrotus_lividus'>Paracentrotus_lividus</p>", AmPpath + "Paracentrotus_lividus/Paracentrotus_lividus_res.html"))
lv22.xID = "Paracentrotus_lividus"
L9 = insFld(L8, gFld("<p id='Psammechinus'>Psammechinus</p>", "treeview_taxa.html?pic=%22Psammechinus%2Ejpg%22"))
L9.xID = "Psammechinus"
lv23 = insDoc(L9, gLnk("S", "<p id='Psammechinus_miliaris'>Psammechinus_miliaris</p>", AmPpath + "Psammechinus_miliaris/Psammechinus_miliaris_res.html"))
lv23.xID = "Psammechinus_miliaris"
L5 = insFld(L4, gFld("<p id='Irregularia'>Irregularia</p>", "treeview_taxa.html?pic=%22Irregularia%2Ejpg%22"))
L5.xID = "Irregularia"
L6 = insFld(L5, gFld("<p id='Atelostomata'>Atelostomata</p>", "treeview_taxa.html?pic=%22Atelostomata%2Ejpg%22"))
L6.xID = "Atelostomata"
L7 = insFld(L6, gFld("<p id='Spatangoida'>Spatangoida</p>", "treeview_taxa.html?pic=%22Spatangoida%2Ejpg%22"))
L7.xID = "Spatangoida"
L8 = insFld(L7, gFld("<p id='Loveniidae'>Loveniidae</p>", "treeview_taxa.html?pic=%22Loveniidae%2Ejpg%22"))
L8.xID = "Loveniidae"
L9 = insFld(L8, gFld("<p id='Echinocardium'>Echinocardium</p>", "treeview_taxa.html?pic=%22Echinocardium%2Ejpg%22"))
L9.xID = "Echinocardium"
lv24 = insDoc(L9, gLnk("S", "<p id='Echinocardium_cordatum'>Echinocardium_cordatum</p>", AmPpath + "Echinocardium_cordatum/Echinocardium_cordatum_res.html"))
lv24.xID = "Echinocardium_cordatum"
L6 = insFld(L5, gFld("<p id='Neognathostomata'>Neognathostomata</p>", "treeview_taxa.html?pic=%22Neognathostomata%2Ejpg%22"))
L6.xID = "Neognathostomata"
L7 = insFld(L6, gFld("<p id='Clypeasteroida'>Clypeasteroida</p>", "treeview_taxa.html?pic=%22Clypeasteroida%2Ejpg%22"))
L7.xID = "Clypeasteroida"
L8 = insFld(L7, gFld("<p id='Clypeasteridae'>Clypeasteridae</p>", "treeview_taxa.html?pic=%22Clypeasteridae%2Ejpg%22"))
L8.xID = "Clypeasteridae"
L9 = insFld(L8, gFld("<p id='Clypeaster'>Clypeaster</p>", "treeview_taxa.html?pic=%22Clypeaster%2Ejpg%22"))
L9.xID = "Clypeaster"
lv25 = insDoc(L9, gLnk("S", "<p id='Clypeaster_subdepressus'>Clypeaster_subdepressus</p>", AmPpath + "Clypeaster_subdepressus/Clypeaster_subdepressus_res.html"))
lv25.xID = "Clypeaster_subdepressus"
L3 = insFld(L2, gFld("<p id='Holothuroidea'>Holothuroidea</p>", "treeview_taxa.html?pic=%22Holothuroidea%2Ejpg%22"))
L3.xID = "Holothuroidea"
L4 = insFld(L3, gFld("<p id='Aspidochirotida'>Aspidochirotida</p>", "treeview_taxa.html?pic=%22Aspidochirotida%2Ejpg%22"))
L4.xID = "Aspidochirotida"
L5 = insFld(L4, gFld("<p id='Holothuriidae'>Holothuriidae</p>", "treeview_taxa.html?pic=%22Holothuriidae%2Ejpg%22"))
L5.xID = "Holothuriidae"
L6 = insFld(L5, gFld("<p id='Holothuria'>Holothuria</p>", "treeview_taxa.html?pic=%22Holothuria%2Ejpg%22"))
L6.xID = "Holothuria"
lv26 = insDoc(L6, gLnk("S", "<p id='Holothuria_scabra'>Holothuria_scabra</p>", AmPpath + "Holothuria_scabra/Holothuria_scabra_res.html"))
lv26.xID = "Holothuria_scabra"
L5 = insFld(L4, gFld("<p id='Stichopodidae'>Stichopodidae</p>", "treeview_taxa.html?pic=%22Stichopodidae%2Ejpg%22"))
L5.xID = "Stichopodidae"
L6 = insFld(L5, gFld("<p id='Stichopus'>Stichopus</p>", "treeview_taxa.html?pic=%22Stichopus%2Ejpg%22"))
L6.xID = "Stichopus"
lv27 = insDoc(L6, gLnk("S", "<p id='Stichopus_vastus'>Stichopus_vastus</p>", AmPpath + "Stichopus_vastus/Stichopus_vastus_res.html"))
lv27.xID = "Stichopus_vastus"
foldersTree.treeID = "Echinodermata"
