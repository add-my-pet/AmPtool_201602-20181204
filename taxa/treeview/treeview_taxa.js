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

foldersTree = gFld("<b>Mollusca</b>", "treeview_taxa.html")
foldersTree.xID = "Mollusca"
L2 = insFld(foldersTree, gFld("<p id='Polyplacophora'>Polyplacophora</p>", "treeview_taxa.html?pic=%22Polyplacophora%2Ejpg%22"))
L2.xID = "Polyplacophora"
L3 = insFld(L2, gFld("<p id='Neoloricata'>Neoloricata</p>", "treeview_taxa.html?pic=%22Neoloricata%2Ejpg%22"))
L3.xID = "Neoloricata"
L4 = insFld(L3, gFld("<p id='Ischnochitonidae'>Ischnochitonidae</p>", "treeview_taxa.html?pic=%22Ischnochitonidae%2Ejpg%22"))
L4.xID = "Ischnochitonidae"
L5 = insFld(L4, gFld("<p id='Lepidochitona'>Lepidochitona</p>", "treeview_taxa.html?pic=%22Lepidochitona%2Ejpg%22"))
L5.xID = "Lepidochitona"
lv1 = insDoc(L5, gLnk("S", "<p id='Lepidochitona_cinerea'>Lepidochitona_cinerea</p>", AmPpath + "Lepidochitona_cinerea/Lepidochitona_cinerea_res.html"))
lv1.xID = "Lepidochitona_cinerea"
L2 = insFld(foldersTree, gFld("<p id='Bivalvia'>Bivalvia</p>", "treeview_taxa.html?pic=%22Bivalvia%2Ejpg%22"))
L2.xID = "Bivalvia"
L3 = insFld(L2, gFld("<p id='Heterodonta'>Heterodonta</p>", "treeview_taxa.html?pic=%22Heterodonta%2Ejpg%22"))
L3.xID = "Heterodonta"
L4 = insFld(L3, gFld("<p id='Myoida'>Myoida</p>", "treeview_taxa.html?pic=%22Myoida%2Ejpg%22"))
L4.xID = "Myoida"
L5 = insFld(L4, gFld("<p id='Myidae'>Myidae</p>", "treeview_taxa.html?pic=%22Myidae%2Ejpg%22"))
L5.xID = "Myidae"
L6 = insFld(L5, gFld("<p id='Mya'>Mya</p>", "treeview_taxa.html?pic=%22Mya%2Ejpg%22"))
L6.xID = "Mya"
lv2 = insDoc(L6, gLnk("S", "<p id='Mya_arenaria'>Mya_arenaria</p>", AmPpath + "Mya_arenaria/Mya_arenaria_res.html"))
lv2.xID = "Mya_arenaria"
L4 = insFld(L3, gFld("<p id='Veneroida'>Veneroida</p>", "treeview_taxa.html?pic=%22Veneroida%2Ejpg%22"))
L4.xID = "Veneroida"
L5 = insFld(L4, gFld("<p id='Arcticoidea'>Arcticoidea</p>", "treeview_taxa.html?pic=%22Arcticoidea%2Ejpg%22"))
L5.xID = "Arcticoidea"
L6 = insFld(L5, gFld("<p id='Arcticidae'>Arcticidae</p>", "treeview_taxa.html?pic=%22Arcticidae%2Ejpg%22"))
L6.xID = "Arcticidae"
L7 = insFld(L6, gFld("<p id='Arctica'>Arctica</p>", "treeview_taxa.html?pic=%22Arctica%2Ejpg%22"))
L7.xID = "Arctica"
lv3 = insDoc(L7, gLnk("S", "<p id='Arctica_islandica'>Arctica_islandica</p>", AmPpath + "Arctica_islandica/Arctica_islandica_res.html"))
lv3.xID = "Arctica_islandica"
L5 = insFld(L4, gFld("<p id='Corbiculoidea'>Corbiculoidea</p>", "treeview_taxa.html?pic=%22Corbiculoidea%2Ejpg%22"))
L5.xID = "Corbiculoidea"
L6 = insFld(L5, gFld("<p id='Sphaeriidae'>Sphaeriidae</p>", "treeview_taxa.html?pic=%22Sphaeriidae%2Ejpg%22"))
L6.xID = "Sphaeriidae"
L7 = insFld(L6, gFld("<p id='Sphaerium'>Sphaerium</p>", "treeview_taxa.html?pic=%22Sphaerium%2Ejpg%22"))
L7.xID = "Sphaerium"
lv4 = insDoc(L7, gLnk("S", "<p id='Sphaerium_corneum'>Sphaerium_corneum</p>", AmPpath + "Sphaerium_corneum/Sphaerium_corneum_res.html"))
lv4.xID = "Sphaerium_corneum"
L5 = insFld(L4, gFld("<p id='Tridacnidea'>Tridacnidea</p>", "treeview_taxa.html?pic=%22Tridacnidea%2Ejpg%22"))
L5.xID = "Tridacnidea"
L6 = insFld(L5, gFld("<p id='Tridacnidae'>Tridacnidae</p>", "treeview_taxa.html?pic=%22Tridacnidae%2Ejpg%22"))
L6.xID = "Tridacnidae"
L7 = insFld(L6, gFld("<p id='Tridacna'>Tridacna</p>", "treeview_taxa.html?pic=%22Tridacna%2Ejpg%22"))
L7.xID = "Tridacna"
lv5 = insDoc(L7, gLnk("S", "<p id='Tridacna_gigas'>Tridacna_gigas</p>", AmPpath + "Tridacna_gigas/Tridacna_gigas_res.html"))
lv5.xID = "Tridacna_gigas"
L5 = insFld(L4, gFld("<p id='Carditoidea'>Carditoidea</p>", "treeview_taxa.html?pic=%22Carditoidea%2Ejpg%22"))
L5.xID = "Carditoidea"
L6 = insFld(L5, gFld("<p id='Cardiidae'>Cardiidae</p>", "treeview_taxa.html?pic=%22Cardiidae%2Ejpg%22"))
L6.xID = "Cardiidae"
L7 = insFld(L6, gFld("<p id='Cerastoderma'>Cerastoderma</p>", "treeview_taxa.html?pic=%22Cerastoderma%2Ejpg%22"))
L7.xID = "Cerastoderma"
lv6 = insDoc(L7, gLnk("S", "<p id='Cerastoderma_edule'>Cerastoderma_edule</p>", AmPpath + "Cerastoderma_edule/Cerastoderma_edule_res.html"))
lv6.xID = "Cerastoderma_edule"
lv7 = insDoc(L7, gLnk("S", "<p id='Cerastoderma_glaucum'>Cerastoderma_glaucum</p>", AmPpath + "Cerastoderma_glaucum/Cerastoderma_glaucum_res.html"))
lv7.xID = "Cerastoderma_glaucum"
L5 = insFld(L4, gFld("<p id='Mactroidea'>Mactroidea</p>", "treeview_taxa.html?pic=%22Mactroidea%2Ejpg%22"))
L5.xID = "Mactroidea"
L6 = insFld(L5, gFld("<p id='Mactridae'>Mactridae</p>", "treeview_taxa.html?pic=%22Mactridae%2Ejpg%22"))
L6.xID = "Mactridae"
L7 = insFld(L6, gFld("<p id='Spisula'>Spisula</p>", "treeview_taxa.html?pic=%22Spisula%2Ejpg%22"))
L7.xID = "Spisula"
lv8 = insDoc(L7, gLnk("S", "<p id='Spisula_subtruncata'>Spisula_subtruncata</p>", AmPpath + "Spisula_subtruncata/Spisula_subtruncata_res.html"))
lv8.xID = "Spisula_subtruncata"
lv9 = insDoc(L7, gLnk("S", "<p id='Spisula_solidissima'>Spisula_solidissima</p>", AmPpath + "Spisula_solidissima/Spisula_solidissima_res.html"))
lv9.xID = "Spisula_solidissima"
L5 = insFld(L4, gFld("<p id='Tellinoidea'>Tellinoidea</p>", "treeview_taxa.html?pic=%22Tellinoidea%2Ejpg%22"))
L5.xID = "Tellinoidea"
L6 = insFld(L5, gFld("<p id='Tellinidae'>Tellinidae</p>", "treeview_taxa.html?pic=%22Tellinidae%2Ejpg%22"))
L6.xID = "Tellinidae"
L7 = insFld(L6, gFld("<p id='Macoma'>Macoma</p>", "treeview_taxa.html?pic=%22Macoma%2Ejpg%22"))
L7.xID = "Macoma"
lv10 = insDoc(L7, gLnk("S", "<p id='Macoma_balthica'>Macoma_balthica</p>", AmPpath + "Macoma_balthica/Macoma_balthica_res.html"))
lv10.xID = "Macoma_balthica"
L5 = insFld(L4, gFld("<p id='Lucinoidea'>Lucinoidea</p>", "treeview_taxa.html?pic=%22Lucinoidea%2Ejpg%22"))
L5.xID = "Lucinoidea"
L6 = insFld(L5, gFld("<p id='Thyasiridae'>Thyasiridae</p>", "treeview_taxa.html?pic=%22Thyasiridae%2Ejpg%22"))
L6.xID = "Thyasiridae"
L7 = insFld(L6, gFld("<p id='Thyasira'>Thyasira</p>", "treeview_taxa.html?pic=%22Thyasira%2Ejpg%22"))
L7.xID = "Thyasira"
lv11 = insDoc(L7, gLnk("S", "<p id='Thyasira_cf_gouldi'>Thyasira_cf_gouldi</p>", AmPpath + "Thyasira_cf_gouldi/Thyasira_cf_gouldi_res.html"))
lv11.xID = "Thyasira_cf_gouldi"
L7 = insFld(L6, gFld("<p id='Parathyasira'>Parathyasira</p>", "treeview_taxa.html?pic=%22Parathyasira%2Ejpg%22"))
L7.xID = "Parathyasira"
lv12 = insDoc(L7, gLnk("S", "<p id='Parathyasira_sp'>Parathyasira_sp</p>", AmPpath + "Parathyasira_sp/Parathyasira_sp_res.html"))
lv12.xID = "Parathyasira_sp"
L5 = insFld(L4, gFld("<p id='Veneroidea'>Veneroidea</p>", "treeview_taxa.html?pic=%22Veneroidea%2Ejpg%22"))
L5.xID = "Veneroidea"
L6 = insFld(L5, gFld("<p id='Veneridae'>Veneridae</p>", "treeview_taxa.html?pic=%22Veneridae%2Ejpg%22"))
L6.xID = "Veneridae"
L7 = insFld(L6, gFld("<p id='Ruditapes'>Ruditapes</p>", "treeview_taxa.html?pic=%22Ruditapes%2Ejpg%22"))
L7.xID = "Ruditapes"
lv13 = insDoc(L7, gLnk("S", "<p id='Ruditapes_philippinarum'>Ruditapes_philippinarum</p>", AmPpath + "Ruditapes_philippinarum/Ruditapes_philippinarum_res.html"))
lv13.xID = "Ruditapes_philippinarum"
lv14 = insDoc(L7, gLnk("S", "<p id='Ruditapes_decussatus'>Ruditapes_decussatus</p>", AmPpath + "Ruditapes_decussatus/Ruditapes_decussatus_res.html"))
lv14.xID = "Ruditapes_decussatus"
L7 = insFld(L6, gFld("<p id='Dosinia'>Dosinia</p>", "treeview_taxa.html?pic=%22Dosinia%2Ejpg%22"))
L7.xID = "Dosinia"
lv15 = insDoc(L7, gLnk("S", "<p id='Dosinia_exoleta'>Dosinia_exoleta</p>", AmPpath + "Dosinia_exoleta/Dosinia_exoleta_res.html"))
lv15.xID = "Dosinia_exoleta"
L7 = insFld(L6, gFld("<p id='Mercenaria'>Mercenaria</p>", "treeview_taxa.html?pic=%22Mercenaria%2Ejpg%22"))
L7.xID = "Mercenaria"
lv16 = insDoc(L7, gLnk("S", "<p id='Mercenaria_mercenaria'>Mercenaria_mercenaria</p>", AmPpath + "Mercenaria_mercenaria/Mercenaria_mercenaria_res.html"))
lv16.xID = "Mercenaria_mercenaria"
L5 = insFld(L4, gFld("<p id='Dreissenidae'>Dreissenidae</p>", "treeview_taxa.html?pic=%22Dreissenidae%2Ejpg%22"))
L5.xID = "Dreissenidae"
L6 = insFld(L5, gFld("<p id='Mytilopsis'>Mytilopsis</p>", "treeview_taxa.html?pic=%22Mytilopsis%2Ejpg%22"))
L6.xID = "Mytilopsis"
lv17 = insDoc(L6, gLnk("S", "<p id='Mytilopsis_sallei'>Mytilopsis_sallei</p>", AmPpath + "Mytilopsis_sallei/Mytilopsis_sallei_res.html"))
lv17.xID = "Mytilopsis_sallei"
L4 = insFld(L3, gFld("<p id='Solenida'>Solenida</p>", "treeview_taxa.html?pic=%22Solenida%2Ejpg%22"))
L4.xID = "Solenida"
L5 = insFld(L4, gFld("<p id='Solenidae'>Solenidae</p>", "treeview_taxa.html?pic=%22Solenidae%2Ejpg%22"))
L5.xID = "Solenidae"
L6 = insFld(L5, gFld("<p id='Ensis'>Ensis</p>", "treeview_taxa.html?pic=%22Ensis%2Ejpg%22"))
L6.xID = "Ensis"
lv18 = insDoc(L6, gLnk("S", "<p id='Ensis_directus'>Ensis_directus</p>", AmPpath + "Ensis_directus/Ensis_directus_res.html"))
lv18.xID = "Ensis_directus"
L3 = insFld(L2, gFld("<p id='Palaeoheterodonta'>Palaeoheterodonta</p>", "treeview_taxa.html?pic=%22Palaeoheterodonta%2Ejpg%22"))
L3.xID = "Palaeoheterodonta"
L4 = insFld(L3, gFld("<p id='Unionoida'>Unionoida</p>", "treeview_taxa.html?pic=%22Unionoida%2Ejpg%22"))
L4.xID = "Unionoida"
L5 = insFld(L4, gFld("<p id='Unionidae'>Unionidae</p>", "treeview_taxa.html?pic=%22Unionidae%2Ejpg%22"))
L5.xID = "Unionidae"
L6 = insFld(L5, gFld("<p id='Echyridella'>Echyridella</p>", "treeview_taxa.html?pic=%22Echyridella%2Ejpg%22"))
L6.xID = "Echyridella"
lv19 = insDoc(L6, gLnk("S", "<p id='Echyridella_menziesii'>Echyridella_menziesii</p>", AmPpath + "Echyridella_menziesii/Echyridella_menziesii_res.html"))
lv19.xID = "Echyridella_menziesii"
L6 = insFld(L5, gFld("<p id='Anodonta'>Anodonta</p>", "treeview_taxa.html?pic=%22Anodonta%2Ejpg%22"))
L6.xID = "Anodonta"
lv20 = insDoc(L6, gLnk("S", "<p id='Anodonta_cygnea'>Anodonta_cygnea</p>", AmPpath + "Anodonta_cygnea/Anodonta_cygnea_res.html"))
lv20.xID = "Anodonta_cygnea"
L5 = insFld(L4, gFld("<p id='Hyriidae'>Hyriidae</p>", "treeview_taxa.html?pic=%22Hyriidae%2Ejpg%22"))
L5.xID = "Hyriidae"
L6 = insFld(L5, gFld("<p id='Westralunio'>Westralunio</p>", "treeview_taxa.html?pic=%22Westralunio%2Ejpg%22"))
L6.xID = "Westralunio"
lv21 = insDoc(L6, gLnk("S", "<p id='Westralunio_carteri'>Westralunio_carteri</p>", AmPpath + "Westralunio_carteri/Westralunio_carteri_res.html"))
lv21.xID = "Westralunio_carteri"
L3 = insFld(L2, gFld("<p id='Pteriomorphia'>Pteriomorphia</p>", "treeview_taxa.html?pic=%22Pteriomorphia%2Ejpg%22"))
L3.xID = "Pteriomorphia"
L4 = insFld(L3, gFld("<p id='Pectinida'>Pectinida</p>", "treeview_taxa.html?pic=%22Pectinida%2Ejpg%22"))
L4.xID = "Pectinida"
L5 = insFld(L4, gFld("<p id='Pectinidae'>Pectinidae</p>", "treeview_taxa.html?pic=%22Pectinidae%2Ejpg%22"))
L5.xID = "Pectinidae"
L6 = insFld(L5, gFld("<p id='Argopecten'>Argopecten</p>", "treeview_taxa.html?pic=%22Argopecten%2Ejpg%22"))
L6.xID = "Argopecten"
lv22 = insDoc(L6, gLnk("S", "<p id='Argopecten_purpuratus'>Argopecten_purpuratus</p>", AmPpath + "Argopecten_purpuratus/Argopecten_purpuratus_res.html"))
lv22.xID = "Argopecten_purpuratus"
L6 = insFld(L5, gFld("<p id='Pecten'>Pecten</p>", "treeview_taxa.html?pic=%22Pecten%2Ejpg%22"))
L6.xID = "Pecten"
lv23 = insDoc(L6, gLnk("S", "<p id='Pecten_maximus'>Pecten_maximus</p>", AmPpath + "Pecten_maximus/Pecten_maximus_res.html"))
lv23.xID = "Pecten_maximus"
L6 = insFld(L5, gFld("<p id='Placopecten'>Placopecten</p>", "treeview_taxa.html?pic=%22Placopecten%2Ejpg%22"))
L6.xID = "Placopecten"
lv24 = insDoc(L6, gLnk("S", "<p id='Placopecten_magellanicus'>Placopecten_magellanicus</p>", AmPpath + "Placopecten_magellanicus/Placopecten_magellanicus_res.html"))
lv24.xID = "Placopecten_magellanicus"
L6 = insFld(L5, gFld("<p id='Chlamys'>Chlamys</p>", "treeview_taxa.html?pic=%22Chlamys%2Ejpg%22"))
L6.xID = "Chlamys"
lv25 = insDoc(L6, gLnk("S", "<p id='Chlamys_islandica'>Chlamys_islandica</p>", AmPpath + "Chlamys_islandica/Chlamys_islandica_res.html"))
lv25.xID = "Chlamys_islandica"
L4 = insFld(L3, gFld("<p id='Ostreoida'>Ostreoida</p>", "treeview_taxa.html?pic=%22Ostreoida%2Ejpg%22"))
L4.xID = "Ostreoida"
L5 = insFld(L4, gFld("<p id='Ostreidae'>Ostreidae</p>", "treeview_taxa.html?pic=%22Ostreidae%2Ejpg%22"))
L5.xID = "Ostreidae"
L6 = insFld(L5, gFld("<p id='Magallana'>Magallana</p>", "treeview_taxa.html?pic=%22Magallana%2Ejpg%22"))
L6.xID = "Magallana"
lv26 = insDoc(L6, gLnk("S", "<p id='Magallana_gigas'>Magallana_gigas</p>", AmPpath + "Magallana_gigas/Magallana_gigas_res.html"))
lv26.xID = "Magallana_gigas"
L6 = insFld(L5, gFld("<p id='Crassostrea'>Crassostrea</p>", "treeview_taxa.html?pic=%22Crassostrea%2Ejpg%22"))
L6.xID = "Crassostrea"
lv27 = insDoc(L6, gLnk("S", "<p id='Crassostrea_virginica'>Crassostrea_virginica</p>", AmPpath + "Crassostrea_virginica/Crassostrea_virginica_res.html"))
lv27.xID = "Crassostrea_virginica"
L6 = insFld(L5, gFld("<p id='Ostrea'>Ostrea</p>", "treeview_taxa.html?pic=%22Ostrea%2Ejpg%22"))
L6.xID = "Ostrea"
lv28 = insDoc(L6, gLnk("S", "<p id='Ostrea_edulis'>Ostrea_edulis</p>", AmPpath + "Ostrea_edulis/Ostrea_edulis_res.html"))
lv28.xID = "Ostrea_edulis"
L4 = insFld(L3, gFld("<p id='Mytiloida'>Mytiloida</p>", "treeview_taxa.html?pic=%22Mytiloida%2Ejpg%22"))
L4.xID = "Mytiloida"
L5 = insFld(L4, gFld("<p id='Mytilidae'>Mytilidae</p>", "treeview_taxa.html?pic=%22Mytilidae%2Ejpg%22"))
L5.xID = "Mytilidae"
L6 = insFld(L5, gFld("<p id='Perna'>Perna</p>", "treeview_taxa.html?pic=%22Perna%2Ejpg%22"))
L6.xID = "Perna"
lv29 = insDoc(L6, gLnk("S", "<p id='Perna_viridis'>Perna_viridis</p>", AmPpath + "Perna_viridis/Perna_viridis_res.html"))
lv29.xID = "Perna_viridis"
L6 = insFld(L5, gFld("<p id='Mytilus'>Mytilus</p>", "treeview_taxa.html?pic=%22Mytilus%2Ejpg%22"))
L6.xID = "Mytilus"
lv30 = insDoc(L6, gLnk("S", "<p id='Mytilus_edulis'>Mytilus_edulis</p>", AmPpath + "Mytilus_edulis/Mytilus_edulis_res.html"))
lv30.xID = "Mytilus_edulis"
lv31 = insDoc(L6, gLnk("S", "<p id='Mytilus_californianus'>Mytilus_californianus</p>", AmPpath + "Mytilus_californianus/Mytilus_californianus_res.html"))
lv31.xID = "Mytilus_californianus"
lv32 = insDoc(L6, gLnk("S", "<p id='Mytilus_galloprovincialis'>Mytilus_galloprovincialis</p>", AmPpath + "Mytilus_galloprovincialis/Mytilus_galloprovincialis_res.html"))
lv32.xID = "Mytilus_galloprovincialis"
lv33 = insDoc(L6, gLnk("S", "<p id='Mytilus_trossulus'>Mytilus_trossulus</p>", AmPpath + "Mytilus_trossulus/Mytilus_trossulus_res.html"))
lv33.xID = "Mytilus_trossulus"
L6 = insFld(L5, gFld("<p id='Brachidontes'>Brachidontes</p>", "treeview_taxa.html?pic=%22Brachidontes%2Ejpg%22"))
L6.xID = "Brachidontes"
lv34 = insDoc(L6, gLnk("S", "<p id='Brachidontes_pharaonis'>Brachidontes_pharaonis</p>", AmPpath + "Brachidontes_pharaonis/Brachidontes_pharaonis_res.html"))
lv34.xID = "Brachidontes_pharaonis"
L6 = insFld(L5, gFld("<p id='Mytilaster'>Mytilaster</p>", "treeview_taxa.html?pic=%22Mytilaster%2Ejpg%22"))
L6.xID = "Mytilaster"
lv35 = insDoc(L6, gLnk("S", "<p id='Mytilaster_minimus'>Mytilaster_minimus</p>", AmPpath + "Mytilaster_minimus/Mytilaster_minimus_res.html"))
lv35.xID = "Mytilaster_minimus"
L6 = insFld(L5, gFld("<p id='Septifer'>Septifer</p>", "treeview_taxa.html?pic=%22Septifer%2Ejpg%22"))
L6.xID = "Septifer"
lv36 = insDoc(L6, gLnk("S", "<p id='Septifer_virgatus'>Septifer_virgatus</p>", AmPpath + "Septifer_virgatus/Septifer_virgatus_res.html"))
lv36.xID = "Septifer_virgatus"
L4 = insFld(L3, gFld("<p id='Pterioida'>Pterioida</p>", "treeview_taxa.html?pic=%22Pterioida%2Ejpg%22"))
L4.xID = "Pterioida"
L5 = insFld(L4, gFld("<p id='Pteriidae'>Pteriidae</p>", "treeview_taxa.html?pic=%22Pteriidae%2Ejpg%22"))
L5.xID = "Pteriidae"
L6 = insFld(L5, gFld("<p id='Pinctada'>Pinctada</p>", "treeview_taxa.html?pic=%22Pinctada%2Ejpg%22"))
L6.xID = "Pinctada"
lv37 = insDoc(L6, gLnk("S", "<p id='Pinctada_margaritifera'>Pinctada_margaritifera</p>", AmPpath + "Pinctada_margaritifera/Pinctada_margaritifera_res.html"))
lv37.xID = "Pinctada_margaritifera"
L2 = insFld(foldersTree, gFld("<p id='Gastropoda'>Gastropoda</p>", "treeview_taxa.html?pic=%22Gastropoda%2Ejpg%22"))
L2.xID = "Gastropoda"
L3 = insFld(L2, gFld("<p id='Patellogastropoda'>Patellogastropoda</p>", "treeview_taxa.html?pic=%22Patellogastropoda%2Ejpg%22"))
L3.xID = "Patellogastropoda"
L4 = insFld(L3, gFld("<p id='Patellidae'>Patellidae</p>", "treeview_taxa.html?pic=%22Patellidae%2Ejpg%22"))
L4.xID = "Patellidae"
L5 = insFld(L4, gFld("<p id='Patella'>Patella</p>", "treeview_taxa.html?pic=%22Patella%2Ejpg%22"))
L5.xID = "Patella"
lv38 = insDoc(L5, gLnk("S", "<p id='Patella_vulgata'>Patella_vulgata</p>", AmPpath + "Patella_vulgata/Patella_vulgata_res.html"))
lv38.xID = "Patella_vulgata"
L3 = insFld(L2, gFld("<p id='Vetigastropoda'>Vetigastropoda</p>", "treeview_taxa.html?pic=%22Vetigastropoda%2Ejpg%22"))
L3.xID = "Vetigastropoda"
L4 = insFld(L3, gFld("<p id='Trochidae'>Trochidae</p>", "treeview_taxa.html?pic=%22Trochidae%2Ejpg%22"))
L4.xID = "Trochidae"
L5 = insFld(L4, gFld("<p id='Gibbula'>Gibbula</p>", "treeview_taxa.html?pic=%22Gibbula%2Ejpg%22"))
L5.xID = "Gibbula"
lv39 = insDoc(L5, gLnk("S", "<p id='Gibbula_umbilicalis'>Gibbula_umbilicalis</p>", AmPpath + "Gibbula_umbilicalis/Gibbula_umbilicalis_res.html"))
lv39.xID = "Gibbula_umbilicalis"
L5 = insFld(L4, gFld("<p id='Phorcus'>Phorcus</p>", "treeview_taxa.html?pic=%22Phorcus%2Ejpg%22"))
L5.xID = "Phorcus"
lv40 = insDoc(L5, gLnk("S", "<p id='Phorcus_lineatus'>Phorcus_lineatus</p>", AmPpath + "Phorcus_lineatus/Phorcus_lineatus_res.html"))
lv40.xID = "Phorcus_lineatus"
L3 = insFld(L2, gFld("<p id='Caenogastropoda'>Caenogastropoda</p>", "treeview_taxa.html?pic=%22Caenogastropoda%2Ejpg%22"))
L3.xID = "Caenogastropoda"
L4 = insFld(L3, gFld("<p id='Hypsogastropoda'>Hypsogastropoda</p>", "treeview_taxa.html?pic=%22Hypsogastropoda%2Ejpg%22"))
L4.xID = "Hypsogastropoda"
L5 = insFld(L4, gFld("<p id='Neogastropoda'>Neogastropoda</p>", "treeview_taxa.html?pic=%22Neogastropoda%2Ejpg%22"))
L5.xID = "Neogastropoda"
L6 = insFld(L5, gFld("<p id='Muricidae'>Muricidae</p>", "treeview_taxa.html?pic=%22Muricidae%2Ejpg%22"))
L6.xID = "Muricidae"
L7 = insFld(L6, gFld("<p id='Urosalpinx'>Urosalpinx</p>", "treeview_taxa.html?pic=%22Urosalpinx%2Ejpg%22"))
L7.xID = "Urosalpinx"
lv41 = insDoc(L7, gLnk("S", "<p id='Urosalpinx_cinerea'>Urosalpinx_cinerea</p>", AmPpath + "Urosalpinx_cinerea/Urosalpinx_cinerea_res.html"))
lv41.xID = "Urosalpinx_cinerea"
L6 = insFld(L5, gFld("<p id='Buccinidae'>Buccinidae</p>", "treeview_taxa.html?pic=%22Buccinidae%2Ejpg%22"))
L6.xID = "Buccinidae"
L7 = insFld(L6, gFld("<p id='Buccinum'>Buccinum</p>", "treeview_taxa.html?pic=%22Buccinum%2Ejpg%22"))
L7.xID = "Buccinum"
lv42 = insDoc(L7, gLnk("S", "<p id='Buccinum_undatum'>Buccinum_undatum</p>", AmPpath + "Buccinum_undatum/Buccinum_undatum_res.html"))
lv42.xID = "Buccinum_undatum"
L6 = insFld(L5, gFld("<p id='Volutidae'>Volutidae</p>", "treeview_taxa.html?pic=%22Volutidae%2Ejpg%22"))
L6.xID = "Volutidae"
L7 = insFld(L6, gFld("<p id='Adelomelon'>Adelomelon</p>", "treeview_taxa.html?pic=%22Adelomelon%2Ejpg%22"))
L7.xID = "Adelomelon"
lv43 = insDoc(L7, gLnk("S", "<p id='Adelomelon_brasiliana'>Adelomelon_brasiliana</p>", AmPpath + "Adelomelon_brasiliana/Adelomelon_brasiliana_res.html"))
lv43.xID = "Adelomelon_brasiliana"
L5 = insFld(L4, gFld("<p id='Littorinimorpha'>Littorinimorpha</p>", "treeview_taxa.html?pic=%22Littorinimorpha%2Ejpg%22"))
L5.xID = "Littorinimorpha"
L6 = insFld(L5, gFld("<p id='Littorinidae'>Littorinidae</p>", "treeview_taxa.html?pic=%22Littorinidae%2Ejpg%22"))
L6.xID = "Littorinidae"
L7 = insFld(L6, gFld("<p id='Littorina'>Littorina</p>", "treeview_taxa.html?pic=%22Littorina%2Ejpg%22"))
L7.xID = "Littorina"
lv44 = insDoc(L7, gLnk("S", "<p id='Littorina_littorea'>Littorina_littorea</p>", AmPpath + "Littorina_littorea/Littorina_littorea_res.html"))
lv44.xID = "Littorina_littorea"
L6 = insFld(L5, gFld("<p id='Calyptraeidae'>Calyptraeidae</p>", "treeview_taxa.html?pic=%22Calyptraeidae%2Ejpg%22"))
L6.xID = "Calyptraeidae"
L7 = insFld(L6, gFld("<p id='Crepidula'>Crepidula</p>", "treeview_taxa.html?pic=%22Crepidula%2Ejpg%22"))
L7.xID = "Crepidula"
lv45 = insDoc(L7, gLnk("S", "<p id='Crepidula_fornicata'>Crepidula_fornicata</p>", AmPpath + "Crepidula_fornicata/Crepidula_fornicata_res.html"))
lv45.xID = "Crepidula_fornicata"
L6 = insFld(L5, gFld("<p id='Naticidae'>Naticidae</p>", "treeview_taxa.html?pic=%22Naticidae%2Ejpg%22"))
L6.xID = "Naticidae"
L7 = insFld(L6, gFld("<p id='Euspira'>Euspira</p>", "treeview_taxa.html?pic=%22Euspira%2Ejpg%22"))
L7.xID = "Euspira"
lv46 = insDoc(L7, gLnk("S", "<p id='Euspira_nitida'>Euspira_nitida</p>", AmPpath + "Euspira_nitida/Euspira_nitida_res.html"))
lv46.xID = "Euspira_nitida"
L6 = insFld(L5, gFld("<p id='Tateidae'>Tateidae</p>", "treeview_taxa.html?pic=%22Tateidae%2Ejpg%22"))
L6.xID = "Tateidae"
L7 = insFld(L6, gFld("<p id='Potamopyrgus'>Potamopyrgus</p>", "treeview_taxa.html?pic=%22Potamopyrgus%2Ejpg%22"))
L7.xID = "Potamopyrgus"
lv47 = insDoc(L7, gLnk("S", "<p id='Potamopyrgus_antipodarum'>Potamopyrgus_antipodarum</p>", AmPpath + "Potamopyrgus_antipodarum/Potamopyrgus_antipodarum_res.html"))
lv47.xID = "Potamopyrgus_antipodarum"
L3 = insFld(L2, gFld("<p id='Heterobranchia'>Heterobranchia</p>", "treeview_taxa.html?pic=%22Heterobranchia%2Ejpg%22"))
L3.xID = "Heterobranchia"
L4 = insFld(L3, gFld("<p id='Opistobranchia'>Opistobranchia</p>", "treeview_taxa.html?pic=%22Opistobranchia%2Ejpg%22"))
L4.xID = "Opistobranchia"
L5 = insFld(L4, gFld("<p id='Euopisthobranchia'>Euopisthobranchia</p>", "treeview_taxa.html?pic=%22Euopisthobranchia%2Ejpg%22"))
L5.xID = "Euopisthobranchia"
L6 = insFld(L5, gFld("<p id='Anaspidea'>Anaspidea</p>", "treeview_taxa.html?pic=%22Anaspidea%2Ejpg%22"))
L6.xID = "Anaspidea"
L7 = insFld(L6, gFld("<p id='Aplysiidae'>Aplysiidae</p>", "treeview_taxa.html?pic=%22Aplysiidae%2Ejpg%22"))
L7.xID = "Aplysiidae"
L8 = insFld(L7, gFld("<p id='Aplysia'>Aplysia</p>", "treeview_taxa.html?pic=%22Aplysia%2Ejpg%22"))
L8.xID = "Aplysia"
lv48 = insDoc(L8, gLnk("S", "<p id='Aplysia_californica'>Aplysia_californica</p>", AmPpath + "Aplysia_californica/Aplysia_californica_res.html"))
lv48.xID = "Aplysia_californica"
L7 = insFld(L6, gFld("<p id='Gymnosomata'>Gymnosomata</p>", "treeview_taxa.html?pic=%22Gymnosomata%2Ejpg%22"))
L7.xID = "Gymnosomata"
L8 = insFld(L7, gFld("<p id='Clionidae'>Clionidae</p>", "treeview_taxa.html?pic=%22Clionidae%2Ejpg%22"))
L8.xID = "Clionidae"
L9 = insFld(L8, gFld("<p id='Clione'>Clione</p>", "treeview_taxa.html?pic=%22Clione%2Ejpg%22"))
L9.xID = "Clione"
lv49 = insDoc(L9, gLnk("S", "<p id='Clione_limacina'>Clione_limacina</p>", AmPpath + "Clione_limacina/Clione_limacina_res.html"))
lv49.xID = "Clione_limacina"
L5 = insFld(L4, gFld("<p id='Nudibranchia'>Nudibranchia</p>", "treeview_taxa.html?pic=%22Nudibranchia%2Ejpg%22"))
L5.xID = "Nudibranchia"
L6 = insFld(L5, gFld("<p id='Tergipedidae'>Tergipedidae</p>", "treeview_taxa.html?pic=%22Tergipedidae%2Ejpg%22"))
L6.xID = "Tergipedidae"
L7 = insFld(L6, gFld("<p id='Cuthona'>Cuthona</p>", "treeview_taxa.html?pic=%22Cuthona%2Ejpg%22"))
L7.xID = "Cuthona"
lv50 = insDoc(L7, gLnk("S", "<p id='Cuthona_nana'>Cuthona_nana</p>", AmPpath + "Cuthona_nana/Cuthona_nana_res.html"))
lv50.xID = "Cuthona_nana"
L4 = insFld(L3, gFld("<p id='Pulmonata'>Pulmonata</p>", "treeview_taxa.html?pic=%22Pulmonata%2Ejpg%22"))
L4.xID = "Pulmonata"
L5 = insFld(L4, gFld("<p id='Hygrophila'>Hygrophila</p>", "treeview_taxa.html?pic=%22Hygrophila%2Ejpg%22"))
L5.xID = "Hygrophila"
L6 = insFld(L5, gFld("<p id='Lymnaeidae'>Lymnaeidae</p>", "treeview_taxa.html?pic=%22Lymnaeidae%2Ejpg%22"))
L6.xID = "Lymnaeidae"
L7 = insFld(L6, gFld("<p id='Lymnaea'>Lymnaea</p>", "treeview_taxa.html?pic=%22Lymnaea%2Ejpg%22"))
L7.xID = "Lymnaea"
lv51 = insDoc(L7, gLnk("S", "<p id='Lymnaea_stagnalis'>Lymnaea_stagnalis</p>", AmPpath + "Lymnaea_stagnalis/Lymnaea_stagnalis_res.html"))
lv51.xID = "Lymnaea_stagnalis"
L7 = insFld(L6, gFld("<p id='Stagnicola'>Stagnicola</p>", "treeview_taxa.html?pic=%22Stagnicola%2Ejpg%22"))
L7.xID = "Stagnicola"
lv52 = insDoc(L7, gLnk("S", "<p id='Stagnicola_palustris'>Stagnicola_palustris</p>", AmPpath + "Stagnicola_palustris/Stagnicola_palustris_res.html"))
lv52.xID = "Stagnicola_palustris"
L6 = insFld(L5, gFld("<p id='Planorbidae'>Planorbidae</p>", "treeview_taxa.html?pic=%22Planorbidae%2Ejpg%22"))
L6.xID = "Planorbidae"
L7 = insFld(L6, gFld("<p id='Biomphalaria'>Biomphalaria</p>", "treeview_taxa.html?pic=%22Biomphalaria%2Ejpg%22"))
L7.xID = "Biomphalaria"
lv53 = insDoc(L7, gLnk("S", "<p id='Biomphalaria_glabrata'>Biomphalaria_glabrata</p>", AmPpath + "Biomphalaria_glabrata/Biomphalaria_glabrata_res.html"))
lv53.xID = "Biomphalaria_glabrata"
L7 = insFld(L6, gFld("<p id='Planorbis'>Planorbis</p>", "treeview_taxa.html?pic=%22Planorbis%2Ejpg%22"))
L7.xID = "Planorbis"
lv54 = insDoc(L7, gLnk("S", "<p id='Planorbis_planorbis'>Planorbis_planorbis</p>", AmPpath + "Planorbis_planorbis/Planorbis_planorbis_res.html"))
lv54.xID = "Planorbis_planorbis"
L5 = insFld(L4, gFld("<p id='Eupulmonata'>Eupulmonata</p>", "treeview_taxa.html?pic=%22Eupulmonata%2Ejpg%22"))
L5.xID = "Eupulmonata"
L6 = insFld(L5, gFld("<p id='Achatinoidea'>Achatinoidea</p>", "treeview_taxa.html?pic=%22Achatinoidea%2Ejpg%22"))
L6.xID = "Achatinoidea"
L7 = insFld(L6, gFld("<p id='Achatinidae'>Achatinidae</p>", "treeview_taxa.html?pic=%22Achatinidae%2Ejpg%22"))
L7.xID = "Achatinidae"
L8 = insFld(L7, gFld("<p id='Achatina'>Achatina</p>", "treeview_taxa.html?pic=%22Achatina%2Ejpg%22"))
L8.xID = "Achatina"
lv55 = insDoc(L8, gLnk("S", "<p id='Achatina_achatina'>Achatina_achatina</p>", AmPpath + "Achatina_achatina/Achatina_achatina_res.html"))
lv55.xID = "Achatina_achatina"
L6 = insFld(L5, gFld("<p id='Limacoidea'>Limacoidea</p>", "treeview_taxa.html?pic=%22Limacoidea%2Ejpg%22"))
L6.xID = "Limacoidea"
L7 = insFld(L6, gFld("<p id='Limacidae'>Limacidae</p>", "treeview_taxa.html?pic=%22Limacidae%2Ejpg%22"))
L7.xID = "Limacidae"
L8 = insFld(L7, gFld("<p id='Ambigolimax'>Ambigolimax</p>", "treeview_taxa.html?pic=%22Ambigolimax%2Ejpg%22"))
L8.xID = "Ambigolimax"
lv56 = insDoc(L8, gLnk("S", "<p id='Ambigolimax_valentianus'>Ambigolimax_valentianus</p>", AmPpath + "Ambigolimax_valentianus/Ambigolimax_valentianus_res.html"))
lv56.xID = "Ambigolimax_valentianus"
L6 = insFld(L5, gFld("<p id='Helicoidea'>Helicoidea</p>", "treeview_taxa.html?pic=%22Helicoidea%2Ejpg%22"))
L6.xID = "Helicoidea"
L7 = insFld(L6, gFld("<p id='Helicidae'>Helicidae</p>", "treeview_taxa.html?pic=%22Helicidae%2Ejpg%22"))
L7.xID = "Helicidae"
L8 = insFld(L7, gFld("<p id='Cornu'>Cornu</p>", "treeview_taxa.html?pic=%22Cornu%2Ejpg%22"))
L8.xID = "Cornu"
lv57 = insDoc(L8, gLnk("S", "<p id='Cornu_aspersum'>Cornu_aspersum</p>", AmPpath + "Cornu_aspersum/Cornu_aspersum_res.html"))
lv57.xID = "Cornu_aspersum"
L8 = insFld(L7, gFld("<p id='Helix'>Helix</p>", "treeview_taxa.html?pic=%22Helix%2Ejpg%22"))
L8.xID = "Helix"
lv58 = insDoc(L8, gLnk("S", "<p id='Helix_pomatia'>Helix_pomatia</p>", AmPpath + "Helix_pomatia/Helix_pomatia_res.html"))
lv58.xID = "Helix_pomatia"
L7 = insFld(L6, gFld("<p id='Hygromiidae'>Hygromiidae</p>", "treeview_taxa.html?pic=%22Hygromiidae%2Ejpg%22"))
L7.xID = "Hygromiidae"
L8 = insFld(L7, gFld("<p id='Cernuella'>Cernuella</p>", "treeview_taxa.html?pic=%22Cernuella%2Ejpg%22"))
L8.xID = "Cernuella"
lv59 = insDoc(L8, gLnk("S", "<p id='Cernuella_virgata'>Cernuella_virgata</p>", AmPpath + "Cernuella_virgata/Cernuella_virgata_res.html"))
lv59.xID = "Cernuella_virgata"
L2 = insFld(foldersTree, gFld("<p id='Cephalopoda'>Cephalopoda</p>", "treeview_taxa.html?pic=%22Cephalopoda%2Ejpg%22"))
L2.xID = "Cephalopoda"
L3 = insFld(L2, gFld("<p id='Nautilida'>Nautilida</p>", "treeview_taxa.html?pic=%22Nautilida%2Ejpg%22"))
L3.xID = "Nautilida"
L4 = insFld(L3, gFld("<p id='Nautilidae'>Nautilidae</p>", "treeview_taxa.html?pic=%22Nautilidae%2Ejpg%22"))
L4.xID = "Nautilidae"
L5 = insFld(L4, gFld("<p id='Nautilus'>Nautilus</p>", "treeview_taxa.html?pic=%22Nautilus%2Ejpg%22"))
L5.xID = "Nautilus"
lv60 = insDoc(L5, gLnk("S", "<p id='Nautilus_pompilius'>Nautilus_pompilius</p>", AmPpath + "Nautilus_pompilius/Nautilus_pompilius_res.html"))
lv60.xID = "Nautilus_pompilius"
L3 = insFld(L2, gFld("<p id='Sepiida'>Sepiida</p>", "treeview_taxa.html?pic=%22Sepiida%2Ejpg%22"))
L3.xID = "Sepiida"
L4 = insFld(L3, gFld("<p id='Sepiidae'>Sepiidae</p>", "treeview_taxa.html?pic=%22Sepiidae%2Ejpg%22"))
L4.xID = "Sepiidae"
L5 = insFld(L4, gFld("<p id='Sepia'>Sepia</p>", "treeview_taxa.html?pic=%22Sepia%2Ejpg%22"))
L5.xID = "Sepia"
lv61 = insDoc(L5, gLnk("S", "<p id='Sepia_officinalis'>Sepia_officinalis</p>", AmPpath + "Sepia_officinalis/Sepia_officinalis_res.html"))
lv61.xID = "Sepia_officinalis"
L3 = insFld(L2, gFld("<p id='Sepiolida'>Sepiolida</p>", "treeview_taxa.html?pic=%22Sepiolida%2Ejpg%22"))
L3.xID = "Sepiolida"
L4 = insFld(L3, gFld("<p id='Sepiolidae'>Sepiolidae</p>", "treeview_taxa.html?pic=%22Sepiolidae%2Ejpg%22"))
L4.xID = "Sepiolidae"
L5 = insFld(L4, gFld("<p id='Sepiola'>Sepiola</p>", "treeview_taxa.html?pic=%22Sepiola%2Ejpg%22"))
L5.xID = "Sepiola"
lv62 = insDoc(L5, gLnk("S", "<p id='Sepiola_atlantica'>Sepiola_atlantica</p>", AmPpath + "Sepiola_atlantica/Sepiola_atlantica_res.html"))
lv62.xID = "Sepiola_atlantica"
L5 = insFld(L4, gFld("<p id='Sepietta'>Sepietta</p>", "treeview_taxa.html?pic=%22Sepietta%2Ejpg%22"))
L5.xID = "Sepietta"
lv63 = insDoc(L5, gLnk("S", "<p id='Sepietta_obscura'>Sepietta_obscura</p>", AmPpath + "Sepietta_obscura/Sepietta_obscura_res.html"))
lv63.xID = "Sepietta_obscura"
L5 = insFld(L4, gFld("<p id='Euprymna'>Euprymna</p>", "treeview_taxa.html?pic=%22Euprymna%2Ejpg%22"))
L5.xID = "Euprymna"
lv64 = insDoc(L5, gLnk("S", "<p id='Euprymna_hyllebergi'>Euprymna_hyllebergi</p>", AmPpath + "Euprymna_hyllebergi/Euprymna_hyllebergi_res.html"))
lv64.xID = "Euprymna_hyllebergi"
L3 = insFld(L2, gFld("<p id='Teuthida'>Teuthida</p>", "treeview_taxa.html?pic=%22Teuthida%2Ejpg%22"))
L3.xID = "Teuthida"
L4 = insFld(L3, gFld("<p id='Loliginidae'>Loliginidae</p>", "treeview_taxa.html?pic=%22Loliginidae%2Ejpg%22"))
L4.xID = "Loliginidae"
L5 = insFld(L4, gFld("<p id='Doryteuthis'>Doryteuthis</p>", "treeview_taxa.html?pic=%22Doryteuthis%2Ejpg%22"))
L5.xID = "Doryteuthis"
lv65 = insDoc(L5, gLnk("S", "<p id='Doryteuthis_pealeii'>Doryteuthis_pealeii</p>", AmPpath + "Doryteuthis_pealeii/Doryteuthis_pealeii_res.html"))
lv65.xID = "Doryteuthis_pealeii"
L3 = insFld(L2, gFld("<p id='Octopoda'>Octopoda</p>", "treeview_taxa.html?pic=%22Octopoda%2Ejpg%22"))
L3.xID = "Octopoda"
L4 = insFld(L3, gFld("<p id='Octopodidae'>Octopodidae</p>", "treeview_taxa.html?pic=%22Octopodidae%2Ejpg%22"))
L4.xID = "Octopodidae"
L5 = insFld(L4, gFld("<p id='Octopus'>Octopus</p>", "treeview_taxa.html?pic=%22Octopus%2Ejpg%22"))
L5.xID = "Octopus"
lv66 = insDoc(L5, gLnk("S", "<p id='Octopus_cyanea'>Octopus_cyanea</p>", AmPpath + "Octopus_cyanea/Octopus_cyanea_res.html"))
lv66.xID = "Octopus_cyanea"
lv67 = insDoc(L5, gLnk("S", "<p id='Octopus_maya'>Octopus_maya</p>", AmPpath + "Octopus_maya/Octopus_maya_res.html"))
lv67.xID = "Octopus_maya"
lv68 = insDoc(L5, gLnk("S", "<p id='Octopus_vulgaris'>Octopus_vulgaris</p>", AmPpath + "Octopus_vulgaris/Octopus_vulgaris_res.html"))
lv68.xID = "Octopus_vulgaris"
lv69 = insDoc(L5, gLnk("S", "<p id='Octopus_mimus'>Octopus_mimus</p>", AmPpath + "Octopus_mimus/Octopus_mimus_res.html"))
lv69.xID = "Octopus_mimus"
foldersTree.treeID = "Mollusca"
