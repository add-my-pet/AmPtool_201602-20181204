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

foldersTree = gFld("<b>Mollusca</b>", "treeview_taxa.html")
foldersTree.xID = "Mollusca"
L2 = insFld(foldersTree, gFld("Polyplacophora", "treeview_taxa.html?pic=%22Polyplacophora%2Ejpg%22"))
L2.xID = "Polyplacophora"
L3 = insFld(L2, gFld("Neoloricata", "treeview_taxa.html?pic=%22Neoloricata%2Ejpg%22"))
L3.xID = "Neoloricata"
L4 = insFld(L3, gFld("Ischnochitonidae", "treeview_taxa.html?pic=%22Ischnochitonidae%2Ejpg%22"))
L4.xID = "Ischnochitonidae"
L5 = insFld(L4, gFld("Lepidochitona", "treeview_taxa.html?pic=%22Lepidochitona%2Ejpg%22"))
L5.xID = "Lepidochitona"
lv1 = insDoc(L5, gLnk("S", "Lepidochitona_cinerea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lepidochitona_cinerea/Lepidochitona_cinerea_res.html"))
lv1.xID = "Lepidochitona_cinerea"
L2 = insFld(foldersTree, gFld("Bivalvia", "treeview_taxa.html?pic=%22Bivalvia%2Ejpg%22"))
L2.xID = "Bivalvia"
L3 = insFld(L2, gFld("Heterodonta", "treeview_taxa.html?pic=%22Heterodonta%2Ejpg%22"))
L3.xID = "Heterodonta"
L4 = insFld(L3, gFld("Myoida", "treeview_taxa.html?pic=%22Myoida%2Ejpg%22"))
L4.xID = "Myoida"
L5 = insFld(L4, gFld("Myidae", "treeview_taxa.html?pic=%22Myidae%2Ejpg%22"))
L5.xID = "Myidae"
L6 = insFld(L5, gFld("Mya", "treeview_taxa.html?pic=%22Mya%2Ejpg%22"))
L6.xID = "Mya"
lv2 = insDoc(L6, gLnk("S", "Mya_arenaria", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mya_arenaria/Mya_arenaria_res.html"))
lv2.xID = "Mya_arenaria"
L4 = insFld(L3, gFld("Veneroida", "treeview_taxa.html?pic=%22Veneroida%2Ejpg%22"))
L4.xID = "Veneroida"
L5 = insFld(L4, gFld("Arcticoidea", "treeview_taxa.html?pic=%22Arcticoidea%2Ejpg%22"))
L5.xID = "Arcticoidea"
L6 = insFld(L5, gFld("Arcticidae", "treeview_taxa.html?pic=%22Arcticidae%2Ejpg%22"))
L6.xID = "Arcticidae"
L7 = insFld(L6, gFld("Arctica", "treeview_taxa.html?pic=%22Arctica%2Ejpg%22"))
L7.xID = "Arctica"
lv3 = insDoc(L7, gLnk("S", "Arctica_islandica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Arctica_islandica/Arctica_islandica_res.html"))
lv3.xID = "Arctica_islandica"
L5 = insFld(L4, gFld("Corbiculoidea", "treeview_taxa.html?pic=%22Corbiculoidea%2Ejpg%22"))
L5.xID = "Corbiculoidea"
L6 = insFld(L5, gFld("Sphaeriidae", "treeview_taxa.html?pic=%22Sphaeriidae%2Ejpg%22"))
L6.xID = "Sphaeriidae"
L7 = insFld(L6, gFld("Sphaerium", "treeview_taxa.html?pic=%22Sphaerium%2Ejpg%22"))
L7.xID = "Sphaerium"
lv4 = insDoc(L7, gLnk("S", "Sphaerium_corneum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sphaerium_corneum/Sphaerium_corneum_res.html"))
lv4.xID = "Sphaerium_corneum"
L5 = insFld(L4, gFld("Tridacnidea", "treeview_taxa.html?pic=%22Tridacnidea%2Ejpg%22"))
L5.xID = "Tridacnidea"
L6 = insFld(L5, gFld("Tridacnidae", "treeview_taxa.html?pic=%22Tridacnidae%2Ejpg%22"))
L6.xID = "Tridacnidae"
L7 = insFld(L6, gFld("Tridacna", "treeview_taxa.html?pic=%22Tridacna%2Ejpg%22"))
L7.xID = "Tridacna"
lv5 = insDoc(L7, gLnk("S", "Tridacna_gigas", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tridacna_gigas/Tridacna_gigas_res.html"))
lv5.xID = "Tridacna_gigas"
L5 = insFld(L4, gFld("Carditoidea", "treeview_taxa.html?pic=%22Carditoidea%2Ejpg%22"))
L5.xID = "Carditoidea"
L6 = insFld(L5, gFld("Cardiidae", "treeview_taxa.html?pic=%22Cardiidae%2Ejpg%22"))
L6.xID = "Cardiidae"
L7 = insFld(L6, gFld("Cerastoderma", "treeview_taxa.html?pic=%22Cerastoderma%2Ejpg%22"))
L7.xID = "Cerastoderma"
lv6 = insDoc(L7, gLnk("S", "Cerastoderma_edule", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cerastoderma_edule/Cerastoderma_edule_res.html"))
lv6.xID = "Cerastoderma_edule"
lv7 = insDoc(L7, gLnk("S", "Cerastoderma_glaucum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cerastoderma_glaucum/Cerastoderma_glaucum_res.html"))
lv7.xID = "Cerastoderma_glaucum"
L5 = insFld(L4, gFld("Mactroidea", "treeview_taxa.html?pic=%22Mactroidea%2Ejpg%22"))
L5.xID = "Mactroidea"
L6 = insFld(L5, gFld("Mactridae", "treeview_taxa.html?pic=%22Mactridae%2Ejpg%22"))
L6.xID = "Mactridae"
L7 = insFld(L6, gFld("Spisula", "treeview_taxa.html?pic=%22Spisula%2Ejpg%22"))
L7.xID = "Spisula"
lv8 = insDoc(L7, gLnk("S", "Spisula_subtruncata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Spisula_subtruncata/Spisula_subtruncata_res.html"))
lv8.xID = "Spisula_subtruncata"
lv9 = insDoc(L7, gLnk("S", "Spisula_solidissima", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Spisula_solidissima/Spisula_solidissima_res.html"))
lv9.xID = "Spisula_solidissima"
L5 = insFld(L4, gFld("Tellinoidea", "treeview_taxa.html?pic=%22Tellinoidea%2Ejpg%22"))
L5.xID = "Tellinoidea"
L6 = insFld(L5, gFld("Tellinidae", "treeview_taxa.html?pic=%22Tellinidae%2Ejpg%22"))
L6.xID = "Tellinidae"
L7 = insFld(L6, gFld("Macoma", "treeview_taxa.html?pic=%22Macoma%2Ejpg%22"))
L7.xID = "Macoma"
lv10 = insDoc(L7, gLnk("S", "Macoma_balthica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Macoma_balthica/Macoma_balthica_res.html"))
lv10.xID = "Macoma_balthica"
L5 = insFld(L4, gFld("Lucinoidea", "treeview_taxa.html?pic=%22Lucinoidea%2Ejpg%22"))
L5.xID = "Lucinoidea"
L6 = insFld(L5, gFld("Thyasiridae", "treeview_taxa.html?pic=%22Thyasiridae%2Ejpg%22"))
L6.xID = "Thyasiridae"
L7 = insFld(L6, gFld("Thyasira", "treeview_taxa.html?pic=%22Thyasira%2Ejpg%22"))
L7.xID = "Thyasira"
lv11 = insDoc(L7, gLnk("S", "Thyasira_cf_gouldi", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Thyasira_cf_gouldi/Thyasira_cf_gouldi_res.html"))
lv11.xID = "Thyasira_cf_gouldi"
L7 = insFld(L6, gFld("Parathyasira", "treeview_taxa.html?pic=%22Parathyasira%2Ejpg%22"))
L7.xID = "Parathyasira"
lv12 = insDoc(L7, gLnk("S", "Parathyasira_sp", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Parathyasira_sp/Parathyasira_sp_res.html"))
lv12.xID = "Parathyasira_sp"
L5 = insFld(L4, gFld("Veneroidea", "treeview_taxa.html?pic=%22Veneroidea%2Ejpg%22"))
L5.xID = "Veneroidea"
L6 = insFld(L5, gFld("Veneridae", "treeview_taxa.html?pic=%22Veneridae%2Ejpg%22"))
L6.xID = "Veneridae"
L7 = insFld(L6, gFld("Ruditapes", "treeview_taxa.html?pic=%22Ruditapes%2Ejpg%22"))
L7.xID = "Ruditapes"
lv13 = insDoc(L7, gLnk("S", "Ruditapes_philippinarum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ruditapes_philippinarum/Ruditapes_philippinarum_res.html"))
lv13.xID = "Ruditapes_philippinarum"
lv14 = insDoc(L7, gLnk("S", "Ruditapes_decussatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ruditapes_decussatus/Ruditapes_decussatus_res.html"))
lv14.xID = "Ruditapes_decussatus"
L7 = insFld(L6, gFld("Dosinia", "treeview_taxa.html?pic=%22Dosinia%2Ejpg%22"))
L7.xID = "Dosinia"
lv15 = insDoc(L7, gLnk("S", "Dosinia_exoleta", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Dosinia_exoleta/Dosinia_exoleta_res.html"))
lv15.xID = "Dosinia_exoleta"
L7 = insFld(L6, gFld("Mercenaria", "treeview_taxa.html?pic=%22Mercenaria%2Ejpg%22"))
L7.xID = "Mercenaria"
lv16 = insDoc(L7, gLnk("S", "Mercenaria_mercenaria", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mercenaria_mercenaria/Mercenaria_mercenaria_res.html"))
lv16.xID = "Mercenaria_mercenaria"
L5 = insFld(L4, gFld("Dreissenidae", "treeview_taxa.html?pic=%22Dreissenidae%2Ejpg%22"))
L5.xID = "Dreissenidae"
L6 = insFld(L5, gFld("Mytilopsis", "treeview_taxa.html?pic=%22Mytilopsis%2Ejpg%22"))
L6.xID = "Mytilopsis"
lv17 = insDoc(L6, gLnk("S", "Mytilopsis_sallei", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mytilopsis_sallei/Mytilopsis_sallei_res.html"))
lv17.xID = "Mytilopsis_sallei"
L4 = insFld(L3, gFld("Solenida", "treeview_taxa.html?pic=%22Solenida%2Ejpg%22"))
L4.xID = "Solenida"
L5 = insFld(L4, gFld("Solenidae", "treeview_taxa.html?pic=%22Solenidae%2Ejpg%22"))
L5.xID = "Solenidae"
L6 = insFld(L5, gFld("Ensis", "treeview_taxa.html?pic=%22Ensis%2Ejpg%22"))
L6.xID = "Ensis"
lv18 = insDoc(L6, gLnk("S", "Ensis_directus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ensis_directus/Ensis_directus_res.html"))
lv18.xID = "Ensis_directus"
L3 = insFld(L2, gFld("Palaeoheterodonta", "treeview_taxa.html?pic=%22Palaeoheterodonta%2Ejpg%22"))
L3.xID = "Palaeoheterodonta"
L4 = insFld(L3, gFld("Unionoida", "treeview_taxa.html?pic=%22Unionoida%2Ejpg%22"))
L4.xID = "Unionoida"
L5 = insFld(L4, gFld("Unionidae", "treeview_taxa.html?pic=%22Unionidae%2Ejpg%22"))
L5.xID = "Unionidae"
L6 = insFld(L5, gFld("Echyridella", "treeview_taxa.html?pic=%22Echyridella%2Ejpg%22"))
L6.xID = "Echyridella"
lv19 = insDoc(L6, gLnk("S", "Echyridella_menziesii", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Echyridella_menziesii/Echyridella_menziesii_res.html"))
lv19.xID = "Echyridella_menziesii"
L6 = insFld(L5, gFld("Anodonta", "treeview_taxa.html?pic=%22Anodonta%2Ejpg%22"))
L6.xID = "Anodonta"
lv20 = insDoc(L6, gLnk("S", "Anodonta_cygnea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Anodonta_cygnea/Anodonta_cygnea_res.html"))
lv20.xID = "Anodonta_cygnea"
L5 = insFld(L4, gFld("Hyriidae", "treeview_taxa.html?pic=%22Hyriidae%2Ejpg%22"))
L5.xID = "Hyriidae"
L6 = insFld(L5, gFld("Westralunio", "treeview_taxa.html?pic=%22Westralunio%2Ejpg%22"))
L6.xID = "Westralunio"
lv21 = insDoc(L6, gLnk("S", "Westralunio_carteri", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Westralunio_carteri/Westralunio_carteri_res.html"))
lv21.xID = "Westralunio_carteri"
L3 = insFld(L2, gFld("Pteriomorphia", "treeview_taxa.html?pic=%22Pteriomorphia%2Ejpg%22"))
L3.xID = "Pteriomorphia"
L4 = insFld(L3, gFld("Pectinida", "treeview_taxa.html?pic=%22Pectinida%2Ejpg%22"))
L4.xID = "Pectinida"
L5 = insFld(L4, gFld("Pectinidae", "treeview_taxa.html?pic=%22Pectinidae%2Ejpg%22"))
L5.xID = "Pectinidae"
L6 = insFld(L5, gFld("Argopecten", "treeview_taxa.html?pic=%22Argopecten%2Ejpg%22"))
L6.xID = "Argopecten"
lv22 = insDoc(L6, gLnk("S", "Argopecten_purpuratus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Argopecten_purpuratus/Argopecten_purpuratus_res.html"))
lv22.xID = "Argopecten_purpuratus"
L6 = insFld(L5, gFld("Pecten", "treeview_taxa.html?pic=%22Pecten%2Ejpg%22"))
L6.xID = "Pecten"
lv23 = insDoc(L6, gLnk("S", "Pecten_maximus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pecten_maximus/Pecten_maximus_res.html"))
lv23.xID = "Pecten_maximus"
L6 = insFld(L5, gFld("Placopecten", "treeview_taxa.html?pic=%22Placopecten%2Ejpg%22"))
L6.xID = "Placopecten"
lv24 = insDoc(L6, gLnk("S", "Placopecten_magellanicus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Placopecten_magellanicus/Placopecten_magellanicus_res.html"))
lv24.xID = "Placopecten_magellanicus"
L6 = insFld(L5, gFld("Chlamys", "treeview_taxa.html?pic=%22Chlamys%2Ejpg%22"))
L6.xID = "Chlamys"
lv25 = insDoc(L6, gLnk("S", "Chlamys_islandica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Chlamys_islandica/Chlamys_islandica_res.html"))
lv25.xID = "Chlamys_islandica"
L4 = insFld(L3, gFld("Ostreoida", "treeview_taxa.html?pic=%22Ostreoida%2Ejpg%22"))
L4.xID = "Ostreoida"
L5 = insFld(L4, gFld("Ostreidae", "treeview_taxa.html?pic=%22Ostreidae%2Ejpg%22"))
L5.xID = "Ostreidae"
L6 = insFld(L5, gFld("Magallana", "treeview_taxa.html?pic=%22Magallana%2Ejpg%22"))
L6.xID = "Magallana"
lv26 = insDoc(L6, gLnk("S", "Magallana_gigas", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Magallana_gigas/Magallana_gigas_res.html"))
lv26.xID = "Magallana_gigas"
L6 = insFld(L5, gFld("Crassostrea", "treeview_taxa.html?pic=%22Crassostrea%2Ejpg%22"))
L6.xID = "Crassostrea"
lv27 = insDoc(L6, gLnk("S", "Crassostrea_virginica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Crassostrea_virginica/Crassostrea_virginica_res.html"))
lv27.xID = "Crassostrea_virginica"
L6 = insFld(L5, gFld("Ostrea", "treeview_taxa.html?pic=%22Ostrea%2Ejpg%22"))
L6.xID = "Ostrea"
lv28 = insDoc(L6, gLnk("S", "Ostrea_edulis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ostrea_edulis/Ostrea_edulis_res.html"))
lv28.xID = "Ostrea_edulis"
L4 = insFld(L3, gFld("Mytiloida", "treeview_taxa.html?pic=%22Mytiloida%2Ejpg%22"))
L4.xID = "Mytiloida"
L5 = insFld(L4, gFld("Mytilidae", "treeview_taxa.html?pic=%22Mytilidae%2Ejpg%22"))
L5.xID = "Mytilidae"
L6 = insFld(L5, gFld("Perna", "treeview_taxa.html?pic=%22Perna%2Ejpg%22"))
L6.xID = "Perna"
lv29 = insDoc(L6, gLnk("S", "Perna_viridis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Perna_viridis/Perna_viridis_res.html"))
lv29.xID = "Perna_viridis"
L6 = insFld(L5, gFld("Mytilus", "treeview_taxa.html?pic=%22Mytilus%2Ejpg%22"))
L6.xID = "Mytilus"
lv30 = insDoc(L6, gLnk("S", "Mytilus_edulis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mytilus_edulis/Mytilus_edulis_res.html"))
lv30.xID = "Mytilus_edulis"
lv31 = insDoc(L6, gLnk("S", "Mytilus_californianus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mytilus_californianus/Mytilus_californianus_res.html"))
lv31.xID = "Mytilus_californianus"
lv32 = insDoc(L6, gLnk("S", "Mytilus_galloprovincialis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mytilus_galloprovincialis/Mytilus_galloprovincialis_res.html"))
lv32.xID = "Mytilus_galloprovincialis"
lv33 = insDoc(L6, gLnk("S", "Mytilus_trossulus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mytilus_trossulus/Mytilus_trossulus_res.html"))
lv33.xID = "Mytilus_trossulus"
L6 = insFld(L5, gFld("Brachidontes", "treeview_taxa.html?pic=%22Brachidontes%2Ejpg%22"))
L6.xID = "Brachidontes"
lv34 = insDoc(L6, gLnk("S", "Brachidontes_pharaonis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Brachidontes_pharaonis/Brachidontes_pharaonis_res.html"))
lv34.xID = "Brachidontes_pharaonis"
L6 = insFld(L5, gFld("Mytilaster", "treeview_taxa.html?pic=%22Mytilaster%2Ejpg%22"))
L6.xID = "Mytilaster"
lv35 = insDoc(L6, gLnk("S", "Mytilaster_minimus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mytilaster_minimus/Mytilaster_minimus_res.html"))
lv35.xID = "Mytilaster_minimus"
L6 = insFld(L5, gFld("Septifer", "treeview_taxa.html?pic=%22Septifer%2Ejpg%22"))
L6.xID = "Septifer"
lv36 = insDoc(L6, gLnk("S", "Septifer_virgatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Septifer_virgatus/Septifer_virgatus_res.html"))
lv36.xID = "Septifer_virgatus"
L4 = insFld(L3, gFld("Pterioida", "treeview_taxa.html?pic=%22Pterioida%2Ejpg%22"))
L4.xID = "Pterioida"
L5 = insFld(L4, gFld("Pteriidae", "treeview_taxa.html?pic=%22Pteriidae%2Ejpg%22"))
L5.xID = "Pteriidae"
L6 = insFld(L5, gFld("Pinctada", "treeview_taxa.html?pic=%22Pinctada%2Ejpg%22"))
L6.xID = "Pinctada"
lv37 = insDoc(L6, gLnk("S", "Pinctada_margaritifera", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pinctada_margaritifera/Pinctada_margaritifera_res.html"))
lv37.xID = "Pinctada_margaritifera"
L2 = insFld(foldersTree, gFld("Gastropoda", "treeview_taxa.html?pic=%22Gastropoda%2Ejpg%22"))
L2.xID = "Gastropoda"
L3 = insFld(L2, gFld("Patellogastropoda", "treeview_taxa.html?pic=%22Patellogastropoda%2Ejpg%22"))
L3.xID = "Patellogastropoda"
L4 = insFld(L3, gFld("Patellidae", "treeview_taxa.html?pic=%22Patellidae%2Ejpg%22"))
L4.xID = "Patellidae"
L5 = insFld(L4, gFld("Patella", "treeview_taxa.html?pic=%22Patella%2Ejpg%22"))
L5.xID = "Patella"
lv38 = insDoc(L5, gLnk("S", "Patella_vulgata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Patella_vulgata/Patella_vulgata_res.html"))
lv38.xID = "Patella_vulgata"
L3 = insFld(L2, gFld("Vetigastropoda", "treeview_taxa.html?pic=%22Vetigastropoda%2Ejpg%22"))
L3.xID = "Vetigastropoda"
L4 = insFld(L3, gFld("Trochidae", "treeview_taxa.html?pic=%22Trochidae%2Ejpg%22"))
L4.xID = "Trochidae"
L5 = insFld(L4, gFld("Gibbula", "treeview_taxa.html?pic=%22Gibbula%2Ejpg%22"))
L5.xID = "Gibbula"
lv39 = insDoc(L5, gLnk("S", "Gibbula_umbilicalis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gibbula_umbilicalis/Gibbula_umbilicalis_res.html"))
lv39.xID = "Gibbula_umbilicalis"
L5 = insFld(L4, gFld("Phorcus", "treeview_taxa.html?pic=%22Phorcus%2Ejpg%22"))
L5.xID = "Phorcus"
lv40 = insDoc(L5, gLnk("S", "Phorcus_lineatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Phorcus_lineatus/Phorcus_lineatus_res.html"))
lv40.xID = "Phorcus_lineatus"
L3 = insFld(L2, gFld("Caenogastropoda", "treeview_taxa.html?pic=%22Caenogastropoda%2Ejpg%22"))
L3.xID = "Caenogastropoda"
L4 = insFld(L3, gFld("Hypsogastropoda", "treeview_taxa.html?pic=%22Hypsogastropoda%2Ejpg%22"))
L4.xID = "Hypsogastropoda"
L5 = insFld(L4, gFld("Neogastropoda", "treeview_taxa.html?pic=%22Neogastropoda%2Ejpg%22"))
L5.xID = "Neogastropoda"
L6 = insFld(L5, gFld("Muricidae", "treeview_taxa.html?pic=%22Muricidae%2Ejpg%22"))
L6.xID = "Muricidae"
L7 = insFld(L6, gFld("Urosalpinx", "treeview_taxa.html?pic=%22Urosalpinx%2Ejpg%22"))
L7.xID = "Urosalpinx"
lv41 = insDoc(L7, gLnk("S", "Urosalpinx_cinerea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Urosalpinx_cinerea/Urosalpinx_cinerea_res.html"))
lv41.xID = "Urosalpinx_cinerea"
L6 = insFld(L5, gFld("Buccinidae", "treeview_taxa.html?pic=%22Buccinidae%2Ejpg%22"))
L6.xID = "Buccinidae"
L7 = insFld(L6, gFld("Buccinum", "treeview_taxa.html?pic=%22Buccinum%2Ejpg%22"))
L7.xID = "Buccinum"
lv42 = insDoc(L7, gLnk("S", "Buccinum_undatum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Buccinum_undatum/Buccinum_undatum_res.html"))
lv42.xID = "Buccinum_undatum"
L6 = insFld(L5, gFld("Volutidae", "treeview_taxa.html?pic=%22Volutidae%2Ejpg%22"))
L6.xID = "Volutidae"
L7 = insFld(L6, gFld("Adelomelon", "treeview_taxa.html?pic=%22Adelomelon%2Ejpg%22"))
L7.xID = "Adelomelon"
lv43 = insDoc(L7, gLnk("S", "Adelomelon_brasiliana", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Adelomelon_brasiliana/Adelomelon_brasiliana_res.html"))
lv43.xID = "Adelomelon_brasiliana"
L5 = insFld(L4, gFld("Littorinimorpha", "treeview_taxa.html?pic=%22Littorinimorpha%2Ejpg%22"))
L5.xID = "Littorinimorpha"
L6 = insFld(L5, gFld("Littorinidae", "treeview_taxa.html?pic=%22Littorinidae%2Ejpg%22"))
L6.xID = "Littorinidae"
L7 = insFld(L6, gFld("Littorina", "treeview_taxa.html?pic=%22Littorina%2Ejpg%22"))
L7.xID = "Littorina"
lv44 = insDoc(L7, gLnk("S", "Littorina_littorea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Littorina_littorea/Littorina_littorea_res.html"))
lv44.xID = "Littorina_littorea"
L6 = insFld(L5, gFld("Calyptraeidae", "treeview_taxa.html?pic=%22Calyptraeidae%2Ejpg%22"))
L6.xID = "Calyptraeidae"
L7 = insFld(L6, gFld("Crepidula", "treeview_taxa.html?pic=%22Crepidula%2Ejpg%22"))
L7.xID = "Crepidula"
lv45 = insDoc(L7, gLnk("S", "Crepidula_fornicata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Crepidula_fornicata/Crepidula_fornicata_res.html"))
lv45.xID = "Crepidula_fornicata"
L6 = insFld(L5, gFld("Naticidae", "treeview_taxa.html?pic=%22Naticidae%2Ejpg%22"))
L6.xID = "Naticidae"
L7 = insFld(L6, gFld("Euspira", "treeview_taxa.html?pic=%22Euspira%2Ejpg%22"))
L7.xID = "Euspira"
lv46 = insDoc(L7, gLnk("S", "Euspira_nitida", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Euspira_nitida/Euspira_nitida_res.html"))
lv46.xID = "Euspira_nitida"
L6 = insFld(L5, gFld("Tateidae", "treeview_taxa.html?pic=%22Tateidae%2Ejpg%22"))
L6.xID = "Tateidae"
L7 = insFld(L6, gFld("Potamopyrgus", "treeview_taxa.html?pic=%22Potamopyrgus%2Ejpg%22"))
L7.xID = "Potamopyrgus"
lv47 = insDoc(L7, gLnk("S", "Potamopyrgus_antipodarum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Potamopyrgus_antipodarum/Potamopyrgus_antipodarum_res.html"))
lv47.xID = "Potamopyrgus_antipodarum"
L3 = insFld(L2, gFld("Heterobranchia", "treeview_taxa.html?pic=%22Heterobranchia%2Ejpg%22"))
L3.xID = "Heterobranchia"
L4 = insFld(L3, gFld("Opistobranchia", "treeview_taxa.html?pic=%22Opistobranchia%2Ejpg%22"))
L4.xID = "Opistobranchia"
L5 = insFld(L4, gFld("Euopisthobranchia", "treeview_taxa.html?pic=%22Euopisthobranchia%2Ejpg%22"))
L5.xID = "Euopisthobranchia"
L6 = insFld(L5, gFld("Anaspidea", "treeview_taxa.html?pic=%22Anaspidea%2Ejpg%22"))
L6.xID = "Anaspidea"
L7 = insFld(L6, gFld("Aplysiidae", "treeview_taxa.html?pic=%22Aplysiidae%2Ejpg%22"))
L7.xID = "Aplysiidae"
L8 = insFld(L7, gFld("Aplysia", "treeview_taxa.html?pic=%22Aplysia%2Ejpg%22"))
L8.xID = "Aplysia"
lv48 = insDoc(L8, gLnk("S", "Aplysia_californica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aplysia_californica/Aplysia_californica_res.html"))
lv48.xID = "Aplysia_californica"
L7 = insFld(L6, gFld("Gymnosomata", "treeview_taxa.html?pic=%22Gymnosomata%2Ejpg%22"))
L7.xID = "Gymnosomata"
L8 = insFld(L7, gFld("Clionidae", "treeview_taxa.html?pic=%22Clionidae%2Ejpg%22"))
L8.xID = "Clionidae"
L9 = insFld(L8, gFld("Clione", "treeview_taxa.html?pic=%22Clione%2Ejpg%22"))
L9.xID = "Clione"
lv49 = insDoc(L9, gLnk("S", "Clione_limacina", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Clione_limacina/Clione_limacina_res.html"))
lv49.xID = "Clione_limacina"
L5 = insFld(L4, gFld("Nudibranchia", "treeview_taxa.html?pic=%22Nudibranchia%2Ejpg%22"))
L5.xID = "Nudibranchia"
L6 = insFld(L5, gFld("Tergipedidae", "treeview_taxa.html?pic=%22Tergipedidae%2Ejpg%22"))
L6.xID = "Tergipedidae"
L7 = insFld(L6, gFld("Cuthona", "treeview_taxa.html?pic=%22Cuthona%2Ejpg%22"))
L7.xID = "Cuthona"
lv50 = insDoc(L7, gLnk("S", "Cuthona_nana", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cuthona_nana/Cuthona_nana_res.html"))
lv50.xID = "Cuthona_nana"
L4 = insFld(L3, gFld("Pulmonata", "treeview_taxa.html?pic=%22Pulmonata%2Ejpg%22"))
L4.xID = "Pulmonata"
L5 = insFld(L4, gFld("Hygrophila", "treeview_taxa.html?pic=%22Hygrophila%2Ejpg%22"))
L5.xID = "Hygrophila"
L6 = insFld(L5, gFld("Lymnaeidae", "treeview_taxa.html?pic=%22Lymnaeidae%2Ejpg%22"))
L6.xID = "Lymnaeidae"
L7 = insFld(L6, gFld("Lymnaea", "treeview_taxa.html?pic=%22Lymnaea%2Ejpg%22"))
L7.xID = "Lymnaea"
lv51 = insDoc(L7, gLnk("S", "Lymnaea_stagnalis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lymnaea_stagnalis/Lymnaea_stagnalis_res.html"))
lv51.xID = "Lymnaea_stagnalis"
L7 = insFld(L6, gFld("Stagnicola", "treeview_taxa.html?pic=%22Stagnicola%2Ejpg%22"))
L7.xID = "Stagnicola"
lv52 = insDoc(L7, gLnk("S", "Stagnicola_palustris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Stagnicola_palustris/Stagnicola_palustris_res.html"))
lv52.xID = "Stagnicola_palustris"
L6 = insFld(L5, gFld("Planorbidae", "treeview_taxa.html?pic=%22Planorbidae%2Ejpg%22"))
L6.xID = "Planorbidae"
L7 = insFld(L6, gFld("Biomphalaria", "treeview_taxa.html?pic=%22Biomphalaria%2Ejpg%22"))
L7.xID = "Biomphalaria"
lv53 = insDoc(L7, gLnk("S", "Biomphalaria_glabrata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Biomphalaria_glabrata/Biomphalaria_glabrata_res.html"))
lv53.xID = "Biomphalaria_glabrata"
L7 = insFld(L6, gFld("Planorbis", "treeview_taxa.html?pic=%22Planorbis%2Ejpg%22"))
L7.xID = "Planorbis"
lv54 = insDoc(L7, gLnk("S", "Planorbis_planorbis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Planorbis_planorbis/Planorbis_planorbis_res.html"))
lv54.xID = "Planorbis_planorbis"
L5 = insFld(L4, gFld("Eupulmonata", "treeview_taxa.html?pic=%22Eupulmonata%2Ejpg%22"))
L5.xID = "Eupulmonata"
L6 = insFld(L5, gFld("Achatinoidea", "treeview_taxa.html?pic=%22Achatinoidea%2Ejpg%22"))
L6.xID = "Achatinoidea"
L7 = insFld(L6, gFld("Achatinidae", "treeview_taxa.html?pic=%22Achatinidae%2Ejpg%22"))
L7.xID = "Achatinidae"
L8 = insFld(L7, gFld("Achatina", "treeview_taxa.html?pic=%22Achatina%2Ejpg%22"))
L8.xID = "Achatina"
lv55 = insDoc(L8, gLnk("S", "Achatina_achatina", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Achatina_achatina/Achatina_achatina_res.html"))
lv55.xID = "Achatina_achatina"
L6 = insFld(L5, gFld("Limacoidea", "treeview_taxa.html?pic=%22Limacoidea%2Ejpg%22"))
L6.xID = "Limacoidea"
L7 = insFld(L6, gFld("Limacidae", "treeview_taxa.html?pic=%22Limacidae%2Ejpg%22"))
L7.xID = "Limacidae"
L8 = insFld(L7, gFld("Ambigolimax", "treeview_taxa.html?pic=%22Ambigolimax%2Ejpg%22"))
L8.xID = "Ambigolimax"
lv56 = insDoc(L8, gLnk("S", "Ambigolimax_valentianus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ambigolimax_valentianus/Ambigolimax_valentianus_res.html"))
lv56.xID = "Ambigolimax_valentianus"
L6 = insFld(L5, gFld("Helicoidea", "treeview_taxa.html?pic=%22Helicoidea%2Ejpg%22"))
L6.xID = "Helicoidea"
L7 = insFld(L6, gFld("Helicidae", "treeview_taxa.html?pic=%22Helicidae%2Ejpg%22"))
L7.xID = "Helicidae"
L8 = insFld(L7, gFld("Cornu", "treeview_taxa.html?pic=%22Cornu%2Ejpg%22"))
L8.xID = "Cornu"
lv57 = insDoc(L8, gLnk("S", "Cornu_aspersum", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cornu_aspersum/Cornu_aspersum_res.html"))
lv57.xID = "Cornu_aspersum"
L8 = insFld(L7, gFld("Helix", "treeview_taxa.html?pic=%22Helix%2Ejpg%22"))
L8.xID = "Helix"
lv58 = insDoc(L8, gLnk("S", "Helix_pomatia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Helix_pomatia/Helix_pomatia_res.html"))
lv58.xID = "Helix_pomatia"
L7 = insFld(L6, gFld("Hygromiidae", "treeview_taxa.html?pic=%22Hygromiidae%2Ejpg%22"))
L7.xID = "Hygromiidae"
L8 = insFld(L7, gFld("Cernuella", "treeview_taxa.html?pic=%22Cernuella%2Ejpg%22"))
L8.xID = "Cernuella"
lv59 = insDoc(L8, gLnk("S", "Cernuella_virgata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cernuella_virgata/Cernuella_virgata_res.html"))
lv59.xID = "Cernuella_virgata"
L2 = insFld(foldersTree, gFld("Cephalopoda", "treeview_taxa.html?pic=%22Cephalopoda%2Ejpg%22"))
L2.xID = "Cephalopoda"
L3 = insFld(L2, gFld("Nautilida", "treeview_taxa.html?pic=%22Nautilida%2Ejpg%22"))
L3.xID = "Nautilida"
L4 = insFld(L3, gFld("Nautilidae", "treeview_taxa.html?pic=%22Nautilidae%2Ejpg%22"))
L4.xID = "Nautilidae"
L5 = insFld(L4, gFld("Nautilus", "treeview_taxa.html?pic=%22Nautilus%2Ejpg%22"))
L5.xID = "Nautilus"
lv60 = insDoc(L5, gLnk("S", "Nautilus_pompilius", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Nautilus_pompilius/Nautilus_pompilius_res.html"))
lv60.xID = "Nautilus_pompilius"
L3 = insFld(L2, gFld("Sepiida", "treeview_taxa.html?pic=%22Sepiida%2Ejpg%22"))
L3.xID = "Sepiida"
L4 = insFld(L3, gFld("Sepiidae", "treeview_taxa.html?pic=%22Sepiidae%2Ejpg%22"))
L4.xID = "Sepiidae"
L5 = insFld(L4, gFld("Sepia", "treeview_taxa.html?pic=%22Sepia%2Ejpg%22"))
L5.xID = "Sepia"
lv61 = insDoc(L5, gLnk("S", "Sepia_officinalis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sepia_officinalis/Sepia_officinalis_res.html"))
lv61.xID = "Sepia_officinalis"
L3 = insFld(L2, gFld("Sepiolida", "treeview_taxa.html?pic=%22Sepiolida%2Ejpg%22"))
L3.xID = "Sepiolida"
L4 = insFld(L3, gFld("Sepiolidae", "treeview_taxa.html?pic=%22Sepiolidae%2Ejpg%22"))
L4.xID = "Sepiolidae"
L5 = insFld(L4, gFld("Sepiola", "treeview_taxa.html?pic=%22Sepiola%2Ejpg%22"))
L5.xID = "Sepiola"
lv62 = insDoc(L5, gLnk("S", "Sepiola_atlantica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sepiola_atlantica/Sepiola_atlantica_res.html"))
lv62.xID = "Sepiola_atlantica"
L5 = insFld(L4, gFld("Sepietta", "treeview_taxa.html?pic=%22Sepietta%2Ejpg%22"))
L5.xID = "Sepietta"
lv63 = insDoc(L5, gLnk("S", "Sepietta_obscura", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sepietta_obscura/Sepietta_obscura_res.html"))
lv63.xID = "Sepietta_obscura"
L5 = insFld(L4, gFld("Euprymna", "treeview_taxa.html?pic=%22Euprymna%2Ejpg%22"))
L5.xID = "Euprymna"
lv64 = insDoc(L5, gLnk("S", "Euprymna_hyllebergi", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Euprymna_hyllebergi/Euprymna_hyllebergi_res.html"))
lv64.xID = "Euprymna_hyllebergi"
L3 = insFld(L2, gFld("Teuthida", "treeview_taxa.html?pic=%22Teuthida%2Ejpg%22"))
L3.xID = "Teuthida"
L4 = insFld(L3, gFld("Loliginidae", "treeview_taxa.html?pic=%22Loliginidae%2Ejpg%22"))
L4.xID = "Loliginidae"
L5 = insFld(L4, gFld("Doryteuthis", "treeview_taxa.html?pic=%22Doryteuthis%2Ejpg%22"))
L5.xID = "Doryteuthis"
lv65 = insDoc(L5, gLnk("S", "Doryteuthis_pealeii", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Doryteuthis_pealeii/Doryteuthis_pealeii_res.html"))
lv65.xID = "Doryteuthis_pealeii"
L3 = insFld(L2, gFld("Octopoda", "treeview_taxa.html?pic=%22Octopoda%2Ejpg%22"))
L3.xID = "Octopoda"
L4 = insFld(L3, gFld("Octopodidae", "treeview_taxa.html?pic=%22Octopodidae%2Ejpg%22"))
L4.xID = "Octopodidae"
L5 = insFld(L4, gFld("Octopus", "treeview_taxa.html?pic=%22Octopus%2Ejpg%22"))
L5.xID = "Octopus"
lv66 = insDoc(L5, gLnk("S", "Octopus_cyanea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Octopus_cyanea/Octopus_cyanea_res.html"))
lv66.xID = "Octopus_cyanea"
lv67 = insDoc(L5, gLnk("S", "Octopus_maya", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Octopus_maya/Octopus_maya_res.html"))
lv67.xID = "Octopus_maya"
lv68 = insDoc(L5, gLnk("S", "Octopus_vulgaris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Octopus_vulgaris/Octopus_vulgaris_res.html"))
lv68.xID = "Octopus_vulgaris"
lv69 = insDoc(L5, gLnk("S", "Octopus_mimus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Octopus_mimus/Octopus_mimus_res.html"))
lv69.xID = "Octopus_mimus"
foldersTree.treeID = "Mollusca"
