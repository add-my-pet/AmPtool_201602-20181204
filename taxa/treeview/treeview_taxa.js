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

foldersTree = gFld("<b>Bovidae</b>", "treeview_taxa.html")
foldersTree.xID = "Bovidae"
L2 = insFld(foldersTree, gFld("<p id='Boodontia'>Boodontia</p>", "treeview_taxa.html?pic=%22Boodontia%2Ejpg%22"))
L2.xID = "Boodontia"
L3 = insFld(L2, gFld("<p id='Tragelaphini'>Tragelaphini</p>", "treeview_taxa.html?pic=%22Tragelaphini%2Ejpg%22"))
L3.xID = "Tragelaphini"
L4 = insFld(L3, gFld("<p id='Taurotragus'>Taurotragus</p>", "treeview_taxa.html?pic=%22Taurotragus%2Ejpg%22"))
L4.xID = "Taurotragus"
lv1 = insDoc(L4, gLnk("S", "<p id='Taurotragus_oryx'>Taurotragus_oryx</p>", AmPpath + "Taurotragus_oryx/Taurotragus_oryx_res.html"))
lv1.xID = "Taurotragus_oryx"
L4 = insFld(L3, gFld("<p id='Tragelaphus'>Tragelaphus</p>", "treeview_taxa.html?pic=%22Tragelaphus%2Ejpg%22"))
L4.xID = "Tragelaphus"
lv2 = insDoc(L4, gLnk("S", "<p id='Tragelaphus_strepsiceros'>Tragelaphus_strepsiceros</p>", AmPpath + "Tragelaphus_strepsiceros/Tragelaphus_strepsiceros_res.html"))
lv2.xID = "Tragelaphus_strepsiceros"
L3 = insFld(L2, gFld("<p id='Bovini'>Bovini</p>", "treeview_taxa.html?pic=%22Bovini%2Ejpg%22"))
L3.xID = "Bovini"
L4 = insFld(L3, gFld("<p id='Bos'>Bos</p>", "treeview_taxa.html?pic=%22Bos%2Ejpg%22"))
L4.xID = "Bos"
lv3 = insDoc(L4, gLnk("S", "<p id='Bos_primigenius_Angus'>Bos_primigenius_Angus</p>", AmPpath + "Bos_primigenius_Angus/Bos_primigenius_Angus_res.html"))
lv3.xID = "Bos_primigenius_Angus"
lv4 = insDoc(L4, gLnk("S", "<p id='Bos_primigenius_Holstein'>Bos_primigenius_Holstein</p>", AmPpath + "Bos_primigenius_Holstein/Bos_primigenius_Holstein_res.html"))
lv4.xID = "Bos_primigenius_Holstein"
lv5 = insDoc(L4, gLnk("S", "<p id='Bos_primigenius_Brahman'>Bos_primigenius_Brahman</p>", AmPpath + "Bos_primigenius_Brahman/Bos_primigenius_Brahman_res.html"))
lv5.xID = "Bos_primigenius_Brahman"
L4 = insFld(L3, gFld("<p id='Bison'>Bison</p>", "treeview_taxa.html?pic=%22Bison%2Ejpg%22"))
L4.xID = "Bison"
lv6 = insDoc(L4, gLnk("S", "<p id='Bison_bonasus'>Bison_bonasus</p>", AmPpath + "Bison_bonasus/Bison_bonasus_res.html"))
lv6.xID = "Bison_bonasus"
L4 = insFld(L3, gFld("<p id='Syncerus'>Syncerus</p>", "treeview_taxa.html?pic=%22Syncerus%2Ejpg%22"))
L4.xID = "Syncerus"
lv7 = insDoc(L4, gLnk("S", "<p id='Syncerus_caffer'>Syncerus_caffer</p>", AmPpath + "Syncerus_caffer/Syncerus_caffer_res.html"))
lv7.xID = "Syncerus_caffer"
L2 = insFld(foldersTree, gFld("<p id='Aegodontia'>Aegodontia</p>", "treeview_taxa.html?pic=%22Aegodontia%2Ejpg%22"))
L2.xID = "Aegodontia"
L3 = insFld(L2, gFld("<p id='Antilopinae'>Antilopinae</p>", "treeview_taxa.html?pic=%22Antilopinae%2Ejpg%22"))
L3.xID = "Antilopinae"
L4 = insFld(L3, gFld("<p id='Antilopini'>Antilopini</p>", "treeview_taxa.html?pic=%22Antilopini%2Ejpg%22"))
L4.xID = "Antilopini"
L5 = insFld(L4, gFld("<p id='Gazella'>Gazella</p>", "treeview_taxa.html?pic=%22Gazella%2Ejpg%22"))
L5.xID = "Gazella"
lv8 = insDoc(L5, gLnk("S", "<p id='Gazella_subgutturosa'>Gazella_subgutturosa</p>", AmPpath + "Gazella_subgutturosa/Gazella_subgutturosa_res.html"))
lv8.xID = "Gazella_subgutturosa"
L5 = insFld(L4, gFld("<p id='Antidorcas'>Antidorcas</p>", "treeview_taxa.html?pic=%22Antidorcas%2Ejpg%22"))
L5.xID = "Antidorcas"
lv9 = insDoc(L5, gLnk("S", "<p id='Antidorcas_marsupialis'>Antidorcas_marsupialis</p>", AmPpath + "Antidorcas_marsupialis/Antidorcas_marsupialis_res.html"))
lv9.xID = "Antidorcas_marsupialis"
L5 = insFld(L4, gFld("<p id='Saiga'>Saiga</p>", "treeview_taxa.html?pic=%22Saiga%2Ejpg%22"))
L5.xID = "Saiga"
lv10 = insDoc(L5, gLnk("S", "<p id='Saiga_tatarica'>Saiga_tatarica</p>", AmPpath + "Saiga_tatarica/Saiga_tatarica_res.html"))
lv10.xID = "Saiga_tatarica"
L4 = insFld(L3, gFld("<p id='Neotragini'>Neotragini</p>", "treeview_taxa.html?pic=%22Neotragini%2Ejpg%22"))
L4.xID = "Neotragini"
L5 = insFld(L4, gFld("<p id='Madoqua'>Madoqua</p>", "treeview_taxa.html?pic=%22Madoqua%2Ejpg%22"))
L5.xID = "Madoqua"
lv11 = insDoc(L5, gLnk("S", "<p id='Madoqua_kirkii'>Madoqua_kirkii</p>", AmPpath + "Madoqua_kirkii/Madoqua_kirkii_res.html"))
lv11.xID = "Madoqua_kirkii"
L3 = insFld(L2, gFld("<p id='Cephalophinae'>Cephalophinae</p>", "treeview_taxa.html?pic=%22Cephalophinae%2Ejpg%22"))
L3.xID = "Cephalophinae"
L4 = insFld(L3, gFld("<p id='Sylvicapra'>Sylvicapra</p>", "treeview_taxa.html?pic=%22Sylvicapra%2Ejpg%22"))
L4.xID = "Sylvicapra"
lv12 = insDoc(L4, gLnk("S", "<p id='Sylvicapra_grimmia'>Sylvicapra_grimmia</p>", AmPpath + "Sylvicapra_grimmia/Sylvicapra_grimmia_res.html"))
lv12.xID = "Sylvicapra_grimmia"
L3 = insFld(L2, gFld("<p id='Reduncinae'>Reduncinae</p>", "treeview_taxa.html?pic=%22Reduncinae%2Ejpg%22"))
L3.xID = "Reduncinae"
L4 = insFld(L3, gFld("<p id='Kobus'>Kobus</p>", "treeview_taxa.html?pic=%22Kobus%2Ejpg%22"))
L4.xID = "Kobus"
lv13 = insDoc(L4, gLnk("S", "<p id='Kobus_kob'>Kobus_kob</p>", AmPpath + "Kobus_kob/Kobus_kob_res.html"))
lv13.xID = "Kobus_kob"
L3 = insFld(L2, gFld("<p id='Aepycerotinae'>Aepycerotinae</p>", "treeview_taxa.html?pic=%22Aepycerotinae%2Ejpg%22"))
L3.xID = "Aepycerotinae"
L4 = insFld(L3, gFld("<p id='Aepyceros'>Aepyceros</p>", "treeview_taxa.html?pic=%22Aepyceros%2Ejpg%22"))
L4.xID = "Aepyceros"
lv14 = insDoc(L4, gLnk("S", "<p id='Aepyceros_melampus'>Aepyceros_melampus</p>", AmPpath + "Aepyceros_melampus/Aepyceros_melampus_res.html"))
lv14.xID = "Aepyceros_melampus"
L3 = insFld(L2, gFld("<p id='Caprinae'>Caprinae</p>", "treeview_taxa.html?pic=%22Caprinae%2Ejpg%22"))
L3.xID = "Caprinae"
L4 = insFld(L3, gFld("<p id='Ovibovini'>Ovibovini</p>", "treeview_taxa.html?pic=%22Ovibovini%2Ejpg%22"))
L4.xID = "Ovibovini"
L5 = insFld(L4, gFld("<p id='Ovibos'>Ovibos</p>", "treeview_taxa.html?pic=%22Ovibos%2Ejpg%22"))
L5.xID = "Ovibos"
lv15 = insDoc(L5, gLnk("S", "<p id='Ovibos_moschatus'>Ovibos_moschatus</p>", AmPpath + "Ovibos_moschatus/Ovibos_moschatus_res.html"))
lv15.xID = "Ovibos_moschatus"
L4 = insFld(L3, gFld("<p id='Caprini'>Caprini</p>", "treeview_taxa.html?pic=%22Caprini%2Ejpg%22"))
L4.xID = "Caprini"
L5 = insFld(L4, gFld("<p id='Capra'>Capra</p>", "treeview_taxa.html?pic=%22Capra%2Ejpg%22"))
L5.xID = "Capra"
lv16 = insDoc(L5, gLnk("S", "<p id='Capra_ibex'>Capra_ibex</p>", AmPpath + "Capra_ibex/Capra_ibex_res.html"))
lv16.xID = "Capra_ibex"
L5 = insFld(L4, gFld("<p id='Ovis'>Ovis</p>", "treeview_taxa.html?pic=%22Ovis%2Ejpg%22"))
L5.xID = "Ovis"
lv17 = insDoc(L5, gLnk("S", "<p id='Ovis_canadensis'>Ovis_canadensis</p>", AmPpath + "Ovis_canadensis/Ovis_canadensis_res.html"))
lv17.xID = "Ovis_canadensis"
L4 = insFld(L3, gFld("<p id='Naemorhedini'>Naemorhedini</p>", "treeview_taxa.html?pic=%22Naemorhedini%2Ejpg%22"))
L4.xID = "Naemorhedini"
L5 = insFld(L4, gFld("<p id='Capricornis'>Capricornis</p>", "treeview_taxa.html?pic=%22Capricornis%2Ejpg%22"))
L5.xID = "Capricornis"
lv18 = insDoc(L5, gLnk("S", "<p id='Capricornis_crispus'>Capricornis_crispus</p>", AmPpath + "Capricornis_crispus/Capricornis_crispus_res.html"))
lv18.xID = "Capricornis_crispus"
L5 = insFld(L4, gFld("<p id='Oreamnos'>Oreamnos</p>", "treeview_taxa.html?pic=%22Oreamnos%2Ejpg%22"))
L5.xID = "Oreamnos"
lv19 = insDoc(L5, gLnk("S", "<p id='Oreamnos_americanus'>Oreamnos_americanus</p>", AmPpath + "Oreamnos_americanus/Oreamnos_americanus_res.html"))
lv19.xID = "Oreamnos_americanus"
L5 = insFld(L4, gFld("<p id='Rupicapra'>Rupicapra</p>", "treeview_taxa.html?pic=%22Rupicapra%2Ejpg%22"))
L5.xID = "Rupicapra"
lv20 = insDoc(L5, gLnk("S", "<p id='Rupicapra_rupicapra'>Rupicapra_rupicapra</p>", AmPpath + "Rupicapra_rupicapra/Rupicapra_rupicapra_res.html"))
lv20.xID = "Rupicapra_rupicapra"
L3 = insFld(L2, gFld("<p id='Hippotraginae'>Hippotraginae</p>", "treeview_taxa.html?pic=%22Hippotraginae%2Ejpg%22"))
L3.xID = "Hippotraginae"
L4 = insFld(L3, gFld("<p id='Hippotragus'>Hippotragus</p>", "treeview_taxa.html?pic=%22Hippotragus%2Ejpg%22"))
L4.xID = "Hippotragus"
lv21 = insDoc(L4, gLnk("S", "<p id='Hippotragus_niger'>Hippotragus_niger</p>", AmPpath + "Hippotragus_niger/Hippotragus_niger_res.html"))
lv21.xID = "Hippotragus_niger"
L3 = insFld(L2, gFld("<p id='Alcelaphinae'>Alcelaphinae</p>", "treeview_taxa.html?pic=%22Alcelaphinae%2Ejpg%22"))
L3.xID = "Alcelaphinae"
L4 = insFld(L3, gFld("<p id='Connochaetes'>Connochaetes</p>", "treeview_taxa.html?pic=%22Connochaetes%2Ejpg%22"))
L4.xID = "Connochaetes"
lv22 = insDoc(L4, gLnk("S", "<p id='Connochaetes_taurinus'>Connochaetes_taurinus</p>", AmPpath + "Connochaetes_taurinus/Connochaetes_taurinus_res.html"))
lv22.xID = "Connochaetes_taurinus"
foldersTree.treeID = "Bovidae"
