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

foldersTree = gFld("<b>Aves</b>", "treeview_taxa.html")
foldersTree.xID = "Aves"
L2 = insFld(foldersTree, gFld("Paleognathae", "treeview_taxa.html?pic=%22Paleognathae%2Ejpg%22"))
L2.xID = "Paleognathae"
L3 = insFld(L2, gFld("Struthioniformes", "treeview_taxa.html?pic=%22Struthioniformes%2Ejpg%22"))
L3.xID = "Struthioniformes"
L4 = insFld(L3, gFld("Struthionidae", "treeview_taxa.html?pic=%22Struthionidae%2Ejpg%22"))
L4.xID = "Struthionidae"
L5 = insFld(L4, gFld("Struthio", "treeview_taxa.html?pic=%22Struthio%2Ejpg%22"))
L5.xID = "Struthio"
lv1 = insDoc(L5, gLnk("S", "Struthio_camelus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Struthio_camelus/Struthio_camelus_res.html"))
lv1.xID = "Struthio_camelus"
L3 = insFld(L2, gFld("Notopalaeognathae", "treeview_taxa.html?pic=%22Notopalaeognathae%2Ejpg%22"))
L3.xID = "Notopalaeognathae"
L4 = insFld(L3, gFld("Tinamiformes", "treeview_taxa.html?pic=%22Tinamiformes%2Ejpg%22"))
L4.xID = "Tinamiformes"
L5 = insFld(L4, gFld("Tinamidae", "treeview_taxa.html?pic=%22Tinamidae%2Ejpg%22"))
L5.xID = "Tinamidae"
L6 = insFld(L5, gFld("Rhynchotus", "treeview_taxa.html?pic=%22Rhynchotus%2Ejpg%22"))
L6.xID = "Rhynchotus"
lv2 = insDoc(L6, gLnk("S", "Rhynchotus_rufescens", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Rhynchotus_rufescens/Rhynchotus_rufescens_res.html"))
lv2.xID = "Rhynchotus_rufescens"
L4 = insFld(L3, gFld("Rheiformes", "treeview_taxa.html?pic=%22Rheiformes%2Ejpg%22"))
L4.xID = "Rheiformes"
L5 = insFld(L4, gFld("Rheidae", "treeview_taxa.html?pic=%22Rheidae%2Ejpg%22"))
L5.xID = "Rheidae"
L6 = insFld(L5, gFld("Rhea", "treeview_taxa.html?pic=%22Rhea%2Ejpg%22"))
L6.xID = "Rhea"
lv3 = insDoc(L6, gLnk("S", "Rhea_americana", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Rhea_americana/Rhea_americana_res.html"))
lv3.xID = "Rhea_americana"
L4 = insFld(L3, gFld("Novaeratitae", "treeview_taxa.html?pic=%22Novaeratitae%2Ejpg%22"))
L4.xID = "Novaeratitae"
L5 = insFld(L4, gFld("Apterygiformes", "treeview_taxa.html?pic=%22Apterygiformes%2Ejpg%22"))
L5.xID = "Apterygiformes"
L6 = insFld(L5, gFld("Apterygidae", "treeview_taxa.html?pic=%22Apterygidae%2Ejpg%22"))
L6.xID = "Apterygidae"
L7 = insFld(L6, gFld("Apteryx", "treeview_taxa.html?pic=%22Apteryx%2Ejpg%22"))
L7.xID = "Apteryx"
lv4 = insDoc(L7, gLnk("S", "Apteryx_mantelli", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Apteryx_mantelli/Apteryx_mantelli_res.html"))
lv4.xID = "Apteryx_mantelli"
L5 = insFld(L4, gFld("Casuariiformes", "treeview_taxa.html?pic=%22Casuariiformes%2Ejpg%22"))
L5.xID = "Casuariiformes"
L6 = insFld(L5, gFld("Dromaiidae", "treeview_taxa.html?pic=%22Dromaiidae%2Ejpg%22"))
L6.xID = "Dromaiidae"
L7 = insFld(L6, gFld("Dromaius", "treeview_taxa.html?pic=%22Dromaius%2Ejpg%22"))
L7.xID = "Dromaius"
lv5 = insDoc(L7, gLnk("S", "Dromaius_novaehollandiae", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Dromaius_novaehollandiae/Dromaius_novaehollandiae_res.html"))
lv5.xID = "Dromaius_novaehollandiae"
L2 = insFld(foldersTree, gFld("Neognathae", "treeview_taxa.html?pic=%22Neognathae%2Ejpg%22"))
L2.xID = "Neognathae"
L3 = insFld(L2, gFld("Galloanserae", "treeview_taxa.html?pic=%22Galloanserae%2Ejpg%22"))
L3.xID = "Galloanserae"
L4 = insFld(L3, gFld("Galliformes", "treeview_taxa.html?pic=%22Galliformes%2Ejpg%22"))
L4.xID = "Galliformes"
L5 = insFld(L4, gFld("Megapodiidae", "treeview_taxa.html?pic=%22Megapodiidae%2Ejpg%22"))
L5.xID = "Megapodiidae"
L6 = insFld(L5, gFld("Alectura", "treeview_taxa.html?pic=%22Alectura%2Ejpg%22"))
L6.xID = "Alectura"
lv6 = insDoc(L6, gLnk("S", "Alectura_lathami", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Alectura_lathami/Alectura_lathami_res.html"))
lv6.xID = "Alectura_lathami"
L5 = insFld(L4, gFld("Phasianidae", "treeview_taxa.html?pic=%22Phasianidae%2Ejpg%22"))
L5.xID = "Phasianidae"
L6 = insFld(L5, gFld("Tetrastes", "treeview_taxa.html?pic=%22Tetrastes%2Ejpg%22"))
L6.xID = "Tetrastes"
lv7 = insDoc(L6, gLnk("S", "Tetrastes_bonasia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tetrastes_bonasia/Tetrastes_bonasia_res.html"))
lv7.xID = "Tetrastes_bonasia"
L6 = insFld(L5, gFld("Gallus", "treeview_taxa.html?pic=%22Gallus%2Ejpg%22"))
L6.xID = "Gallus"
lv8 = insDoc(L6, gLnk("S", "Gallus_gallus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gallus_gallus/Gallus_gallus_res.html"))
lv8.xID = "Gallus_gallus"
lv9 = insDoc(L6, gLnk("S", "Gallus_gallus_IR", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gallus_gallus_IR/Gallus_gallus_IR_res.html"))
lv9.xID = "Gallus_gallus_IR"
lv10 = insDoc(L6, gLnk("S", "Gallus_gallus_WL", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gallus_gallus_WL/Gallus_gallus_WL_res.html"))
lv10.xID = "Gallus_gallus_WL"
L6 = insFld(L5, gFld("Coturnix", "treeview_taxa.html?pic=%22Coturnix%2Ejpg%22"))
L6.xID = "Coturnix"
lv11 = insDoc(L6, gLnk("S", "Coturnix_japonica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Coturnix_japonica/Coturnix_japonica_res.html"))
lv11.xID = "Coturnix_japonica"
L5 = insFld(L4, gFld("Odontophoridae", "treeview_taxa.html?pic=%22Odontophoridae%2Ejpg%22"))
L5.xID = "Odontophoridae"
L6 = insFld(L5, gFld("Colinus", "treeview_taxa.html?pic=%22Colinus%2Ejpg%22"))
L6.xID = "Colinus"
lv12 = insDoc(L6, gLnk("S", "Colinus_virginianus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Colinus_virginianus/Colinus_virginianus_res.html"))
lv12.xID = "Colinus_virginianus"
L4 = insFld(L3, gFld("Anseriformes", "treeview_taxa.html?pic=%22Anseriformes%2Ejpg%22"))
L4.xID = "Anseriformes"
L5 = insFld(L4, gFld("Anatidae", "treeview_taxa.html?pic=%22Anatidae%2Ejpg%22"))
L5.xID = "Anatidae"
L6 = insFld(L5, gFld("Anas", "treeview_taxa.html?pic=%22Anas%2Ejpg%22"))
L6.xID = "Anas"
lv13 = insDoc(L6, gLnk("S", "Anas_platyrhynchos", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Anas_platyrhynchos/Anas_platyrhynchos_res.html"))
lv13.xID = "Anas_platyrhynchos"
L6 = insFld(L5, gFld("Aythya", "treeview_taxa.html?pic=%22Aythya%2Ejpg%22"))
L6.xID = "Aythya"
lv14 = insDoc(L6, gLnk("S", "Aythya_fuligula", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aythya_fuligula/Aythya_fuligula_res.html"))
lv14.xID = "Aythya_fuligula"
lv15 = insDoc(L6, gLnk("S", "Aythya_americana", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aythya_americana/Aythya_americana_res.html"))
lv15.xID = "Aythya_americana"
L6 = insFld(L5, gFld("Mergus", "treeview_taxa.html?pic=%22Mergus%2Ejpg%22"))
L6.xID = "Mergus"
lv16 = insDoc(L6, gLnk("S", "Mergus_merganser", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mergus_merganser/Mergus_merganser_res.html"))
lv16.xID = "Mergus_merganser"
lv17 = insDoc(L6, gLnk("S", "Mergus_serrator", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mergus_serrator/Mergus_serrator_res.html"))
lv17.xID = "Mergus_serrator"
L6 = insFld(L5, gFld("Melanitta", "treeview_taxa.html?pic=%22Melanitta%2Ejpg%22"))
L6.xID = "Melanitta"
lv18 = insDoc(L6, gLnk("S", "Melanitta_perspicillata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Melanitta_perspicillata/Melanitta_perspicillata_res.html"))
lv18.xID = "Melanitta_perspicillata"
L6 = insFld(L5, gFld("Somateria", "treeview_taxa.html?pic=%22Somateria%2Ejpg%22"))
L6.xID = "Somateria"
lv19 = insDoc(L6, gLnk("S", "Somateria_mollissima", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Somateria_mollissima/Somateria_mollissima_res.html"))
lv19.xID = "Somateria_mollissima"
L3 = insFld(L2, gFld("Neoaves", "treeview_taxa.html?pic=%22Neoaves%2Ejpg%22"))
L3.xID = "Neoaves"
L4 = insFld(L3, gFld("Columbea", "treeview_taxa.html?pic=%22Columbea%2Ejpg%22"))
L4.xID = "Columbea"
L5 = insFld(L4, gFld("Mirandornithes", "treeview_taxa.html?pic=%22Mirandornithes%2Ejpg%22"))
L5.xID = "Mirandornithes"
L6 = insFld(L5, gFld("Podicipediformes", "treeview_taxa.html?pic=%22Podicipediformes%2Ejpg%22"))
L6.xID = "Podicipediformes"
L7 = insFld(L6, gFld("Podicipedidae", "treeview_taxa.html?pic=%22Podicipedidae%2Ejpg%22"))
L7.xID = "Podicipedidae"
L8 = insFld(L7, gFld("Podilymbus", "treeview_taxa.html?pic=%22Podilymbus%2Ejpg%22"))
L8.xID = "Podilymbus"
lv20 = insDoc(L8, gLnk("S", "Podilymbus_podiceps", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Podilymbus_podiceps/Podilymbus_podiceps_res.html"))
lv20.xID = "Podilymbus_podiceps"
L6 = insFld(L5, gFld("Phoenicopteriformes", "treeview_taxa.html?pic=%22Phoenicopteriformes%2Ejpg%22"))
L6.xID = "Phoenicopteriformes"
L7 = insFld(L6, gFld("Phoenicopteridae", "treeview_taxa.html?pic=%22Phoenicopteridae%2Ejpg%22"))
L7.xID = "Phoenicopteridae"
L8 = insFld(L7, gFld("Phoeniconaias", "treeview_taxa.html?pic=%22Phoeniconaias%2Ejpg%22"))
L8.xID = "Phoeniconaias"
lv21 = insDoc(L8, gLnk("S", "Phoeniconaias_minor", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Phoeniconaias_minor/Phoeniconaias_minor_res.html"))
lv21.xID = "Phoeniconaias_minor"
L5 = insFld(L4, gFld("Columbimorphae", "treeview_taxa.html?pic=%22Columbimorphae%2Ejpg%22"))
L5.xID = "Columbimorphae"
L6 = insFld(L5, gFld("Columbiformes", "treeview_taxa.html?pic=%22Columbiformes%2Ejpg%22"))
L6.xID = "Columbiformes"
L7 = insFld(L6, gFld("Columbidae", "treeview_taxa.html?pic=%22Columbidae%2Ejpg%22"))
L7.xID = "Columbidae"
L8 = insFld(L7, gFld("Columba", "treeview_taxa.html?pic=%22Columba%2Ejpg%22"))
L8.xID = "Columba"
lv22 = insDoc(L8, gLnk("S", "Columba_oenas", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Columba_oenas/Columba_oenas_res.html"))
lv22.xID = "Columba_oenas"
lv23 = insDoc(L8, gLnk("S", "Columba_livia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Columba_livia/Columba_livia_res.html"))
lv23.xID = "Columba_livia"
L6 = insFld(L5, gFld("Mesitornithiformes", "treeview_taxa.html?pic=%22Mesitornithiformes%2Ejpg%22"))
L6.xID = "Mesitornithiformes"
L7 = insFld(L6, gFld("Mesitornithidae", "treeview_taxa.html?pic=%22Mesitornithidae%2Ejpg%22"))
L7.xID = "Mesitornithidae"
L8 = insFld(L7, gFld("Mesitornis", "treeview_taxa.html?pic=%22Mesitornis%2Ejpg%22"))
L8.xID = "Mesitornis"
lv24 = insDoc(L8, gLnk("S", "Mesitornis_variegatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Mesitornis_variegatus/Mesitornis_variegatus_res.html"))
lv24.xID = "Mesitornis_variegatus"
L6 = insFld(L5, gFld("Pteroclidiformes", "treeview_taxa.html?pic=%22Pteroclidiformes%2Ejpg%22"))
L6.xID = "Pteroclidiformes"
L7 = insFld(L6, gFld("Pteroclididae", "treeview_taxa.html?pic=%22Pteroclididae%2Ejpg%22"))
L7.xID = "Pteroclididae"
L8 = insFld(L7, gFld("Pterocles", "treeview_taxa.html?pic=%22Pterocles%2Ejpg%22"))
L8.xID = "Pterocles"
lv25 = insDoc(L8, gLnk("S", "Pterocles_alchata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pterocles_alchata/Pterocles_alchata_res.html"))
lv25.xID = "Pterocles_alchata"
L4 = insFld(L3, gFld("Passerea", "treeview_taxa.html?pic=%22Passerea%2Ejpg%22"))
L4.xID = "Passerea"
L5 = insFld(L4, gFld("Otidae", "treeview_taxa.html?pic=%22Otidae%2Ejpg%22"))
L5.xID = "Otidae"
L6 = insFld(L5, gFld("Cypselomorphae", "treeview_taxa.html?pic=%22Cypselomorphae%2Ejpg%22"))
L6.xID = "Cypselomorphae"
L7 = insFld(L6, gFld("Apodiformes", "treeview_taxa.html?pic=%22Apodiformes%2Ejpg%22"))
L7.xID = "Apodiformes"
L8 = insFld(L7, gFld("Apodidae", "treeview_taxa.html?pic=%22Apodidae%2Ejpg%22"))
L8.xID = "Apodidae"
L9 = insFld(L8, gFld("Apus", "treeview_taxa.html?pic=%22Apus%2Ejpg%22"))
L9.xID = "Apus"
lv26 = insDoc(L9, gLnk("S", "Apus_apus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Apus_apus/Apus_apus_res.html"))
lv26.xID = "Apus_apus"
L8 = insFld(L7, gFld("Trochilidae", "treeview_taxa.html?pic=%22Trochilidae%2Ejpg%22"))
L8.xID = "Trochilidae"
L9 = insFld(L8, gFld("Archilochus", "treeview_taxa.html?pic=%22Archilochus%2Ejpg%22"))
L9.xID = "Archilochus"
lv27 = insDoc(L9, gLnk("S", "Archilochus_alexandri", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Archilochus_alexandri/Archilochus_alexandri_res.html"))
lv27.xID = "Archilochus_alexandri"
L7 = insFld(L6, gFld("Aegotheliformes", "treeview_taxa.html?pic=%22Aegotheliformes%2Ejpg%22"))
L7.xID = "Aegotheliformes"
L8 = insFld(L7, gFld("Aegothelidae", "treeview_taxa.html?pic=%22Aegothelidae%2Ejpg%22"))
L8.xID = "Aegothelidae"
L9 = insFld(L8, gFld("Aegotheles", "treeview_taxa.html?pic=%22Aegotheles%2Ejpg%22"))
L9.xID = "Aegotheles"
lv28 = insDoc(L9, gLnk("S", "Aegotheles_cristatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aegotheles_cristatus/Aegotheles_cristatus_res.html"))
lv28.xID = "Aegotheles_cristatus"
L7 = insFld(L6, gFld("Caprimulgiformes", "treeview_taxa.html?pic=%22Caprimulgiformes%2Ejpg%22"))
L7.xID = "Caprimulgiformes"
L8 = insFld(L7, gFld("Podargidae", "treeview_taxa.html?pic=%22Podargidae%2Ejpg%22"))
L8.xID = "Podargidae"
L9 = insFld(L8, gFld("Podargus", "treeview_taxa.html?pic=%22Podargus%2Ejpg%22"))
L9.xID = "Podargus"
lv29 = insDoc(L9, gLnk("S", "Podargus_strigoides", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Podargus_strigoides/Podargus_strigoides_res.html"))
lv29.xID = "Podargus_strigoides"
L6 = insFld(L5, gFld("Otidimorphae", "treeview_taxa.html?pic=%22Otidimorphae%2Ejpg%22"))
L6.xID = "Otidimorphae"
L7 = insFld(L6, gFld("Cuculiformes", "treeview_taxa.html?pic=%22Cuculiformes%2Ejpg%22"))
L7.xID = "Cuculiformes"
L8 = insFld(L7, gFld("Cuculidae", "treeview_taxa.html?pic=%22Cuculidae%2Ejpg%22"))
L8.xID = "Cuculidae"
L9 = insFld(L8, gFld("Cuculus", "treeview_taxa.html?pic=%22Cuculus%2Ejpg%22"))
L9.xID = "Cuculus"
lv30 = insDoc(L9, gLnk("S", "Cuculus_canorus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cuculus_canorus/Cuculus_canorus_res.html"))
lv30.xID = "Cuculus_canorus"
L9 = insFld(L8, gFld("Clamator", "treeview_taxa.html?pic=%22Clamator%2Ejpg%22"))
L9.xID = "Clamator"
lv31 = insDoc(L9, gLnk("S", "Clamator_glandarius", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Clamator_glandarius/Clamator_glandarius_res.html"))
lv31.xID = "Clamator_glandarius"
L7 = insFld(L6, gFld("Musophagiformes", "treeview_taxa.html?pic=%22Musophagiformes%2Ejpg%22"))
L7.xID = "Musophagiformes"
L8 = insFld(L7, gFld("Musophagidae", "treeview_taxa.html?pic=%22Musophagidae%2Ejpg%22"))
L8.xID = "Musophagidae"
L9 = insFld(L8, gFld("Tauraco", "treeview_taxa.html?pic=%22Tauraco%2Ejpg%22"))
L9.xID = "Tauraco"
lv32 = insDoc(L9, gLnk("S", "Tauraco_erythrolophus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tauraco_erythrolophus/Tauraco_erythrolophus_res.html"))
lv32.xID = "Tauraco_erythrolophus"
L7 = insFld(L6, gFld("Otidiformes", "treeview_taxa.html?pic=%22Otidiformes%2Ejpg%22"))
L7.xID = "Otidiformes"
L8 = insFld(L7, gFld("Otididae", "treeview_taxa.html?pic=%22Otididae%2Ejpg%22"))
L8.xID = "Otididae"
L9 = insFld(L8, gFld("Ardeotis", "treeview_taxa.html?pic=%22Ardeotis%2Ejpg%22"))
L9.xID = "Ardeotis"
lv33 = insDoc(L9, gLnk("S", "Ardeotis_kori", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ardeotis_kori/Ardeotis_kori_res.html"))
lv33.xID = "Ardeotis_kori"
L5 = insFld(L4, gFld("Gruae", "treeview_taxa.html?pic=%22Gruae%2Ejpg%22"))
L5.xID = "Gruae"
L6 = insFld(L5, gFld("Opisthocomiformes", "treeview_taxa.html?pic=%22Opisthocomiformes%2Ejpg%22"))
L6.xID = "Opisthocomiformes"
L7 = insFld(L6, gFld("Opisthocomidae", "treeview_taxa.html?pic=%22Opisthocomidae%2Ejpg%22"))
L7.xID = "Opisthocomidae"
L8 = insFld(L7, gFld("Opisthocomus", "treeview_taxa.html?pic=%22Opisthocomus%2Ejpg%22"))
L8.xID = "Opisthocomus"
lv34 = insDoc(L8, gLnk("S", "Opisthocomus_hoazin", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Opisthocomus_hoazin/Opisthocomus_hoazin_res.html"))
lv34.xID = "Opisthocomus_hoazin"
L6 = insFld(L5, gFld("Charadriiformes", "treeview_taxa.html?pic=%22Charadriiformes%2Ejpg%22"))
L6.xID = "Charadriiformes"
L7 = insFld(L6, gFld("Scolopaci", "treeview_taxa.html?pic=%22Scolopaci%2Ejpg%22"))
L7.xID = "Scolopaci"
L8 = insFld(L7, gFld("Scolopacidae", "treeview_taxa.html?pic=%22Scolopacidae%2Ejpg%22"))
L8.xID = "Scolopacidae"
L9 = insFld(L8, gFld("Calidris", "treeview_taxa.html?pic=%22Calidris%2Ejpg%22"))
L9.xID = "Calidris"
lv35 = insDoc(L9, gLnk("S", "Calidris_ferruginea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Calidris_ferruginea/Calidris_ferruginea_res.html"))
lv35.xID = "Calidris_ferruginea"
lv36 = insDoc(L9, gLnk("S", "Calidris_alpina", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Calidris_alpina/Calidris_alpina_res.html"))
lv36.xID = "Calidris_alpina"
lv37 = insDoc(L9, gLnk("S", "Calidris_bairdii", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Calidris_bairdii/Calidris_bairdii_res.html"))
lv37.xID = "Calidris_bairdii"
lv38 = insDoc(L9, gLnk("S", "Calidris_minuta", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Calidris_minuta/Calidris_minuta_res.html"))
lv38.xID = "Calidris_minuta"
lv39 = insDoc(L9, gLnk("S", "Calidris_minutilla", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Calidris_minutilla/Calidris_minutilla_res.html"))
lv39.xID = "Calidris_minutilla"
lv40 = insDoc(L9, gLnk("S", "Calidris_maritima", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Calidris_maritima/Calidris_maritima_res.html"))
lv40.xID = "Calidris_maritima"
L9 = insFld(L8, gFld("Philomachus", "treeview_taxa.html?pic=%22Philomachus%2Ejpg%22"))
L9.xID = "Philomachus"
lv41 = insDoc(L9, gLnk("S", "Philomachus_pugnax", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Philomachus_pugnax/Philomachus_pugnax_res.html"))
lv41.xID = "Philomachus_pugnax"
L9 = insFld(L8, gFld("Tringa", "treeview_taxa.html?pic=%22Tringa%2Ejpg%22"))
L9.xID = "Tringa"
lv42 = insDoc(L9, gLnk("S", "Tringa_flavipes", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tringa_flavipes/Tringa_flavipes_res.html"))
lv42.xID = "Tringa_flavipes"
lv43 = insDoc(L9, gLnk("S", "Tringa_totanus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tringa_totanus/Tringa_totanus_res.html"))
lv43.xID = "Tringa_totanus"
L9 = insFld(L8, gFld("Limnodromus", "treeview_taxa.html?pic=%22Limnodromus%2Ejpg%22"))
L9.xID = "Limnodromus"
lv44 = insDoc(L9, gLnk("S", "Limnodromus_griseus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Limnodromus_griseus/Limnodromus_griseus_res.html"))
lv44.xID = "Limnodromus_griseus"
L9 = insFld(L8, gFld("Limosa", "treeview_taxa.html?pic=%22Limosa%2Ejpg%22"))
L9.xID = "Limosa"
lv45 = insDoc(L9, gLnk("S", "Limosa_haemastica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Limosa_haemastica/Limosa_haemastica_res.html"))
lv45.xID = "Limosa_haemastica"
lv46 = insDoc(L9, gLnk("S", "Limosa_limosa", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Limosa_limosa/Limosa_limosa_res.html"))
lv46.xID = "Limosa_limosa"
L9 = insFld(L8, gFld("Numenius", "treeview_taxa.html?pic=%22Numenius%2Ejpg%22"))
L9.xID = "Numenius"
lv47 = insDoc(L9, gLnk("S", "Numenius_phaeopus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Numenius_phaeopus/Numenius_phaeopus_res.html"))
lv47.xID = "Numenius_phaeopus"
L7 = insFld(L6, gFld("Lari", "treeview_taxa.html?pic=%22Lari%2Ejpg%22"))
L7.xID = "Lari"
L8 = insFld(L7, gFld("Alcidae", "treeview_taxa.html?pic=%22Alcidae%2Ejpg%22"))
L8.xID = "Alcidae"
L9 = insFld(L8, gFld("Alcinae", "treeview_taxa.html?pic=%22Alcinae%2Ejpg%22"))
L9.xID = "Alcinae"
L10 = insFld(L9, gFld("Alcini", "treeview_taxa.html?pic=%22Alcini%2Ejpg%22"))
L10.xID = "Alcini"
L11 = insFld(L10, gFld("Uria", "treeview_taxa.html?pic=%22Uria%2Ejpg%22"))
L11.xID = "Uria"
lv48 = insDoc(L11, gLnk("S", "Uria_aalge", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Uria_aalge/Uria_aalge_res.html"))
lv48.xID = "Uria_aalge"
lv49 = insDoc(L11, gLnk("S", "Uria_lomvia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Uria_lomvia/Uria_lomvia_res.html"))
lv49.xID = "Uria_lomvia"
L11 = insFld(L10, gFld("Alle", "treeview_taxa.html?pic=%22Alle%2Ejpg%22"))
L11.xID = "Alle"
lv50 = insDoc(L11, gLnk("S", "Alle_alle", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Alle_alle/Alle_alle_res.html"))
lv50.xID = "Alle_alle"
L11 = insFld(L10, gFld("Pinguinus", "treeview_taxa.html?pic=%22Pinguinus%2Ejpg%22"))
L11.xID = "Pinguinus"
lv51 = insDoc(L11, gLnk("S", "Pinguinus_impennis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pinguinus_impennis/Pinguinus_impennis_res.html"))
lv51.xID = "Pinguinus_impennis"
L11 = insFld(L10, gFld("Alca", "treeview_taxa.html?pic=%22Alca%2Ejpg%22"))
L11.xID = "Alca"
lv52 = insDoc(L11, gLnk("S", "Alca_torda", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Alca_torda/Alca_torda_res.html"))
lv52.xID = "Alca_torda"
L10 = insFld(L9, gFld("Cepphini", "treeview_taxa.html?pic=%22Cepphini%2Ejpg%22"))
L10.xID = "Cepphini"
L11 = insFld(L10, gFld("Cepphus", "treeview_taxa.html?pic=%22Cepphus%2Ejpg%22"))
L11.xID = "Cepphus"
lv53 = insDoc(L11, gLnk("S", "Cepphus_grylle", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cepphus_grylle/Cepphus_grylle_res.html"))
lv53.xID = "Cepphus_grylle"
L10 = insFld(L9, gFld("Brachyramphini", "treeview_taxa.html?pic=%22Brachyramphini%2Ejpg%22"))
L10.xID = "Brachyramphini"
L11 = insFld(L10, gFld("Brachyramphus", "treeview_taxa.html?pic=%22Brachyramphus%2Ejpg%22"))
L11.xID = "Brachyramphus"
lv54 = insDoc(L11, gLnk("S", "Brachyramphus_brevirostris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Brachyramphus_brevirostris/Brachyramphus_brevirostris_res.html"))
lv54.xID = "Brachyramphus_brevirostris"
L9 = insFld(L8, gFld("Fraterculinae", "treeview_taxa.html?pic=%22Fraterculinae%2Ejpg%22"))
L9.xID = "Fraterculinae"
L10 = insFld(L9, gFld("Aethiini", "treeview_taxa.html?pic=%22Aethiini%2Ejpg%22"))
L10.xID = "Aethiini"
L11 = insFld(L10, gFld("Ptychoramphus", "treeview_taxa.html?pic=%22Ptychoramphus%2Ejpg%22"))
L11.xID = "Ptychoramphus"
lv55 = insDoc(L11, gLnk("S", "Ptychoramphus_aleuticus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ptychoramphus_aleuticus/Ptychoramphus_aleuticus_res.html"))
lv55.xID = "Ptychoramphus_aleuticus"
L11 = insFld(L10, gFld("Aethia", "treeview_taxa.html?pic=%22Aethia%2Ejpg%22"))
L11.xID = "Aethia"
lv56 = insDoc(L11, gLnk("S", "Aethia_pusilla", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aethia_pusilla/Aethia_pusilla_res.html"))
lv56.xID = "Aethia_pusilla"
lv57 = insDoc(L11, gLnk("S", "Aethia_cristatella", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aethia_cristatella/Aethia_cristatella_res.html"))
lv57.xID = "Aethia_cristatella"
L10 = insFld(L9, gFld("Fraterculini", "treeview_taxa.html?pic=%22Fraterculini%2Ejpg%22"))
L10.xID = "Fraterculini"
L11 = insFld(L10, gFld("Cerorhinca", "treeview_taxa.html?pic=%22Cerorhinca%2Ejpg%22"))
L11.xID = "Cerorhinca"
lv58 = insDoc(L11, gLnk("S", "Cerorhinca_monocerata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cerorhinca_monocerata/Cerorhinca_monocerata_res.html"))
lv58.xID = "Cerorhinca_monocerata"
L11 = insFld(L10, gFld("Fratercula", "treeview_taxa.html?pic=%22Fratercula%2Ejpg%22"))
L11.xID = "Fratercula"
lv59 = insDoc(L11, gLnk("S", "Fratercula_arctica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Fratercula_arctica/Fratercula_arctica_res.html"))
lv59.xID = "Fratercula_arctica"
lv60 = insDoc(L11, gLnk("S", "Fratercula_cirrhata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Fratercula_cirrhata/Fratercula_cirrhata_res.html"))
lv60.xID = "Fratercula_cirrhata"
L8 = insFld(L7, gFld("Sternidae", "treeview_taxa.html?pic=%22Sternidae%2Ejpg%22"))
L8.xID = "Sternidae"
L9 = insFld(L8, gFld("Chlidonias", "treeview_taxa.html?pic=%22Chlidonias%2Ejpg%22"))
L9.xID = "Chlidonias"
lv61 = insDoc(L9, gLnk("S", "Chlidonias_leucopterus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Chlidonias_leucopterus/Chlidonias_leucopterus_res.html"))
lv61.xID = "Chlidonias_leucopterus"
L9 = insFld(L8, gFld("Sterna", "treeview_taxa.html?pic=%22Sterna%2Ejpg%22"))
L9.xID = "Sterna"
lv62 = insDoc(L9, gLnk("S", "Sterna_paradisaea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sterna_paradisaea/Sterna_paradisaea_res.html"))
lv62.xID = "Sterna_paradisaea"
lv63 = insDoc(L9, gLnk("S", "Sterna_hirundo", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sterna_hirundo/Sterna_hirundo_res.html"))
lv63.xID = "Sterna_hirundo"
L9 = insFld(L8, gFld("Thalasseus", "treeview_taxa.html?pic=%22Thalasseus%2Ejpg%22"))
L9.xID = "Thalasseus"
lv64 = insDoc(L9, gLnk("S", "Thalasseus_sandvicensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Thalasseus_sandvicensis/Thalasseus_sandvicensis_res.html"))
lv64.xID = "Thalasseus_sandvicensis"
L8 = insFld(L7, gFld("Laridae", "treeview_taxa.html?pic=%22Laridae%2Ejpg%22"))
L8.xID = "Laridae"
L9 = insFld(L8, gFld("Chroicocephalus", "treeview_taxa.html?pic=%22Chroicocephalus%2Ejpg%22"))
L9.xID = "Chroicocephalus"
lv65 = insDoc(L9, gLnk("S", "Chroicocephalus_ridibundus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Chroicocephalus_ridibundus/Chroicocephalus_ridibundus_res.html"))
lv65.xID = "Chroicocephalus_ridibundus"
L9 = insFld(L8, gFld("Larus", "treeview_taxa.html?pic=%22Larus%2Ejpg%22"))
L9.xID = "Larus"
lv66 = insDoc(L9, gLnk("S", "Larus_argentatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Larus_argentatus/Larus_argentatus_res.html"))
lv66.xID = "Larus_argentatus"
L9 = insFld(L8, gFld("Rissa", "treeview_taxa.html?pic=%22Rissa%2Ejpg%22"))
L9.xID = "Rissa"
lv67 = insDoc(L9, gLnk("S", "Rissa_tridactyla", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Rissa_tridactyla/Rissa_tridactyla_res.html"))
lv67.xID = "Rissa_tridactyla"
lv68 = insDoc(L9, gLnk("S", "Rissa_brevirostris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Rissa_brevirostris/Rissa_brevirostris_res.html"))
lv68.xID = "Rissa_brevirostris"
L8 = insFld(L7, gFld("Stercorariidae", "treeview_taxa.html?pic=%22Stercorariidae%2Ejpg%22"))
L8.xID = "Stercorariidae"
L9 = insFld(L8, gFld("Stercorarius", "treeview_taxa.html?pic=%22Stercorarius%2Ejpg%22"))
L9.xID = "Stercorarius"
lv69 = insDoc(L9, gLnk("S", "Stercorarius_longicaudus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Stercorarius_longicaudus/Stercorarius_longicaudus_res.html"))
lv69.xID = "Stercorarius_longicaudus"
lv70 = insDoc(L9, gLnk("S", "Stercorarius_skua", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Stercorarius_skua/Stercorarius_skua_res.html"))
lv70.xID = "Stercorarius_skua"
lv71 = insDoc(L9, gLnk("S", "Stercorarius_maccormicki", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Stercorarius_maccormicki/Stercorarius_maccormicki_res.html"))
lv71.xID = "Stercorarius_maccormicki"
L7 = insFld(L6, gFld("Charadrii", "treeview_taxa.html?pic=%22Charadrii%2Ejpg%22"))
L7.xID = "Charadrii"
L8 = insFld(L7, gFld("Recurvirostridae", "treeview_taxa.html?pic=%22Recurvirostridae%2Ejpg%22"))
L8.xID = "Recurvirostridae"
L9 = insFld(L8, gFld("Himantopus", "treeview_taxa.html?pic=%22Himantopus%2Ejpg%22"))
L9.xID = "Himantopus"
lv72 = insDoc(L9, gLnk("S", "Himantopus_mexicanus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Himantopus_mexicanus/Himantopus_mexicanus_res.html"))
lv72.xID = "Himantopus_mexicanus"
L8 = insFld(L7, gFld("Haematopodidae", "treeview_taxa.html?pic=%22Haematopodidae%2Ejpg%22"))
L8.xID = "Haematopodidae"
L9 = insFld(L8, gFld("Haematopus", "treeview_taxa.html?pic=%22Haematopus%2Ejpg%22"))
L9.xID = "Haematopus"
lv73 = insDoc(L9, gLnk("S", "Haematopus_moquini", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Haematopus_moquini/Haematopus_moquini_res.html"))
lv73.xID = "Haematopus_moquini"
L8 = insFld(L7, gFld("Charadriidae", "treeview_taxa.html?pic=%22Charadriidae%2Ejpg%22"))
L8.xID = "Charadriidae"
L9 = insFld(L8, gFld("Vanellus", "treeview_taxa.html?pic=%22Vanellus%2Ejpg%22"))
L9.xID = "Vanellus"
lv74 = insDoc(L9, gLnk("S", "Vanellus_vanellus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Vanellus_vanellus/Vanellus_vanellus_res.html"))
lv74.xID = "Vanellus_vanellus"
lv75 = insDoc(L9, gLnk("S", "Vanellus_armatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Vanellus_armatus/Vanellus_armatus_res.html"))
lv75.xID = "Vanellus_armatus"
lv76 = insDoc(L9, gLnk("S", "Vanellus_coronatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Vanellus_coronatus/Vanellus_coronatus_res.html"))
lv76.xID = "Vanellus_coronatus"
L9 = insFld(L8, gFld("Charadrius", "treeview_taxa.html?pic=%22Charadrius%2Ejpg%22"))
L9.xID = "Charadrius"
lv77 = insDoc(L9, gLnk("S", "Charadrius_pecuarius", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Charadrius_pecuarius/Charadrius_pecuarius_res.html"))
lv77.xID = "Charadrius_pecuarius"
L9 = insFld(L8, gFld("Pluvialis", "treeview_taxa.html?pic=%22Pluvialis%2Ejpg%22"))
L9.xID = "Pluvialis"
lv78 = insDoc(L9, gLnk("S", "Pluvialis_dominica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pluvialis_dominica/Pluvialis_dominica_res.html"))
lv78.xID = "Pluvialis_dominica"
L6 = insFld(L5, gFld("Gruiformes", "treeview_taxa.html?pic=%22Gruiformes%2Ejpg%22"))
L6.xID = "Gruiformes"
L7 = insFld(L6, gFld("Rallidae", "treeview_taxa.html?pic=%22Rallidae%2Ejpg%22"))
L7.xID = "Rallidae"
L8 = insFld(L7, gFld("Gallinula", "treeview_taxa.html?pic=%22Gallinula%2Ejpg%22"))
L8.xID = "Gallinula"
lv79 = insDoc(L8, gLnk("S", "Gallinula_chloropus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gallinula_chloropus/Gallinula_chloropus_res.html"))
lv79.xID = "Gallinula_chloropus"
L7 = insFld(L6, gFld("Gruidae", "treeview_taxa.html?pic=%22Gruidae%2Ejpg%22"))
L7.xID = "Gruidae"
L8 = insFld(L7, gFld("Grus", "treeview_taxa.html?pic=%22Grus%2Ejpg%22"))
L8.xID = "Grus"
lv80 = insDoc(L8, gLnk("S", "Grus_japonensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Grus_japonensis/Grus_japonensis_res.html"))
lv80.xID = "Grus_japonensis"
lv81 = insDoc(L8, gLnk("S", "Grus_monacha", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Grus_monacha/Grus_monacha_res.html"))
lv81.xID = "Grus_monacha"
lv82 = insDoc(L8, gLnk("S", "Grus_americana", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Grus_americana/Grus_americana_res.html"))
lv82.xID = "Grus_americana"
lv83 = insDoc(L8, gLnk("S", "Grus_virgo", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Grus_virgo/Grus_virgo_res.html"))
lv83.xID = "Grus_virgo"
L8 = insFld(L7, gFld("Antigone", "treeview_taxa.html?pic=%22Antigone%2Ejpg%22"))
L8.xID = "Antigone"
lv84 = insDoc(L8, gLnk("S", "Antigone_antigone", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Antigone_antigone/Antigone_antigone_res.html"))
lv84.xID = "Antigone_antigone"
lv85 = insDoc(L8, gLnk("S", "Antigone_vipio", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Antigone_vipio/Antigone_vipio_res.html"))
lv85.xID = "Antigone_vipio"
lv86 = insDoc(L8, gLnk("S", "Antigone_canadensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Antigone_canadensis/Antigone_canadensis_res.html"))
lv86.xID = "Antigone_canadensis"
lv87 = insDoc(L8, gLnk("S", "Antigone_rubicunda", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Antigone_rubicunda/Antigone_rubicunda_res.html"))
lv87.xID = "Antigone_rubicunda"
L8 = insFld(L7, gFld("Leucogeranus", "treeview_taxa.html?pic=%22Leucogeranus%2Ejpg%22"))
L8.xID = "Leucogeranus"
lv88 = insDoc(L8, gLnk("S", "Leucogeranus_leucogeranus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Leucogeranus_leucogeranus/Leucogeranus_leucogeranus_res.html"))
lv88.xID = "Leucogeranus_leucogeranus"
L5 = insFld(L4, gFld("Ardeae", "treeview_taxa.html?pic=%22Ardeae%2Ejpg%22"))
L5.xID = "Ardeae"
L6 = insFld(L5, gFld("Phaethontimorphae", "treeview_taxa.html?pic=%22Phaethontimorphae%2Ejpg%22"))
L6.xID = "Phaethontimorphae"
L7 = insFld(L6, gFld("Phaethontiformes", "treeview_taxa.html?pic=%22Phaethontiformes%2Ejpg%22"))
L7.xID = "Phaethontiformes"
L8 = insFld(L7, gFld("Phaethontidae", "treeview_taxa.html?pic=%22Phaethontidae%2Ejpg%22"))
L8.xID = "Phaethontidae"
L9 = insFld(L8, gFld("Phaethon", "treeview_taxa.html?pic=%22Phaethon%2Ejpg%22"))
L9.xID = "Phaethon"
lv89 = insDoc(L9, gLnk("S", "Phaethon_lepturus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Phaethon_lepturus/Phaethon_lepturus_res.html"))
lv89.xID = "Phaethon_lepturus"
lv90 = insDoc(L9, gLnk("S", "Phaethon_rubricauda", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Phaethon_rubricauda/Phaethon_rubricauda_res.html"))
lv90.xID = "Phaethon_rubricauda"
L7 = insFld(L6, gFld("Eurypygiformes", "treeview_taxa.html?pic=%22Eurypygiformes%2Ejpg%22"))
L7.xID = "Eurypygiformes"
L8 = insFld(L7, gFld("Rhynochetidae", "treeview_taxa.html?pic=%22Rhynochetidae%2Ejpg%22"))
L8.xID = "Rhynochetidae"
L9 = insFld(L8, gFld("Rhynochetos", "treeview_taxa.html?pic=%22Rhynochetos%2Ejpg%22"))
L9.xID = "Rhynochetos"
lv91 = insDoc(L9, gLnk("S", "Rhynochetos_jubatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Rhynochetos_jubatus/Rhynochetos_jubatus_res.html"))
lv91.xID = "Rhynochetos_jubatus"
L6 = insFld(L5, gFld("Aequornithes", "treeview_taxa.html?pic=%22Aequornithes%2Ejpg%22"))
L6.xID = "Aequornithes"
L7 = insFld(L6, gFld("Gaviiformes", "treeview_taxa.html?pic=%22Gaviiformes%2Ejpg%22"))
L7.xID = "Gaviiformes"
L8 = insFld(L7, gFld("Gaviidae", "treeview_taxa.html?pic=%22Gaviidae%2Ejpg%22"))
L8.xID = "Gaviidae"
L9 = insFld(L8, gFld("Gavia", "treeview_taxa.html?pic=%22Gavia%2Ejpg%22"))
L9.xID = "Gavia"
lv92 = insDoc(L9, gLnk("S", "Gavia_stellata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gavia_stellata/Gavia_stellata_res.html"))
lv92.xID = "Gavia_stellata"
lv93 = insDoc(L9, gLnk("S", "Gavia_immer", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Gavia_immer/Gavia_immer_res.html"))
lv93.xID = "Gavia_immer"
L7 = insFld(L6, gFld("Sphenisciformes", "treeview_taxa.html?pic=%22Sphenisciformes%2Ejpg%22"))
L7.xID = "Sphenisciformes"
L8 = insFld(L7, gFld("Spheniscidae", "treeview_taxa.html?pic=%22Spheniscidae%2Ejpg%22"))
L8.xID = "Spheniscidae"
L9 = insFld(L8, gFld("Eudyptula", "treeview_taxa.html?pic=%22Eudyptula%2Ejpg%22"))
L9.xID = "Eudyptula"
lv94 = insDoc(L9, gLnk("S", "Eudyptula_minor", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Eudyptula_minor/Eudyptula_minor_res.html"))
lv94.xID = "Eudyptula_minor"
L9 = insFld(L8, gFld("Pygoscelis", "treeview_taxa.html?pic=%22Pygoscelis%2Ejpg%22"))
L9.xID = "Pygoscelis"
lv95 = insDoc(L9, gLnk("S", "Pygoscelis_adeliae", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pygoscelis_adeliae/Pygoscelis_adeliae_res.html"))
lv95.xID = "Pygoscelis_adeliae"
lv96 = insDoc(L9, gLnk("S", "Pygoscelis_antarcticus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pygoscelis_antarcticus/Pygoscelis_antarcticus_res.html"))
lv96.xID = "Pygoscelis_antarcticus"
lv97 = insDoc(L9, gLnk("S", "Pygoscelis_papua", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pygoscelis_papua/Pygoscelis_papua_res.html"))
lv97.xID = "Pygoscelis_papua"
L7 = insFld(L6, gFld("Procellariiformes", "treeview_taxa.html?pic=%22Procellariiformes%2Ejpg%22"))
L7.xID = "Procellariiformes"
L8 = insFld(L7, gFld("Procellariidae", "treeview_taxa.html?pic=%22Procellariidae%2Ejpg%22"))
L8.xID = "Procellariidae"
L9 = insFld(L8, gFld("Fulmarus", "treeview_taxa.html?pic=%22Fulmarus%2Ejpg%22"))
L9.xID = "Fulmarus"
lv98 = insDoc(L9, gLnk("S", "Fulmarus_glacialis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Fulmarus_glacialis/Fulmarus_glacialis_res.html"))
lv98.xID = "Fulmarus_glacialis"
L8 = insFld(L7, gFld("Diomedeidae", "treeview_taxa.html?pic=%22Diomedeidae%2Ejpg%22"))
L8.xID = "Diomedeidae"
L9 = insFld(L8, gFld("Diomedea", "treeview_taxa.html?pic=%22Diomedea%2Ejpg%22"))
L9.xID = "Diomedea"
lv99 = insDoc(L9, gLnk("S", "Diomedea_exulans", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Diomedea_exulans/Diomedea_exulans_res.html"))
lv99.xID = "Diomedea_exulans"
L9 = insFld(L8, gFld("Thalassarche", "treeview_taxa.html?pic=%22Thalassarche%2Ejpg%22"))
L9.xID = "Thalassarche"
lv100 = insDoc(L9, gLnk("S", "Thalassarche_melanophrys", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Thalassarche_melanophrys/Thalassarche_melanophrys_res.html"))
lv100.xID = "Thalassarche_melanophrys"
L7 = insFld(L6, gFld("Ciconiiformes", "treeview_taxa.html?pic=%22Ciconiiformes%2Ejpg%22"))
L7.xID = "Ciconiiformes"
L8 = insFld(L7, gFld("Ciconiidae", "treeview_taxa.html?pic=%22Ciconiidae%2Ejpg%22"))
L8.xID = "Ciconiidae"
L9 = insFld(L8, gFld("Ciconia", "treeview_taxa.html?pic=%22Ciconia%2Ejpg%22"))
L9.xID = "Ciconia"
lv101 = insDoc(L9, gLnk("S", "Ciconia_ciconia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ciconia_ciconia/Ciconia_ciconia_res.html"))
lv101.xID = "Ciconia_ciconia"
L7 = insFld(L6, gFld("Suliformes", "treeview_taxa.html?pic=%22Suliformes%2Ejpg%22"))
L7.xID = "Suliformes"
L8 = insFld(L7, gFld("Phalacrocoracidae", "treeview_taxa.html?pic=%22Phalacrocoracidae%2Ejpg%22"))
L8.xID = "Phalacrocoracidae"
L9 = insFld(L8, gFld("Phalacrocorax", "treeview_taxa.html?pic=%22Phalacrocorax%2Ejpg%22"))
L9.xID = "Phalacrocorax"
lv102 = insDoc(L9, gLnk("S", "Phalacrocorax_auritus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Phalacrocorax_auritus/Phalacrocorax_auritus_res.html"))
lv102.xID = "Phalacrocorax_auritus"
L8 = insFld(L7, gFld("Sulidae", "treeview_taxa.html?pic=%22Sulidae%2Ejpg%22"))
L8.xID = "Sulidae"
L9 = insFld(L8, gFld("Sula", "treeview_taxa.html?pic=%22Sula%2Ejpg%22"))
L9.xID = "Sula"
lv103 = insDoc(L9, gLnk("S", "Sula_bassana", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sula_bassana/Sula_bassana_res.html"))
lv103.xID = "Sula_bassana"
lv104 = insDoc(L9, gLnk("S", "Sula_nebouxii", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sula_nebouxii/Sula_nebouxii_res.html"))
lv104.xID = "Sula_nebouxii"
L7 = insFld(L6, gFld("Pelecaniformes", "treeview_taxa.html?pic=%22Pelecaniformes%2Ejpg%22"))
L7.xID = "Pelecaniformes"
L8 = insFld(L7, gFld("Balaenicipitidae", "treeview_taxa.html?pic=%22Balaenicipitidae%2Ejpg%22"))
L8.xID = "Balaenicipitidae"
L9 = insFld(L8, gFld("Balaeniceps", "treeview_taxa.html?pic=%22Balaeniceps%2Ejpg%22"))
L9.xID = "Balaeniceps"
lv105 = insDoc(L9, gLnk("S", "Balaeniceps_rex", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Balaeniceps_rex/Balaeniceps_rex_res.html"))
lv105.xID = "Balaeniceps_rex"
L8 = insFld(L7, gFld("Pelecanidae", "treeview_taxa.html?pic=%22Pelecanidae%2Ejpg%22"))
L8.xID = "Pelecanidae"
L9 = insFld(L8, gFld("Pelecanus", "treeview_taxa.html?pic=%22Pelecanus%2Ejpg%22"))
L9.xID = "Pelecanus"
lv106 = insDoc(L9, gLnk("S", "Pelecanus_onocrotalus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pelecanus_onocrotalus/Pelecanus_onocrotalus_res.html"))
lv106.xID = "Pelecanus_onocrotalus"
L8 = insFld(L7, gFld("Threskiornithidae", "treeview_taxa.html?pic=%22Threskiornithidae%2Ejpg%22"))
L8.xID = "Threskiornithidae"
L9 = insFld(L8, gFld("Platalea", "treeview_taxa.html?pic=%22Platalea%2Ejpg%22"))
L9.xID = "Platalea"
lv107 = insDoc(L9, gLnk("S", "Platalea_leucorodia", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Platalea_leucorodia/Platalea_leucorodia_res.html"))
lv107.xID = "Platalea_leucorodia"
L8 = insFld(L7, gFld("Ardeidae", "treeview_taxa.html?pic=%22Ardeidae%2Ejpg%22"))
L8.xID = "Ardeidae"
L9 = insFld(L8, gFld("Ardea", "treeview_taxa.html?pic=%22Ardea%2Ejpg%22"))
L9.xID = "Ardea"
lv108 = insDoc(L9, gLnk("S", "Ardea_herodias", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ardea_herodias/Ardea_herodias_res.html"))
lv108.xID = "Ardea_herodias"
L5 = insFld(L4, gFld("Telluraves", "treeview_taxa.html?pic=%22Telluraves%2Ejpg%22"))
L5.xID = "Telluraves"
L6 = insFld(L5, gFld("Afroaves", "treeview_taxa.html?pic=%22Afroaves%2Ejpg%22"))
L6.xID = "Afroaves"
L7 = insFld(L6, gFld("Accipitrimorphae", "treeview_taxa.html?pic=%22Accipitrimorphae%2Ejpg%22"))
L7.xID = "Accipitrimorphae"
L8 = insFld(L7, gFld("Accipitriformes", "treeview_taxa.html?pic=%22Accipitriformes%2Ejpg%22"))
L8.xID = "Accipitriformes"
L9 = insFld(L8, gFld("Accipitridae", "treeview_taxa.html?pic=%22Accipitridae%2Ejpg%22"))
L9.xID = "Accipitridae"
L10 = insFld(L9, gFld("Aquila", "treeview_taxa.html?pic=%22Aquila%2Ejpg%22"))
L10.xID = "Aquila"
lv109 = insDoc(L10, gLnk("S", "Aquila_chrysaetos", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aquila_chrysaetos/Aquila_chrysaetos_res.html"))
lv109.xID = "Aquila_chrysaetos"
L10 = insFld(L9, gFld("Circus", "treeview_taxa.html?pic=%22Circus%2Ejpg%22"))
L10.xID = "Circus"
lv110 = insDoc(L10, gLnk("S", "Circus_aeruginosus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Circus_aeruginosus/Circus_aeruginosus_res.html"))
lv110.xID = "Circus_aeruginosus"
L8 = insFld(L7, gFld("Cathartiformes", "treeview_taxa.html?pic=%22Cathartiformes%2Ejpg%22"))
L8.xID = "Cathartiformes"
L9 = insFld(L8, gFld("Cathartidae", "treeview_taxa.html?pic=%22Cathartidae%2Ejpg%22"))
L9.xID = "Cathartidae"
L10 = insFld(L9, gFld("Vultur", "treeview_taxa.html?pic=%22Vultur%2Ejpg%22"))
L10.xID = "Vultur"
lv111 = insDoc(L10, gLnk("S", "Vultur_gryphus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Vultur_gryphus/Vultur_gryphus_res.html"))
lv111.xID = "Vultur_gryphus"
L7 = insFld(L6, gFld("Strigiformes", "treeview_taxa.html?pic=%22Strigiformes%2Ejpg%22"))
L7.xID = "Strigiformes"
L8 = insFld(L7, gFld("Tytonidae", "treeview_taxa.html?pic=%22Tytonidae%2Ejpg%22"))
L8.xID = "Tytonidae"
L9 = insFld(L8, gFld("Tyto", "treeview_taxa.html?pic=%22Tyto%2Ejpg%22"))
L9.xID = "Tyto"
lv112 = insDoc(L9, gLnk("S", "Tyto_alba", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tyto_alba/Tyto_alba_res.html"))
lv112.xID = "Tyto_alba"
L8 = insFld(L7, gFld("Strigidae", "treeview_taxa.html?pic=%22Strigidae%2Ejpg%22"))
L8.xID = "Strigidae"
L9 = insFld(L8, gFld("Bubo", "treeview_taxa.html?pic=%22Bubo%2Ejpg%22"))
L9.xID = "Bubo"
lv113 = insDoc(L9, gLnk("S", "Bubo_scandiacus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Bubo_scandiacus/Bubo_scandiacus_res.html"))
lv113.xID = "Bubo_scandiacus"
lv114 = insDoc(L9, gLnk("S", "Bubo_virginianus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Bubo_virginianus/Bubo_virginianus_res.html"))
lv114.xID = "Bubo_virginianus"
L7 = insFld(L6, gFld("Coraciimorphae", "treeview_taxa.html?pic=%22Coraciimorphae%2Ejpg%22"))
L7.xID = "Coraciimorphae"
L8 = insFld(L7, gFld("Coliiformes", "treeview_taxa.html?pic=%22Coliiformes%2Ejpg%22"))
L8.xID = "Coliiformes"
L9 = insFld(L8, gFld("Coliidae", "treeview_taxa.html?pic=%22Coliidae%2Ejpg%22"))
L9.xID = "Coliidae"
L10 = insFld(L9, gFld("Urocolius", "treeview_taxa.html?pic=%22Urocolius%2Ejpg%22"))
L10.xID = "Urocolius"
lv115 = insDoc(L10, gLnk("S", "Urocolius_macrourus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Urocolius_macrourus/Urocolius_macrourus_res.html"))
lv115.xID = "Urocolius_macrourus"
L8 = insFld(L7, gFld("Cavitaves", "treeview_taxa.html?pic=%22Cavitaves%2Ejpg%22"))
L8.xID = "Cavitaves"
L9 = insFld(L8, gFld("Leptosomiformes", "treeview_taxa.html?pic=%22Leptosomiformes%2Ejpg%22"))
L9.xID = "Leptosomiformes"
L10 = insFld(L9, gFld("Leptosomidae", "treeview_taxa.html?pic=%22Leptosomidae%2Ejpg%22"))
L10.xID = "Leptosomidae"
L11 = insFld(L10, gFld("Leptosomus", "treeview_taxa.html?pic=%22Leptosomus%2Ejpg%22"))
L11.xID = "Leptosomus"
lv116 = insDoc(L11, gLnk("S", "Leptosomus_discolor", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Leptosomus_discolor/Leptosomus_discolor_res.html"))
lv116.xID = "Leptosomus_discolor"
L9 = insFld(L8, gFld("Eucavitaves", "treeview_taxa.html?pic=%22Eucavitaves%2Ejpg%22"))
L9.xID = "Eucavitaves"
L10 = insFld(L9, gFld("Trogoniformes", "treeview_taxa.html?pic=%22Trogoniformes%2Ejpg%22"))
L10.xID = "Trogoniformes"
L11 = insFld(L10, gFld("Trogonidae", "treeview_taxa.html?pic=%22Trogonidae%2Ejpg%22"))
L11.xID = "Trogonidae"
L12 = insFld(L11, gFld("Euptilotis", "treeview_taxa.html?pic=%22Euptilotis%2Ejpg%22"))
L12.xID = "Euptilotis"
lv117 = insDoc(L12, gLnk("S", "Euptilotis_neoxenus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Euptilotis_neoxenus/Euptilotis_neoxenus_res.html"))
lv117.xID = "Euptilotis_neoxenus"
L10 = insFld(L9, gFld("Picocoraciae", "treeview_taxa.html?pic=%22Picocoraciae%2Ejpg%22"))
L10.xID = "Picocoraciae"
L11 = insFld(L10, gFld("Bucerotiformes", "treeview_taxa.html?pic=%22Bucerotiformes%2Ejpg%22"))
L11.xID = "Bucerotiformes"
L12 = insFld(L11, gFld("Bucorvidae", "treeview_taxa.html?pic=%22Bucorvidae%2Ejpg%22"))
L12.xID = "Bucorvidae"
L13 = insFld(L12, gFld("Bucorvus", "treeview_taxa.html?pic=%22Bucorvus%2Ejpg%22"))
L13.xID = "Bucorvus"
lv118 = insDoc(L13, gLnk("S", "Bucorvus_leadbeateri", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Bucorvus_leadbeateri/Bucorvus_leadbeateri_res.html"))
lv118.xID = "Bucorvus_leadbeateri"
L11 = insFld(L10, gFld("Picodynastornithes", "treeview_taxa.html?pic=%22Picodynastornithes%2Ejpg%22"))
L11.xID = "Picodynastornithes"
L12 = insFld(L11, gFld("Coraciiformes", "treeview_taxa.html?pic=%22Coraciiformes%2Ejpg%22"))
L12.xID = "Coraciiformes"
L13 = insFld(L12, gFld("Alcedinidae", "treeview_taxa.html?pic=%22Alcedinidae%2Ejpg%22"))
L13.xID = "Alcedinidae"
L14 = insFld(L13, gFld("Todiramphus", "treeview_taxa.html?pic=%22Todiramphus%2Ejpg%22"))
L14.xID = "Todiramphus"
lv119 = insDoc(L14, gLnk("S", "Todiramphus_cinnamominus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Todiramphus_cinnamominus/Todiramphus_cinnamominus_res.html"))
lv119.xID = "Todiramphus_cinnamominus"
L12 = insFld(L11, gFld("Piciformes", "treeview_taxa.html?pic=%22Piciformes%2Ejpg%22"))
L12.xID = "Piciformes"
L13 = insFld(L12, gFld("Ramphastidae", "treeview_taxa.html?pic=%22Ramphastidae%2Ejpg%22"))
L13.xID = "Ramphastidae"
L14 = insFld(L13, gFld("Ramphastos", "treeview_taxa.html?pic=%22Ramphastos%2Ejpg%22"))
L14.xID = "Ramphastos"
lv120 = insDoc(L14, gLnk("S", "Ramphastos_toco", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Ramphastos_toco/Ramphastos_toco_res.html"))
lv120.xID = "Ramphastos_toco"
L13 = insFld(L12, gFld("Picidae", "treeview_taxa.html?pic=%22Picidae%2Ejpg%22"))
L13.xID = "Picidae"
L14 = insFld(L13, gFld("Jynx", "treeview_taxa.html?pic=%22Jynx%2Ejpg%22"))
L14.xID = "Jynx"
lv121 = insDoc(L14, gLnk("S", "Jynx_torquilla", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Jynx_torquilla/Jynx_torquilla_res.html"))
lv121.xID = "Jynx_torquilla"
L6 = insFld(L5, gFld("Australaves", "treeview_taxa.html?pic=%22Australaves%2Ejpg%22"))
L6.xID = "Australaves"
L7 = insFld(L6, gFld("Cariamiformes", "treeview_taxa.html?pic=%22Cariamiformes%2Ejpg%22"))
L7.xID = "Cariamiformes"
L8 = insFld(L7, gFld("Cariamidae", "treeview_taxa.html?pic=%22Cariamidae%2Ejpg%22"))
L8.xID = "Cariamidae"
L9 = insFld(L8, gFld("Cariama", "treeview_taxa.html?pic=%22Cariama%2Ejpg%22"))
L9.xID = "Cariama"
lv122 = insDoc(L9, gLnk("S", "Cariama_cristata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cariama_cristata/Cariama_cristata_res.html"))
lv122.xID = "Cariama_cristata"
L7 = insFld(L6, gFld("Eufalconimorphae", "treeview_taxa.html?pic=%22Eufalconimorphae%2Ejpg%22"))
L7.xID = "Eufalconimorphae"
L8 = insFld(L7, gFld("Falconiformes", "treeview_taxa.html?pic=%22Falconiformes%2Ejpg%22"))
L8.xID = "Falconiformes"
L9 = insFld(L8, gFld("Falconidae", "treeview_taxa.html?pic=%22Falconidae%2Ejpg%22"))
L9.xID = "Falconidae"
L10 = insFld(L9, gFld("Falco", "treeview_taxa.html?pic=%22Falco%2Ejpg%22"))
L10.xID = "Falco"
lv123 = insDoc(L10, gLnk("S", "Falco_naumanni", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Falco_naumanni/Falco_naumanni_res.html"))
lv123.xID = "Falco_naumanni"
lv124 = insDoc(L10, gLnk("S", "Falco_tinnunculus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Falco_tinnunculus/Falco_tinnunculus_res.html"))
lv124.xID = "Falco_tinnunculus"
L8 = insFld(L7, gFld("Psittacopasserae", "treeview_taxa.html?pic=%22Psittacopasserae%2Ejpg%22"))
L8.xID = "Psittacopasserae"
L9 = insFld(L8, gFld("Psittaciformes", "treeview_taxa.html?pic=%22Psittaciformes%2Ejpg%22"))
L9.xID = "Psittaciformes"
L10 = insFld(L9, gFld("Strigopidae", "treeview_taxa.html?pic=%22Strigopidae%2Ejpg%22"))
L10.xID = "Strigopidae"
L11 = insFld(L10, gFld("Strigops", "treeview_taxa.html?pic=%22Strigops%2Ejpg%22"))
L11.xID = "Strigops"
lv125 = insDoc(L11, gLnk("S", "Strigops_habroptila", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Strigops_habroptila/Strigops_habroptila_res.html"))
lv125.xID = "Strigops_habroptila"
L10 = insFld(L9, gFld("Cacatuidae", "treeview_taxa.html?pic=%22Cacatuidae%2Ejpg%22"))
L10.xID = "Cacatuidae"
L11 = insFld(L10, gFld("Probosciger", "treeview_taxa.html?pic=%22Probosciger%2Ejpg%22"))
L11.xID = "Probosciger"
lv126 = insDoc(L11, gLnk("S", "Probosciger_aterrimus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Probosciger_aterrimus/Probosciger_aterrimus_res.html"))
lv126.xID = "Probosciger_aterrimus"
L10 = insFld(L9, gFld("Psittaculidae", "treeview_taxa.html?pic=%22Psittaculidae%2Ejpg%22"))
L10.xID = "Psittaculidae"
L11 = insFld(L10, gFld("Melopsittacus", "treeview_taxa.html?pic=%22Melopsittacus%2Ejpg%22"))
L11.xID = "Melopsittacus"
lv127 = insDoc(L11, gLnk("S", "Melopsittacus_undulatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Melopsittacus_undulatus/Melopsittacus_undulatus_res.html"))
lv127.xID = "Melopsittacus_undulatus"
L10 = insFld(L9, gFld("Psittacidae", "treeview_taxa.html?pic=%22Psittacidae%2Ejpg%22"))
L10.xID = "Psittacidae"
L11 = insFld(L10, gFld("Forpus", "treeview_taxa.html?pic=%22Forpus%2Ejpg%22"))
L11.xID = "Forpus"
lv128 = insDoc(L11, gLnk("S", "Forpus_passerinus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Forpus_passerinus/Forpus_passerinus_res.html"))
lv128.xID = "Forpus_passerinus"
L11 = insFld(L10, gFld("Myiopsitta", "treeview_taxa.html?pic=%22Myiopsitta%2Ejpg%22"))
L11.xID = "Myiopsitta"
lv129 = insDoc(L11, gLnk("S", "Myiopsitta_monachus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Myiopsitta_monachus/Myiopsitta_monachus_res.html"))
lv129.xID = "Myiopsitta_monachus"
L9 = insFld(L8, gFld("Passeriformes", "treeview_taxa.html?pic=%22Passeriformes%2Ejpg%22"))
L9.xID = "Passeriformes"
L10 = insFld(L9, gFld("Acanthisitti", "treeview_taxa.html?pic=%22Acanthisitti%2Ejpg%22"))
L10.xID = "Acanthisitti"
L11 = insFld(L10, gFld("Acanthisittidae", "treeview_taxa.html?pic=%22Acanthisittidae%2Ejpg%22"))
L11.xID = "Acanthisittidae"
L12 = insFld(L11, gFld("Acanthisitta", "treeview_taxa.html?pic=%22Acanthisitta%2Ejpg%22"))
L12.xID = "Acanthisitta"
lv130 = insDoc(L12, gLnk("S", "Acanthisitta_chloris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Acanthisitta_chloris/Acanthisitta_chloris_res.html"))
lv130.xID = "Acanthisitta_chloris"
L10 = insFld(L9, gFld("Tyranni", "treeview_taxa.html?pic=%22Tyranni%2Ejpg%22"))
L10.xID = "Tyranni"
L11 = insFld(L10, gFld("Tyrannides", "treeview_taxa.html?pic=%22Tyrannides%2Ejpg%22"))
L11.xID = "Tyrannides"
L12 = insFld(L11, gFld("Furnariidae", "treeview_taxa.html?pic=%22Furnariidae%2Ejpg%22"))
L12.xID = "Furnariidae"
L13 = insFld(L12, gFld("Aphrastura", "treeview_taxa.html?pic=%22Aphrastura%2Ejpg%22"))
L13.xID = "Aphrastura"
lv131 = insDoc(L13, gLnk("S", "Aphrastura_spinicauda", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Aphrastura_spinicauda/Aphrastura_spinicauda_res.html"))
lv131.xID = "Aphrastura_spinicauda"
L12 = insFld(L11, gFld("Tyrannidae", "treeview_taxa.html?pic=%22Tyrannidae%2Ejpg%22"))
L12.xID = "Tyrannidae"
L13 = insFld(L12, gFld("Tyrannus", "treeview_taxa.html?pic=%22Tyrannus%2Ejpg%22"))
L13.xID = "Tyrannus"
lv132 = insDoc(L13, gLnk("S", "Tyrannus_tyrannus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tyrannus_tyrannus/Tyrannus_tyrannus_res.html"))
lv132.xID = "Tyrannus_tyrannus"
L13 = insFld(L12, gFld("Sayornis", "treeview_taxa.html?pic=%22Sayornis%2Ejpg%22"))
L13.xID = "Sayornis"
lv133 = insDoc(L13, gLnk("S", "Sayornis_phoebe", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sayornis_phoebe/Sayornis_phoebe_res.html"))
lv133.xID = "Sayornis_phoebe"
L10 = insFld(L9, gFld("Passeri", "treeview_taxa.html?pic=%22Passeri%2Ejpg%22"))
L10.xID = "Passeri"
L11 = insFld(L10, gFld("Corvida", "treeview_taxa.html?pic=%22Corvida%2Ejpg%22"))
L11.xID = "Corvida"
L12 = insFld(L11, gFld("Corvoidea", "treeview_taxa.html?pic=%22Corvoidea%2Ejpg%22"))
L12.xID = "Corvoidea"
L13 = insFld(L12, gFld("Laniidae", "treeview_taxa.html?pic=%22Laniidae%2Ejpg%22"))
L13.xID = "Laniidae"
L14 = insFld(L13, gFld("Lanius", "treeview_taxa.html?pic=%22Lanius%2Ejpg%22"))
L14.xID = "Lanius"
lv134 = insDoc(L14, gLnk("S", "Lanius_senator", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lanius_senator/Lanius_senator_res.html"))
lv134.xID = "Lanius_senator"
L13 = insFld(L12, gFld("Corvidae", "treeview_taxa.html?pic=%22Corvidae%2Ejpg%22"))
L13.xID = "Corvidae"
L14 = insFld(L13, gFld("Pica", "treeview_taxa.html?pic=%22Pica%2Ejpg%22"))
L14.xID = "Pica"
lv135 = insDoc(L14, gLnk("S", "Pica_pica", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Pica_pica/Pica_pica_res.html"))
lv135.xID = "Pica_pica"
L14 = insFld(L13, gFld("Corvus", "treeview_taxa.html?pic=%22Corvus%2Ejpg%22"))
L14.xID = "Corvus"
lv136 = insDoc(L14, gLnk("S", "Corvus_monedula", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Corvus_monedula/Corvus_monedula_res.html"))
lv136.xID = "Corvus_monedula"
L11 = insFld(L10, gFld("Passerida", "treeview_taxa.html?pic=%22Passerida%2Ejpg%22"))
L11.xID = "Passerida"
L12 = insFld(L11, gFld("Eupetida", "treeview_taxa.html?pic=%22Eupetida%2Ejpg%22"))
L12.xID = "Eupetida"
L13 = insFld(L12, gFld("Picathartidae", "treeview_taxa.html?pic=%22Picathartidae%2Ejpg%22"))
L13.xID = "Picathartidae"
L14 = insFld(L13, gFld("Picathartes", "treeview_taxa.html?pic=%22Picathartes%2Ejpg%22"))
L14.xID = "Picathartes"
lv137 = insDoc(L14, gLnk("S", "Picathartes_gymnocephalus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Picathartes_gymnocephalus/Picathartes_gymnocephalus_res.html"))
lv137.xID = "Picathartes_gymnocephalus"
L12 = insFld(L11, gFld("Paroidea", "treeview_taxa.html?pic=%22Paroidea%2Ejpg%22"))
L12.xID = "Paroidea"
L13 = insFld(L12, gFld("Remizidae", "treeview_taxa.html?pic=%22Remizidae%2Ejpg%22"))
L13.xID = "Remizidae"
L14 = insFld(L13, gFld("Remiz", "treeview_taxa.html?pic=%22Remiz%2Ejpg%22"))
L14.xID = "Remiz"
lv138 = insDoc(L14, gLnk("S", "Remiz_pendulinus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Remiz_pendulinus/Remiz_pendulinus_res.html"))
lv138.xID = "Remiz_pendulinus"
L13 = insFld(L12, gFld("Paridae", "treeview_taxa.html?pic=%22Paridae%2Ejpg%22"))
L13.xID = "Paridae"
L14 = insFld(L13, gFld("Lophophanes", "treeview_taxa.html?pic=%22Lophophanes%2Ejpg%22"))
L14.xID = "Lophophanes"
lv139 = insDoc(L14, gLnk("S", "Lophophanes_cristatus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Lophophanes_cristatus/Lophophanes_cristatus_res.html"))
lv139.xID = "Lophophanes_cristatus"
L14 = insFld(L13, gFld("Poecile", "treeview_taxa.html?pic=%22Poecile%2Ejpg%22"))
L14.xID = "Poecile"
lv140 = insDoc(L14, gLnk("S", "Poecile_atricapillus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Poecile_atricapillus/Poecile_atricapillus_res.html"))
lv140.xID = "Poecile_atricapillus"
L14 = insFld(L13, gFld("Parus", "treeview_taxa.html?pic=%22Parus%2Ejpg%22"))
L14.xID = "Parus"
lv141 = insDoc(L14, gLnk("S", "Parus_major", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Parus_major/Parus_major_res.html"))
lv141.xID = "Parus_major"
L14 = insFld(L13, gFld("Cyanistes", "treeview_taxa.html?pic=%22Cyanistes%2Ejpg%22"))
L14.xID = "Cyanistes"
lv142 = insDoc(L14, gLnk("S", "Cyanistes_caeruleus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cyanistes_caeruleus/Cyanistes_caeruleus_res.html"))
lv142.xID = "Cyanistes_caeruleus"
L14 = insFld(L13, gFld("Periparus", "treeview_taxa.html?pic=%22Periparus%2Ejpg%22"))
L14.xID = "Periparus"
lv143 = insDoc(L14, gLnk("S", "Periparus_ater", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Periparus_ater/Periparus_ater_res.html"))
lv143.xID = "Periparus_ater"
L12 = insFld(L11, gFld("Sylvioidae", "treeview_taxa.html?pic=%22Sylvioidae%2Ejpg%22"))
L12.xID = "Sylvioidae"
L13 = insFld(L12, gFld("Sylvidae", "treeview_taxa.html?pic=%22Sylvidae%2Ejpg%22"))
L13.xID = "Sylvidae"
L14 = insFld(L13, gFld("Sylvia", "treeview_taxa.html?pic=%22Sylvia%2Ejpg%22"))
L14.xID = "Sylvia"
lv144 = insDoc(L14, gLnk("S", "Sylvia_atricapilla", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sylvia_atricapilla/Sylvia_atricapilla_res.html"))
lv144.xID = "Sylvia_atricapilla"
L13 = insFld(L12, gFld("Phylloscopidae", "treeview_taxa.html?pic=%22Phylloscopidae%2Ejpg%22"))
L13.xID = "Phylloscopidae"
L14 = insFld(L13, gFld("Phylloscopus", "treeview_taxa.html?pic=%22Phylloscopus%2Ejpg%22"))
L14.xID = "Phylloscopus"
lv145 = insDoc(L14, gLnk("S", "Phylloscopus_trochilus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Phylloscopus_trochilus/Phylloscopus_trochilus_res.html"))
lv145.xID = "Phylloscopus_trochilus"
L12 = insFld(L11, gFld("Reguloidea", "treeview_taxa.html?pic=%22Reguloidea%2Ejpg%22"))
L12.xID = "Reguloidea"
L13 = insFld(L12, gFld("Regulidae", "treeview_taxa.html?pic=%22Regulidae%2Ejpg%22"))
L13.xID = "Regulidae"
L14 = insFld(L13, gFld("Regulus", "treeview_taxa.html?pic=%22Regulus%2Ejpg%22"))
L14.xID = "Regulus"
lv146 = insDoc(L14, gLnk("S", "Regulus_regulus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Regulus_regulus/Regulus_regulus_res.html"))
lv146.xID = "Regulus_regulus"
lv147 = insDoc(L14, gLnk("S", "Regulus_ignicapillus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Regulus_ignicapillus/Regulus_ignicapillus_res.html"))
lv147.xID = "Regulus_ignicapillus"
L12 = insFld(L11, gFld("Certhiodea", "treeview_taxa.html?pic=%22Certhiodea%2Ejpg%22"))
L12.xID = "Certhiodea"
L13 = insFld(L12, gFld("Tichodromadidae", "treeview_taxa.html?pic=%22Tichodromadidae%2Ejpg%22"))
L13.xID = "Tichodromadidae"
L14 = insFld(L13, gFld("Tichodroma", "treeview_taxa.html?pic=%22Tichodroma%2Ejpg%22"))
L14.xID = "Tichodroma"
lv148 = insDoc(L14, gLnk("S", "Tichodroma_muraria", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Tichodroma_muraria/Tichodroma_muraria_res.html"))
lv148.xID = "Tichodroma_muraria"
L13 = insFld(L12, gFld("Troglodytidae", "treeview_taxa.html?pic=%22Troglodytidae%2Ejpg%22"))
L13.xID = "Troglodytidae"
L14 = insFld(L13, gFld("Troglodytes", "treeview_taxa.html?pic=%22Troglodytes%2Ejpg%22"))
L14.xID = "Troglodytes"
lv149 = insDoc(L14, gLnk("S", "Troglodytes_aedon", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Troglodytes_aedon/Troglodytes_aedon_res.html"))
lv149.xID = "Troglodytes_aedon"
L13 = insFld(L12, gFld("Sittidae", "treeview_taxa.html?pic=%22Sittidae%2Ejpg%22"))
L13.xID = "Sittidae"
L14 = insFld(L13, gFld("Sitta", "treeview_taxa.html?pic=%22Sitta%2Ejpg%22"))
L14.xID = "Sitta"
lv150 = insDoc(L14, gLnk("S", "Sitta_europaea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sitta_europaea/Sitta_europaea_res.html"))
lv150.xID = "Sitta_europaea"
L12 = insFld(L11, gFld("Muscicapoidea", "treeview_taxa.html?pic=%22Muscicapoidea%2Ejpg%22"))
L12.xID = "Muscicapoidea"
L13 = insFld(L12, gFld("Cinclidae", "treeview_taxa.html?pic=%22Cinclidae%2Ejpg%22"))
L13.xID = "Cinclidae"
L14 = insFld(L13, gFld("Cinclus", "treeview_taxa.html?pic=%22Cinclus%2Ejpg%22"))
L14.xID = "Cinclus"
lv151 = insDoc(L14, gLnk("S", "Cinclus_cinclus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cinclus_cinclus/Cinclus_cinclus_res.html"))
lv151.xID = "Cinclus_cinclus"
L13 = insFld(L12, gFld("Turdidae", "treeview_taxa.html?pic=%22Turdidae%2Ejpg%22"))
L13.xID = "Turdidae"
L14 = insFld(L13, gFld("Turdus", "treeview_taxa.html?pic=%22Turdus%2Ejpg%22"))
L14.xID = "Turdus"
lv152 = insDoc(L14, gLnk("S", "Turdus_merula", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Turdus_merula/Turdus_merula_res.html"))
lv152.xID = "Turdus_merula"
lv153 = insDoc(L14, gLnk("S", "Turdus_philomelos", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Turdus_philomelos/Turdus_philomelos_res.html"))
lv153.xID = "Turdus_philomelos"
lv154 = insDoc(L14, gLnk("S", "Turdus_migratorius", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Turdus_migratorius/Turdus_migratorius_res.html"))
lv154.xID = "Turdus_migratorius"
L14 = insFld(L13, gFld("Catharus", "treeview_taxa.html?pic=%22Catharus%2Ejpg%22"))
L14.xID = "Catharus"
lv155 = insDoc(L14, gLnk("S", "Catharus_minimus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Catharus_minimus/Catharus_minimus_res.html"))
lv155.xID = "Catharus_minimus"
L13 = insFld(L12, gFld("Sturnidae", "treeview_taxa.html?pic=%22Sturnidae%2Ejpg%22"))
L13.xID = "Sturnidae"
L14 = insFld(L13, gFld("Sturnus", "treeview_taxa.html?pic=%22Sturnus%2Ejpg%22"))
L14.xID = "Sturnus"
lv156 = insDoc(L14, gLnk("S", "Sturnus_vulgaris", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Sturnus_vulgaris/Sturnus_vulgaris_res.html"))
lv156.xID = "Sturnus_vulgaris"
L13 = insFld(L12, gFld("Mimidae", "treeview_taxa.html?pic=%22Mimidae%2Ejpg%22"))
L13.xID = "Mimidae"
L14 = insFld(L13, gFld("Toxostoma", "treeview_taxa.html?pic=%22Toxostoma%2Ejpg%22"))
L14.xID = "Toxostoma"
lv157 = insDoc(L14, gLnk("S", "Toxostoma_curvirostre", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Toxostoma_curvirostre/Toxostoma_curvirostre_res.html"))
lv157.xID = "Toxostoma_curvirostre"
L12 = insFld(L11, gFld("Passeroidea", "treeview_taxa.html?pic=%22Passeroidea%2Ejpg%22"))
L12.xID = "Passeroidea"
L13 = insFld(L12, gFld("Nectariniidae", "treeview_taxa.html?pic=%22Nectariniidae%2Ejpg%22"))
L13.xID = "Nectariniidae"
L14 = insFld(L13, gFld("Cinnyris", "treeview_taxa.html?pic=%22Cinnyris%2Ejpg%22"))
L14.xID = "Cinnyris"
lv158 = insDoc(L14, gLnk("S", "Cinnyris_jugularis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Cinnyris_jugularis/Cinnyris_jugularis_res.html"))
lv158.xID = "Cinnyris_jugularis"
L13 = insFld(L12, gFld("Passeridae", "treeview_taxa.html?pic=%22Passeridae%2Ejpg%22"))
L13.xID = "Passeridae"
L14 = insFld(L13, gFld("Passer", "treeview_taxa.html?pic=%22Passer%2Ejpg%22"))
L14.xID = "Passer"
lv159 = insDoc(L14, gLnk("S", "Passer_domesticus", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Passer_domesticus/Passer_domesticus_res.html"))
lv159.xID = "Passer_domesticus"
L13 = insFld(L12, gFld("Motacillidae", "treeview_taxa.html?pic=%22Motacillidae%2Ejpg%22"))
L13.xID = "Motacillidae"
L14 = insFld(L13, gFld("Anthus", "treeview_taxa.html?pic=%22Anthus%2Ejpg%22"))
L14.xID = "Anthus"
lv160 = insDoc(L14, gLnk("S", "Anthus_pratensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Anthus_pratensis/Anthus_pratensis_res.html"))
lv160.xID = "Anthus_pratensis"
L14 = insFld(L13, gFld("Motacilla", "treeview_taxa.html?pic=%22Motacilla%2Ejpg%22"))
L14.xID = "Motacilla"
lv161 = insDoc(L14, gLnk("S", "Motacilla_flava", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Motacilla_flava/Motacilla_flava_res.html"))
lv161.xID = "Motacilla_flava"
L13 = insFld(L12, gFld("Emberizidae", "treeview_taxa.html?pic=%22Emberizidae%2Ejpg%22"))
L13.xID = "Emberizidae"
L14 = insFld(L13, gFld("Passerculus", "treeview_taxa.html?pic=%22Passerculus%2Ejpg%22"))
L14.xID = "Passerculus"
lv162 = insDoc(L14, gLnk("S", "Passerculus_sandwichensis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Passerculus_sandwichensis/Passerculus_sandwichensis_res.html"))
lv162.xID = "Passerculus_sandwichensis"
L14 = insFld(L13, gFld("Passerella", "treeview_taxa.html?pic=%22Passerella%2Ejpg%22"))
L14.xID = "Passerella"
lv163 = insDoc(L14, gLnk("S", "Passerella_iliaca", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Passerella_iliaca/Passerella_iliaca_res.html"))
lv163.xID = "Passerella_iliaca"
L14 = insFld(L13, gFld("Zonotrichia", "treeview_taxa.html?pic=%22Zonotrichia%2Ejpg%22"))
L14.xID = "Zonotrichia"
lv164 = insDoc(L14, gLnk("S", "Zonotrichia_leucophrys", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Zonotrichia_leucophrys/Zonotrichia_leucophrys_res.html"))
lv164.xID = "Zonotrichia_leucophrys"
L14 = insFld(L13, gFld("Spizelloides", "treeview_taxa.html?pic=%22Spizelloides%2Ejpg%22"))
L14.xID = "Spizelloides"
lv165 = insDoc(L14, gLnk("S", "Spizelloides_arborea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Spizelloides_arborea/Spizelloides_arborea_res.html"))
lv165.xID = "Spizelloides_arborea"
L13 = insFld(L12, gFld("Fringillidae", "treeview_taxa.html?pic=%22Fringillidae%2Ejpg%22"))
L13.xID = "Fringillidae"
L14 = insFld(L13, gFld("Acanthis", "treeview_taxa.html?pic=%22Acanthis%2Ejpg%22"))
L14.xID = "Acanthis"
lv166 = insDoc(L14, gLnk("S", "Acanthis_flammea", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Acanthis_flammea/Acanthis_flammea_res.html"))
lv166.xID = "Acanthis_flammea"
L14 = insFld(L13, gFld("Carduelis", "treeview_taxa.html?pic=%22Carduelis%2Ejpg%22"))
L14.xID = "Carduelis"
lv167 = insDoc(L14, gLnk("S", "Carduelis_carduelis", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Carduelis_carduelis/Carduelis_carduelis_res.html"))
lv167.xID = "Carduelis_carduelis"
L13 = insFld(L12, gFld("Parulidae", "treeview_taxa.html?pic=%22Parulidae%2Ejpg%22"))
L13.xID = "Parulidae"
L14 = insFld(L13, gFld("Setophaga", "treeview_taxa.html?pic=%22Setophaga%2Ejpg%22"))
L14.xID = "Setophaga"
lv168 = insDoc(L14, gLnk("S", "Setophaga_striata", "http://www.bio.vu.nl/thb/deb/deblab/add_my_pet/entries_web/Setophaga_striata/Setophaga_striata_res.html"))
lv168.xID = "Setophaga_striata"
foldersTree.treeID = "Aves"
