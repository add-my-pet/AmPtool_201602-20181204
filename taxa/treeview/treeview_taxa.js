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

foldersTree = gFld("<b>Cetartiodactyla</b>", "treeview_taxa.html")
foldersTree.xID = "Cetartiodactyla"
L2 = insFld(foldersTree, gFld("<p id='Tylopoda'>Tylopoda</p>", "treeview_taxa.html?pic=%22Tylopoda%2Ejpg%22"))
L2.xID = "Tylopoda"
L3 = insFld(L2, gFld("<p id='Camelidae'>Camelidae</p>", "treeview_taxa.html?pic=%22Camelidae%2Ejpg%22"))
L3.xID = "Camelidae"
L4 = insFld(L3, gFld("<p id='Camelus'>Camelus</p>", "treeview_taxa.html?pic=%22Camelus%2Ejpg%22"))
L4.xID = "Camelus"
lv1 = insDoc(L4, gLnk("S", "<p id='Camelus_dromedarius'>Camelus_dromedarius</p>", AmPpath + "Camelus_dromedarius/Camelus_dromedarius_res.html"))
lv1.xID = "Camelus_dromedarius"
L4 = insFld(L3, gFld("<p id='Lama'>Lama</p>", "treeview_taxa.html?pic=%22Lama%2Ejpg%22"))
L4.xID = "Lama"
lv2 = insDoc(L4, gLnk("S", "<p id='Lama_glama_guanicoe'>Lama_glama_guanicoe</p>", AmPpath + "Lama_glama_guanicoe/Lama_glama_guanicoe_res.html"))
lv2.xID = "Lama_glama_guanicoe"
L2 = insFld(foldersTree, gFld("<p id='Artiofabula'>Artiofabula</p>", "treeview_taxa.html?pic=%22Artiofabula%2Ejpg%22"))
L2.xID = "Artiofabula"
L3 = insFld(L2, gFld("<p id='Suina'>Suina</p>", "treeview_taxa.html?pic=%22Suina%2Ejpg%22"))
L3.xID = "Suina"
L4 = insFld(L3, gFld("<p id='Suidae'>Suidae</p>", "treeview_taxa.html?pic=%22Suidae%2Ejpg%22"))
L4.xID = "Suidae"
L5 = insFld(L4, gFld("<p id='Sus'>Sus</p>", "treeview_taxa.html?pic=%22Sus%2Ejpg%22"))
L5.xID = "Sus"
lv3 = insDoc(L5, gLnk("S", "<p id='Sus_scrofa'>Sus_scrofa</p>", AmPpath + "Sus_scrofa/Sus_scrofa_res.html"))
lv3.xID = "Sus_scrofa"
L5 = insFld(L4, gFld("<p id='Phacochoerus'>Phacochoerus</p>", "treeview_taxa.html?pic=%22Phacochoerus%2Ejpg%22"))
L5.xID = "Phacochoerus"
lv4 = insDoc(L5, gLnk("S", "<p id='Phacochoerus_aethiopicus'>Phacochoerus_aethiopicus</p>", AmPpath + "Phacochoerus_aethiopicus/Phacochoerus_aethiopicus_res.html"))
lv4.xID = "Phacochoerus_aethiopicus"
L4 = insFld(L3, gFld("<p id='Tayassuidae'>Tayassuidae</p>", "treeview_taxa.html?pic=%22Tayassuidae%2Ejpg%22"))
L4.xID = "Tayassuidae"
L5 = insFld(L4, gFld("<p id='Pecari'>Pecari</p>", "treeview_taxa.html?pic=%22Pecari%2Ejpg%22"))
L5.xID = "Pecari"
lv5 = insDoc(L5, gLnk("S", "<p id='Pecari_tajacu'>Pecari_tajacu</p>", AmPpath + "Pecari_tajacu/Pecari_tajacu_res.html"))
lv5.xID = "Pecari_tajacu"
L3 = insFld(L2, gFld("<p id='Centruminantia'>Centruminantia</p>", "treeview_taxa.html?pic=%22Centruminantia%2Ejpg%22"))
L3.xID = "Centruminantia"
L4 = insFld(L3, gFld("<p id='Cetancodontamorpha'>Cetancodontamorpha</p>", "treeview_taxa.html?pic=%22Cetancodontamorpha%2Ejpg%22"))
L4.xID = "Cetancodontamorpha"
L5 = insFld(L4, gFld("<p id='Cetacea'>Cetacea</p>", "treeview_taxa.html?pic=%22Cetacea%2Ejpg%22"))
L5.xID = "Cetacea"
L6 = insFld(L5, gFld("<p id='Odontoceti'>Odontoceti</p>", "treeview_taxa.html?pic=%22Odontoceti%2Ejpg%22"))
L6.xID = "Odontoceti"
L7 = insFld(L6, gFld("<p id='Monodontidae'>Monodontidae</p>", "treeview_taxa.html?pic=%22Monodontidae%2Ejpg%22"))
L7.xID = "Monodontidae"
L8 = insFld(L7, gFld("<p id='Monodon'>Monodon</p>", "treeview_taxa.html?pic=%22Monodon%2Ejpg%22"))
L8.xID = "Monodon"
lv6 = insDoc(L8, gLnk("S", "<p id='Monodon_monoceros'>Monodon_monoceros</p>", AmPpath + "Monodon_monoceros/Monodon_monoceros_res.html"))
lv6.xID = "Monodon_monoceros"
L8 = insFld(L7, gFld("<p id='Delphinapterus'>Delphinapterus</p>", "treeview_taxa.html?pic=%22Delphinapterus%2Ejpg%22"))
L8.xID = "Delphinapterus"
lv7 = insDoc(L8, gLnk("S", "<p id='Delphinapterus_leucas'>Delphinapterus_leucas</p>", AmPpath + "Delphinapterus_leucas/Delphinapterus_leucas_res.html"))
lv7.xID = "Delphinapterus_leucas"
L7 = insFld(L6, gFld("<p id='Phocoenidae'>Phocoenidae</p>", "treeview_taxa.html?pic=%22Phocoenidae%2Ejpg%22"))
L7.xID = "Phocoenidae"
L8 = insFld(L7, gFld("<p id='Phocoena'>Phocoena</p>", "treeview_taxa.html?pic=%22Phocoena%2Ejpg%22"))
L8.xID = "Phocoena"
lv8 = insDoc(L8, gLnk("S", "<p id='Phocoena_phocoena'>Phocoena_phocoena</p>", AmPpath + "Phocoena_phocoena/Phocoena_phocoena_res.html"))
lv8.xID = "Phocoena_phocoena"
L7 = insFld(L6, gFld("<p id='Delphinidae'>Delphinidae</p>", "treeview_taxa.html?pic=%22Delphinidae%2Ejpg%22"))
L7.xID = "Delphinidae"
L8 = insFld(L7, gFld("<p id='Lagenorhynchus'>Lagenorhynchus</p>", "treeview_taxa.html?pic=%22Lagenorhynchus%2Ejpg%22"))
L8.xID = "Lagenorhynchus"
lv9 = insDoc(L8, gLnk("S", "<p id='Lagenorhynchus_obscurus'>Lagenorhynchus_obscurus</p>", AmPpath + "Lagenorhynchus_obscurus/Lagenorhynchus_obscurus_res.html"))
lv9.xID = "Lagenorhynchus_obscurus"
L8 = insFld(L7, gFld("<p id='Delphinus'>Delphinus</p>", "treeview_taxa.html?pic=%22Delphinus%2Ejpg%22"))
L8.xID = "Delphinus"
lv10 = insDoc(L8, gLnk("S", "<p id='Delphinus_delphis'>Delphinus_delphis</p>", AmPpath + "Delphinus_delphis/Delphinus_delphis_res.html"))
lv10.xID = "Delphinus_delphis"
L8 = insFld(L7, gFld("<p id='Tursiops'>Tursiops</p>", "treeview_taxa.html?pic=%22Tursiops%2Ejpg%22"))
L8.xID = "Tursiops"
lv11 = insDoc(L8, gLnk("S", "<p id='Tursiops_truncatus'>Tursiops_truncatus</p>", AmPpath + "Tursiops_truncatus/Tursiops_truncatus_res.html"))
lv11.xID = "Tursiops_truncatus"
L8 = insFld(L7, gFld("<p id='Pseudorca'>Pseudorca</p>", "treeview_taxa.html?pic=%22Pseudorca%2Ejpg%22"))
L8.xID = "Pseudorca"
lv12 = insDoc(L8, gLnk("S", "<p id='Pseudorca_crassidens'>Pseudorca_crassidens</p>", AmPpath + "Pseudorca_crassidens/Pseudorca_crassidens_res.html"))
lv12.xID = "Pseudorca_crassidens"
L8 = insFld(L7, gFld("<p id='Orcinus'>Orcinus</p>", "treeview_taxa.html?pic=%22Orcinus%2Ejpg%22"))
L8.xID = "Orcinus"
lv13 = insDoc(L8, gLnk("S", "<p id='Orcinus_orca'>Orcinus_orca</p>", AmPpath + "Orcinus_orca/Orcinus_orca_res.html"))
lv13.xID = "Orcinus_orca"
L7 = insFld(L6, gFld("<p id='Pontoporiidae'>Pontoporiidae</p>", "treeview_taxa.html?pic=%22Pontoporiidae%2Ejpg%22"))
L7.xID = "Pontoporiidae"
L8 = insFld(L7, gFld("<p id='Pontoporia'>Pontoporia</p>", "treeview_taxa.html?pic=%22Pontoporia%2Ejpg%22"))
L8.xID = "Pontoporia"
lv14 = insDoc(L8, gLnk("S", "<p id='Pontoporia_blainvillei'>Pontoporia_blainvillei</p>", AmPpath + "Pontoporia_blainvillei/Pontoporia_blainvillei_res.html"))
lv14.xID = "Pontoporia_blainvillei"
L7 = insFld(L6, gFld("<p id='Physeteridae'>Physeteridae</p>", "treeview_taxa.html?pic=%22Physeteridae%2Ejpg%22"))
L7.xID = "Physeteridae"
L8 = insFld(L7, gFld("<p id='Physeter'>Physeter</p>", "treeview_taxa.html?pic=%22Physeter%2Ejpg%22"))
L8.xID = "Physeter"
lv15 = insDoc(L8, gLnk("S", "<p id='Physeter_macrocephalus'>Physeter_macrocephalus</p>", AmPpath + "Physeter_macrocephalus/Physeter_macrocephalus_res.html"))
lv15.xID = "Physeter_macrocephalus"
L7 = insFld(L6, gFld("<p id='Ziphiidae'>Ziphiidae</p>", "treeview_taxa.html?pic=%22Ziphiidae%2Ejpg%22"))
L7.xID = "Ziphiidae"
L8 = insFld(L7, gFld("<p id='Hyperoodon'>Hyperoodon</p>", "treeview_taxa.html?pic=%22Hyperoodon%2Ejpg%22"))
L8.xID = "Hyperoodon"
lv16 = insDoc(L8, gLnk("S", "<p id='Hyperoodon_ampullatus'>Hyperoodon_ampullatus</p>", AmPpath + "Hyperoodon_ampullatus/Hyperoodon_ampullatus_res.html"))
lv16.xID = "Hyperoodon_ampullatus"
L6 = insFld(L5, gFld("<p id='Mysticeti'>Mysticeti</p>", "treeview_taxa.html?pic=%22Mysticeti%2Ejpg%22"))
L6.xID = "Mysticeti"
L7 = insFld(L6, gFld("<p id='Balaenopteridae'>Balaenopteridae</p>", "treeview_taxa.html?pic=%22Balaenopteridae%2Ejpg%22"))
L7.xID = "Balaenopteridae"
L8 = insFld(L7, gFld("<p id='Balaenoptera'>Balaenoptera</p>", "treeview_taxa.html?pic=%22Balaenoptera%2Ejpg%22"))
L8.xID = "Balaenoptera"
lv17 = insDoc(L8, gLnk("S", "<p id='Balaenoptera_acutorostrata'>Balaenoptera_acutorostrata</p>", AmPpath + "Balaenoptera_acutorostrata/Balaenoptera_acutorostrata_res.html"))
lv17.xID = "Balaenoptera_acutorostrata"
lv18 = insDoc(L8, gLnk("S", "<p id='Balaenoptera_musculus'>Balaenoptera_musculus</p>", AmPpath + "Balaenoptera_musculus/Balaenoptera_musculus_res.html"))
lv18.xID = "Balaenoptera_musculus"
L7 = insFld(L6, gFld("<p id='Eschrichtiidae'>Eschrichtiidae</p>", "treeview_taxa.html?pic=%22Eschrichtiidae%2Ejpg%22"))
L7.xID = "Eschrichtiidae"
L8 = insFld(L7, gFld("<p id='Eschrichtius'>Eschrichtius</p>", "treeview_taxa.html?pic=%22Eschrichtius%2Ejpg%22"))
L8.xID = "Eschrichtius"
lv19 = insDoc(L8, gLnk("S", "<p id='Eschrichtius_robustus'>Eschrichtius_robustus</p>", AmPpath + "Eschrichtius_robustus/Eschrichtius_robustus_res.html"))
lv19.xID = "Eschrichtius_robustus"
L7 = insFld(L6, gFld("<p id='Balaenidae'>Balaenidae</p>", "treeview_taxa.html?pic=%22Balaenidae%2Ejpg%22"))
L7.xID = "Balaenidae"
L8 = insFld(L7, gFld("<p id='Eubalaena'>Eubalaena</p>", "treeview_taxa.html?pic=%22Eubalaena%2Ejpg%22"))
L8.xID = "Eubalaena"
lv20 = insDoc(L8, gLnk("S", "<p id='Eubalaena_glacialis'>Eubalaena_glacialis</p>", AmPpath + "Eubalaena_glacialis/Eubalaena_glacialis_res.html"))
lv20.xID = "Eubalaena_glacialis"
L8 = insFld(L7, gFld("<p id='Balaena'>Balaena</p>", "treeview_taxa.html?pic=%22Balaena%2Ejpg%22"))
L8.xID = "Balaena"
lv21 = insDoc(L8, gLnk("S", "<p id='Balaena_mysticetus'>Balaena_mysticetus</p>", AmPpath + "Balaena_mysticetus/Balaena_mysticetus_res.html"))
lv21.xID = "Balaena_mysticetus"
L5 = insFld(L4, gFld("<p id='Hippopotamidae'>Hippopotamidae</p>", "treeview_taxa.html?pic=%22Hippopotamidae%2Ejpg%22"))
L5.xID = "Hippopotamidae"
L6 = insFld(L5, gFld("<p id='Hippopotamus'>Hippopotamus</p>", "treeview_taxa.html?pic=%22Hippopotamus%2Ejpg%22"))
L6.xID = "Hippopotamus"
lv22 = insDoc(L6, gLnk("S", "<p id='Hippopotamus_amphibius'>Hippopotamus_amphibius</p>", AmPpath + "Hippopotamus_amphibius/Hippopotamus_amphibius_res.html"))
lv22.xID = "Hippopotamus_amphibius"
L4 = insFld(L3, gFld("<p id='Ruminantiamorpha'>Ruminantiamorpha</p>", "treeview_taxa.html?pic=%22Ruminantiamorpha%2Ejpg%22"))
L4.xID = "Ruminantiamorpha"
L5 = insFld(L4, gFld("<p id='Giraffoidea'>Giraffoidea</p>", "treeview_taxa.html?pic=%22Giraffoidea%2Ejpg%22"))
L5.xID = "Giraffoidea"
L6 = insFld(L5, gFld("<p id='Antilocapridae'>Antilocapridae</p>", "treeview_taxa.html?pic=%22Antilocapridae%2Ejpg%22"))
L6.xID = "Antilocapridae"
L7 = insFld(L6, gFld("<p id='Antilocapra'>Antilocapra</p>", "treeview_taxa.html?pic=%22Antilocapra%2Ejpg%22"))
L7.xID = "Antilocapra"
lv23 = insDoc(L7, gLnk("S", "<p id='Antilocapra_americana'>Antilocapra_americana</p>", AmPpath + "Antilocapra_americana/Antilocapra_americana_res.html"))
lv23.xID = "Antilocapra_americana"
L6 = insFld(L5, gFld("<p id='Giraffidae'>Giraffidae</p>", "treeview_taxa.html?pic=%22Giraffidae%2Ejpg%22"))
L6.xID = "Giraffidae"
L7 = insFld(L6, gFld("<p id='Giraffa'>Giraffa</p>", "treeview_taxa.html?pic=%22Giraffa%2Ejpg%22"))
L7.xID = "Giraffa"
lv24 = insDoc(L7, gLnk("S", "<p id='Giraffa_camelopardalis'>Giraffa_camelopardalis</p>", AmPpath + "Giraffa_camelopardalis/Giraffa_camelopardalis_res.html"))
lv24.xID = "Giraffa_camelopardalis"
L7 = insFld(L6, gFld("<p id='Okapia'>Okapia</p>", "treeview_taxa.html?pic=%22Okapia%2Ejpg%22"))
L7.xID = "Okapia"
lv25 = insDoc(L7, gLnk("S", "<p id='Okapia_johnstoni'>Okapia_johnstoni</p>", AmPpath + "Okapia_johnstoni/Okapia_johnstoni_res.html"))
lv25.xID = "Okapia_johnstoni"
L5 = insFld(L4, gFld("<p id='Cervidae'>Cervidae</p>", "treeview_taxa.html?pic=%22Cervidae%2Ejpg%22"))
L5.xID = "Cervidae"
L6 = insFld(L5, gFld("<p id='Cervinae'>Cervinae</p>", "treeview_taxa.html?pic=%22Cervinae%2Ejpg%22"))
L6.xID = "Cervinae"
L7 = insFld(L6, gFld("<p id='Muntiacus'>Muntiacus</p>", "treeview_taxa.html?pic=%22Muntiacus%2Ejpg%22"))
L7.xID = "Muntiacus"
lv26 = insDoc(L7, gLnk("S", "<p id='Muntiacus_reevesi'>Muntiacus_reevesi</p>", AmPpath + "Muntiacus_reevesi/Muntiacus_reevesi_res.html"))
lv26.xID = "Muntiacus_reevesi"
L7 = insFld(L6, gFld("<p id='Cervus'>Cervus</p>", "treeview_taxa.html?pic=%22Cervus%2Ejpg%22"))
L7.xID = "Cervus"
lv27 = insDoc(L7, gLnk("S", "<p id='Cervus_canadensis'>Cervus_canadensis</p>", AmPpath + "Cervus_canadensis/Cervus_canadensis_res.html"))
lv27.xID = "Cervus_canadensis"
L6 = insFld(L5, gFld("<p id='Capreolinae'>Capreolinae</p>", "treeview_taxa.html?pic=%22Capreolinae%2Ejpg%22"))
L6.xID = "Capreolinae"
L7 = insFld(L6, gFld("<p id='Capreolus'>Capreolus</p>", "treeview_taxa.html?pic=%22Capreolus%2Ejpg%22"))
L7.xID = "Capreolus"
lv28 = insDoc(L7, gLnk("S", "<p id='Capreolus_capreolus'>Capreolus_capreolus</p>", AmPpath + "Capreolus_capreolus/Capreolus_capreolus_res.html"))
lv28.xID = "Capreolus_capreolus"
L7 = insFld(L6, gFld("<p id='Rangiferini'>Rangiferini</p>", "treeview_taxa.html?pic=%22Rangiferini%2Ejpg%22"))
L7.xID = "Rangiferini"
L8 = insFld(L7, gFld("<p id='Rangifer'>Rangifer</p>", "treeview_taxa.html?pic=%22Rangifer%2Ejpg%22"))
L8.xID = "Rangifer"
lv29 = insDoc(L8, gLnk("S", "<p id='Rangifer_tarandus'>Rangifer_tarandus</p>", AmPpath + "Rangifer_tarandus/Rangifer_tarandus_res.html"))
lv29.xID = "Rangifer_tarandus"
L8 = insFld(L7, gFld("<p id='Odocoileus'>Odocoileus</p>", "treeview_taxa.html?pic=%22Odocoileus%2Ejpg%22"))
L8.xID = "Odocoileus"
lv30 = insDoc(L8, gLnk("S", "<p id='Odocoileus_virginianus'>Odocoileus_virginianus</p>", AmPpath + "Odocoileus_virginianus/Odocoileus_virginianus_res.html"))
lv30.xID = "Odocoileus_virginianus"
L7 = insFld(L6, gFld("<p id='Alceini'>Alceini</p>", "treeview_taxa.html?pic=%22Alceini%2Ejpg%22"))
L7.xID = "Alceini"
L8 = insFld(L7, gFld("<p id='Alces'>Alces</p>", "treeview_taxa.html?pic=%22Alces%2Ejpg%22"))
L8.xID = "Alces"
lv31 = insDoc(L8, gLnk("S", "<p id='Alces_alces'>Alces_alces</p>", AmPpath + "Alces_alces/Alces_alces_res.html"))
lv31.xID = "Alces_alces"
L5 = insFld(L4, gFld("<p id='Bovidae'>Bovidae</p>", "treeview_taxa.html?pic=%22Bovidae%2Ejpg%22"))
L5.xID = "Bovidae"
L6 = insFld(L5, gFld("<p id='Boodontia'>Boodontia</p>", "treeview_taxa.html?pic=%22Boodontia%2Ejpg%22"))
L6.xID = "Boodontia"
L7 = insFld(L6, gFld("<p id='Tragelaphini'>Tragelaphini</p>", "treeview_taxa.html?pic=%22Tragelaphini%2Ejpg%22"))
L7.xID = "Tragelaphini"
L8 = insFld(L7, gFld("<p id='Taurotragus'>Taurotragus</p>", "treeview_taxa.html?pic=%22Taurotragus%2Ejpg%22"))
L8.xID = "Taurotragus"
lv32 = insDoc(L8, gLnk("S", "<p id='Taurotragus_oryx'>Taurotragus_oryx</p>", AmPpath + "Taurotragus_oryx/Taurotragus_oryx_res.html"))
lv32.xID = "Taurotragus_oryx"
L8 = insFld(L7, gFld("<p id='Tragelaphus'>Tragelaphus</p>", "treeview_taxa.html?pic=%22Tragelaphus%2Ejpg%22"))
L8.xID = "Tragelaphus"
lv33 = insDoc(L8, gLnk("S", "<p id='Tragelaphus_strepsiceros'>Tragelaphus_strepsiceros</p>", AmPpath + "Tragelaphus_strepsiceros/Tragelaphus_strepsiceros_res.html"))
lv33.xID = "Tragelaphus_strepsiceros"
L7 = insFld(L6, gFld("<p id='Bovini'>Bovini</p>", "treeview_taxa.html?pic=%22Bovini%2Ejpg%22"))
L7.xID = "Bovini"
L8 = insFld(L7, gFld("<p id='Bos'>Bos</p>", "treeview_taxa.html?pic=%22Bos%2Ejpg%22"))
L8.xID = "Bos"
lv34 = insDoc(L8, gLnk("S", "<p id='Bos_primigenius_Angus'>Bos_primigenius_Angus</p>", AmPpath + "Bos_primigenius_Angus/Bos_primigenius_Angus_res.html"))
lv34.xID = "Bos_primigenius_Angus"
lv35 = insDoc(L8, gLnk("S", "<p id='Bos_primigenius_Holstein'>Bos_primigenius_Holstein</p>", AmPpath + "Bos_primigenius_Holstein/Bos_primigenius_Holstein_res.html"))
lv35.xID = "Bos_primigenius_Holstein"
lv36 = insDoc(L8, gLnk("S", "<p id='Bos_primigenius_Brahman'>Bos_primigenius_Brahman</p>", AmPpath + "Bos_primigenius_Brahman/Bos_primigenius_Brahman_res.html"))
lv36.xID = "Bos_primigenius_Brahman"
L8 = insFld(L7, gFld("<p id='Bison'>Bison</p>", "treeview_taxa.html?pic=%22Bison%2Ejpg%22"))
L8.xID = "Bison"
lv37 = insDoc(L8, gLnk("S", "<p id='Bison_bonasus'>Bison_bonasus</p>", AmPpath + "Bison_bonasus/Bison_bonasus_res.html"))
lv37.xID = "Bison_bonasus"
L8 = insFld(L7, gFld("<p id='Syncerus'>Syncerus</p>", "treeview_taxa.html?pic=%22Syncerus%2Ejpg%22"))
L8.xID = "Syncerus"
lv38 = insDoc(L8, gLnk("S", "<p id='Syncerus_caffer'>Syncerus_caffer</p>", AmPpath + "Syncerus_caffer/Syncerus_caffer_res.html"))
lv38.xID = "Syncerus_caffer"
L6 = insFld(L5, gFld("<p id='Aegodontia'>Aegodontia</p>", "treeview_taxa.html?pic=%22Aegodontia%2Ejpg%22"))
L6.xID = "Aegodontia"
L7 = insFld(L6, gFld("<p id='Antilopinae'>Antilopinae</p>", "treeview_taxa.html?pic=%22Antilopinae%2Ejpg%22"))
L7.xID = "Antilopinae"
L8 = insFld(L7, gFld("<p id='Antilopini'>Antilopini</p>", "treeview_taxa.html?pic=%22Antilopini%2Ejpg%22"))
L8.xID = "Antilopini"
L9 = insFld(L8, gFld("<p id='Gazella'>Gazella</p>", "treeview_taxa.html?pic=%22Gazella%2Ejpg%22"))
L9.xID = "Gazella"
lv39 = insDoc(L9, gLnk("S", "<p id='Gazella_subgutturosa'>Gazella_subgutturosa</p>", AmPpath + "Gazella_subgutturosa/Gazella_subgutturosa_res.html"))
lv39.xID = "Gazella_subgutturosa"
L9 = insFld(L8, gFld("<p id='Antidorcas'>Antidorcas</p>", "treeview_taxa.html?pic=%22Antidorcas%2Ejpg%22"))
L9.xID = "Antidorcas"
lv40 = insDoc(L9, gLnk("S", "<p id='Antidorcas_marsupialis'>Antidorcas_marsupialis</p>", AmPpath + "Antidorcas_marsupialis/Antidorcas_marsupialis_res.html"))
lv40.xID = "Antidorcas_marsupialis"
L9 = insFld(L8, gFld("<p id='Saiga'>Saiga</p>", "treeview_taxa.html?pic=%22Saiga%2Ejpg%22"))
L9.xID = "Saiga"
lv41 = insDoc(L9, gLnk("S", "<p id='Saiga_tatarica'>Saiga_tatarica</p>", AmPpath + "Saiga_tatarica/Saiga_tatarica_res.html"))
lv41.xID = "Saiga_tatarica"
L8 = insFld(L7, gFld("<p id='Neotragini'>Neotragini</p>", "treeview_taxa.html?pic=%22Neotragini%2Ejpg%22"))
L8.xID = "Neotragini"
L9 = insFld(L8, gFld("<p id='Madoqua'>Madoqua</p>", "treeview_taxa.html?pic=%22Madoqua%2Ejpg%22"))
L9.xID = "Madoqua"
lv42 = insDoc(L9, gLnk("S", "<p id='Madoqua_kirkii'>Madoqua_kirkii</p>", AmPpath + "Madoqua_kirkii/Madoqua_kirkii_res.html"))
lv42.xID = "Madoqua_kirkii"
L7 = insFld(L6, gFld("<p id='Cephalophinae'>Cephalophinae</p>", "treeview_taxa.html?pic=%22Cephalophinae%2Ejpg%22"))
L7.xID = "Cephalophinae"
L8 = insFld(L7, gFld("<p id='Sylvicapra'>Sylvicapra</p>", "treeview_taxa.html?pic=%22Sylvicapra%2Ejpg%22"))
L8.xID = "Sylvicapra"
lv43 = insDoc(L8, gLnk("S", "<p id='Sylvicapra_grimmia'>Sylvicapra_grimmia</p>", AmPpath + "Sylvicapra_grimmia/Sylvicapra_grimmia_res.html"))
lv43.xID = "Sylvicapra_grimmia"
L7 = insFld(L6, gFld("<p id='Reduncinae'>Reduncinae</p>", "treeview_taxa.html?pic=%22Reduncinae%2Ejpg%22"))
L7.xID = "Reduncinae"
L8 = insFld(L7, gFld("<p id='Kobus'>Kobus</p>", "treeview_taxa.html?pic=%22Kobus%2Ejpg%22"))
L8.xID = "Kobus"
lv44 = insDoc(L8, gLnk("S", "<p id='Kobus_kob'>Kobus_kob</p>", AmPpath + "Kobus_kob/Kobus_kob_res.html"))
lv44.xID = "Kobus_kob"
L7 = insFld(L6, gFld("<p id='Aepycerotinae'>Aepycerotinae</p>", "treeview_taxa.html?pic=%22Aepycerotinae%2Ejpg%22"))
L7.xID = "Aepycerotinae"
L8 = insFld(L7, gFld("<p id='Aepyceros'>Aepyceros</p>", "treeview_taxa.html?pic=%22Aepyceros%2Ejpg%22"))
L8.xID = "Aepyceros"
lv45 = insDoc(L8, gLnk("S", "<p id='Aepyceros_melampus'>Aepyceros_melampus</p>", AmPpath + "Aepyceros_melampus/Aepyceros_melampus_res.html"))
lv45.xID = "Aepyceros_melampus"
L7 = insFld(L6, gFld("<p id='Caprinae'>Caprinae</p>", "treeview_taxa.html?pic=%22Caprinae%2Ejpg%22"))
L7.xID = "Caprinae"
L8 = insFld(L7, gFld("<p id='Ovibovini'>Ovibovini</p>", "treeview_taxa.html?pic=%22Ovibovini%2Ejpg%22"))
L8.xID = "Ovibovini"
L9 = insFld(L8, gFld("<p id='Ovibos'>Ovibos</p>", "treeview_taxa.html?pic=%22Ovibos%2Ejpg%22"))
L9.xID = "Ovibos"
lv46 = insDoc(L9, gLnk("S", "<p id='Ovibos_moschatus'>Ovibos_moschatus</p>", AmPpath + "Ovibos_moschatus/Ovibos_moschatus_res.html"))
lv46.xID = "Ovibos_moschatus"
L8 = insFld(L7, gFld("<p id='Caprini'>Caprini</p>", "treeview_taxa.html?pic=%22Caprini%2Ejpg%22"))
L8.xID = "Caprini"
L9 = insFld(L8, gFld("<p id='Capra'>Capra</p>", "treeview_taxa.html?pic=%22Capra%2Ejpg%22"))
L9.xID = "Capra"
lv47 = insDoc(L9, gLnk("S", "<p id='Capra_ibex'>Capra_ibex</p>", AmPpath + "Capra_ibex/Capra_ibex_res.html"))
lv47.xID = "Capra_ibex"
L9 = insFld(L8, gFld("<p id='Ovis'>Ovis</p>", "treeview_taxa.html?pic=%22Ovis%2Ejpg%22"))
L9.xID = "Ovis"
lv48 = insDoc(L9, gLnk("S", "<p id='Ovis_canadensis'>Ovis_canadensis</p>", AmPpath + "Ovis_canadensis/Ovis_canadensis_res.html"))
lv48.xID = "Ovis_canadensis"
L8 = insFld(L7, gFld("<p id='Naemorhedini'>Naemorhedini</p>", "treeview_taxa.html?pic=%22Naemorhedini%2Ejpg%22"))
L8.xID = "Naemorhedini"
L9 = insFld(L8, gFld("<p id='Capricornis'>Capricornis</p>", "treeview_taxa.html?pic=%22Capricornis%2Ejpg%22"))
L9.xID = "Capricornis"
lv49 = insDoc(L9, gLnk("S", "<p id='Capricornis_crispus'>Capricornis_crispus</p>", AmPpath + "Capricornis_crispus/Capricornis_crispus_res.html"))
lv49.xID = "Capricornis_crispus"
L9 = insFld(L8, gFld("<p id='Oreamnos'>Oreamnos</p>", "treeview_taxa.html?pic=%22Oreamnos%2Ejpg%22"))
L9.xID = "Oreamnos"
lv50 = insDoc(L9, gLnk("S", "<p id='Oreamnos_americanus'>Oreamnos_americanus</p>", AmPpath + "Oreamnos_americanus/Oreamnos_americanus_res.html"))
lv50.xID = "Oreamnos_americanus"
L9 = insFld(L8, gFld("<p id='Rupicapra'>Rupicapra</p>", "treeview_taxa.html?pic=%22Rupicapra%2Ejpg%22"))
L9.xID = "Rupicapra"
lv51 = insDoc(L9, gLnk("S", "<p id='Rupicapra_rupicapra'>Rupicapra_rupicapra</p>", AmPpath + "Rupicapra_rupicapra/Rupicapra_rupicapra_res.html"))
lv51.xID = "Rupicapra_rupicapra"
L7 = insFld(L6, gFld("<p id='Hippotraginae'>Hippotraginae</p>", "treeview_taxa.html?pic=%22Hippotraginae%2Ejpg%22"))
L7.xID = "Hippotraginae"
L8 = insFld(L7, gFld("<p id='Hippotragus'>Hippotragus</p>", "treeview_taxa.html?pic=%22Hippotragus%2Ejpg%22"))
L8.xID = "Hippotragus"
lv52 = insDoc(L8, gLnk("S", "<p id='Hippotragus_niger'>Hippotragus_niger</p>", AmPpath + "Hippotragus_niger/Hippotragus_niger_res.html"))
lv52.xID = "Hippotragus_niger"
L7 = insFld(L6, gFld("<p id='Alcelaphinae'>Alcelaphinae</p>", "treeview_taxa.html?pic=%22Alcelaphinae%2Ejpg%22"))
L7.xID = "Alcelaphinae"
L8 = insFld(L7, gFld("<p id='Connochaetes'>Connochaetes</p>", "treeview_taxa.html?pic=%22Connochaetes%2Ejpg%22"))
L8.xID = "Connochaetes"
lv53 = insDoc(L8, gLnk("S", "<p id='Connochaetes_taurinus'>Connochaetes_taurinus</p>", AmPpath + "Connochaetes_taurinus/Connochaetes_taurinus_res.html"))
lv53.xID = "Connochaetes_taurinus"
foldersTree.treeID = "Cetartiodactyla"
