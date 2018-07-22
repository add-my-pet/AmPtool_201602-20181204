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

foldersTree = gFld("<b>Carnivora</b>", "treeview_taxa.html")
foldersTree.xID = "Carnivora"
L2 = insFld(foldersTree, gFld("<p id='Feliformia'>Feliformia</p>", "treeview_taxa.html?pic=%22Feliformia%2Ejpg%22"))
L2.xID = "Feliformia"
L3 = insFld(L2, gFld("<p id='Feloidea'>Feloidea</p>", "treeview_taxa.html?pic=%22Feloidea%2Ejpg%22"))
L3.xID = "Feloidea"
L4 = insFld(L3, gFld("<p id='Felidae'>Felidae</p>", "treeview_taxa.html?pic=%22Felidae%2Ejpg%22"))
L4.xID = "Felidae"
L5 = insFld(L4, gFld("<p id='Panthera'>Panthera</p>", "treeview_taxa.html?pic=%22Panthera%2Ejpg%22"))
L5.xID = "Panthera"
lv1 = insDoc(L5, gLnk("S", "<p id='Panthera_leo'>Panthera_leo</p>", AmPpath + "Panthera_leo/Panthera_leo_res.html"))
lv1.xID = "Panthera_leo"
L5 = insFld(L4, gFld("<p id='Lynx'>Lynx</p>", "treeview_taxa.html?pic=%22Lynx%2Ejpg%22"))
L5.xID = "Lynx"
lv2 = insDoc(L5, gLnk("S", "<p id='Lynx_lynx'>Lynx_lynx</p>", AmPpath + "Lynx_lynx/Lynx_lynx_res.html"))
lv2.xID = "Lynx_lynx"
lv3 = insDoc(L5, gLnk("S", "<p id='Lynx_pardinus'>Lynx_pardinus</p>", AmPpath + "Lynx_pardinus/Lynx_pardinus_res.html"))
lv3.xID = "Lynx_pardinus"
L3 = insFld(L2, gFld("<p id='Viverroidea'>Viverroidea</p>", "treeview_taxa.html?pic=%22Viverroidea%2Ejpg%22"))
L3.xID = "Viverroidea"
L4 = insFld(L3, gFld("<p id='Viverridae'>Viverridae</p>", "treeview_taxa.html?pic=%22Viverridae%2Ejpg%22"))
L4.xID = "Viverridae"
L5 = insFld(L4, gFld("<p id='Paradoxurinae'>Paradoxurinae</p>", "treeview_taxa.html?pic=%22Paradoxurinae%2Ejpg%22"))
L5.xID = "Paradoxurinae"
L6 = insFld(L5, gFld("<p id='Arctictis'>Arctictis</p>", "treeview_taxa.html?pic=%22Arctictis%2Ejpg%22"))
L6.xID = "Arctictis"
lv4 = insDoc(L6, gLnk("S", "<p id='Arctictis_binturong'>Arctictis_binturong</p>", AmPpath + "Arctictis_binturong/Arctictis_binturong_res.html"))
lv4.xID = "Arctictis_binturong"
L6 = insFld(L5, gFld("<p id='Paradoxurus'>Paradoxurus</p>", "treeview_taxa.html?pic=%22Paradoxurus%2Ejpg%22"))
L6.xID = "Paradoxurus"
lv5 = insDoc(L6, gLnk("S", "<p id='Paradoxurus_hermaphroditus'>Paradoxurus_hermaphroditus</p>", AmPpath + "Paradoxurus_hermaphroditus/Paradoxurus_hermaphroditus_res.html"))
lv5.xID = "Paradoxurus_hermaphroditus"
L5 = insFld(L4, gFld("<p id='Viverrinae'>Viverrinae</p>", "treeview_taxa.html?pic=%22Viverrinae%2Ejpg%22"))
L5.xID = "Viverrinae"
L6 = insFld(L5, gFld("<p id='Civettictis'>Civettictis</p>", "treeview_taxa.html?pic=%22Civettictis%2Ejpg%22"))
L6.xID = "Civettictis"
lv6 = insDoc(L6, gLnk("S", "<p id='Civettictis_civetta'>Civettictis_civetta</p>", AmPpath + "Civettictis_civetta/Civettictis_civetta_res.html"))
lv6.xID = "Civettictis_civetta"
L4 = insFld(L3, gFld("<p id='Herpestoidea'>Herpestoidea</p>", "treeview_taxa.html?pic=%22Herpestoidea%2Ejpg%22"))
L4.xID = "Herpestoidea"
L5 = insFld(L4, gFld("<p id='Hyaenidae'>Hyaenidae</p>", "treeview_taxa.html?pic=%22Hyaenidae%2Ejpg%22"))
L5.xID = "Hyaenidae"
L6 = insFld(L5, gFld("<p id='Crocuta'>Crocuta</p>", "treeview_taxa.html?pic=%22Crocuta%2Ejpg%22"))
L6.xID = "Crocuta"
lv7 = insDoc(L6, gLnk("S", "<p id='Crocuta_crocuta'>Crocuta_crocuta</p>", AmPpath + "Crocuta_crocuta/Crocuta_crocuta_res.html"))
lv7.xID = "Crocuta_crocuta"
L6 = insFld(L5, gFld("<p id='Hyaena'>Hyaena</p>", "treeview_taxa.html?pic=%22Hyaena%2Ejpg%22"))
L6.xID = "Hyaena"
lv8 = insDoc(L6, gLnk("S", "<p id='Hyaena_brunnea'>Hyaena_brunnea</p>", AmPpath + "Hyaena_brunnea/Hyaena_brunnea_res.html"))
lv8.xID = "Hyaena_brunnea"
L5 = insFld(L4, gFld("<p id='Herpestidae'>Herpestidae</p>", "treeview_taxa.html?pic=%22Herpestidae%2Ejpg%22"))
L5.xID = "Herpestidae"
L6 = insFld(L5, gFld("<p id='Herpestinae'>Herpestinae</p>", "treeview_taxa.html?pic=%22Herpestinae%2Ejpg%22"))
L6.xID = "Herpestinae"
L7 = insFld(L6, gFld("<p id='Atilax'>Atilax</p>", "treeview_taxa.html?pic=%22Atilax%2Ejpg%22"))
L7.xID = "Atilax"
lv9 = insDoc(L7, gLnk("S", "<p id='Atilax_paludinosus'>Atilax_paludinosus</p>", AmPpath + "Atilax_paludinosus/Atilax_paludinosus_res.html"))
lv9.xID = "Atilax_paludinosus"
L7 = insFld(L6, gFld("<p id='Herpestes'>Herpestes</p>", "treeview_taxa.html?pic=%22Herpestes%2Ejpg%22"))
L7.xID = "Herpestes"
lv10 = insDoc(L7, gLnk("S", "<p id='Herpestes_javanicus'>Herpestes_javanicus</p>", AmPpath + "Herpestes_javanicus/Herpestes_javanicus_res.html"))
lv10.xID = "Herpestes_javanicus"
L6 = insFld(L5, gFld("<p id='Mungotinae'>Mungotinae</p>", "treeview_taxa.html?pic=%22Mungotinae%2Ejpg%22"))
L6.xID = "Mungotinae"
L7 = insFld(L6, gFld("<p id='Suricata'>Suricata</p>", "treeview_taxa.html?pic=%22Suricata%2Ejpg%22"))
L7.xID = "Suricata"
lv11 = insDoc(L7, gLnk("S", "<p id='Suricata_suricatta'>Suricata_suricatta</p>", AmPpath + "Suricata_suricatta/Suricata_suricatta_res.html"))
lv11.xID = "Suricata_suricatta"
L2 = insFld(foldersTree, gFld("<p id='Caniformia'>Caniformia</p>", "treeview_taxa.html?pic=%22Caniformia%2Ejpg%22"))
L2.xID = "Caniformia"
L3 = insFld(L2, gFld("<p id='Canidae'>Canidae</p>", "treeview_taxa.html?pic=%22Canidae%2Ejpg%22"))
L3.xID = "Canidae"
L4 = insFld(L3, gFld("<p id='Vulpes'>Vulpes</p>", "treeview_taxa.html?pic=%22Vulpes%2Ejpg%22"))
L4.xID = "Vulpes"
lv12 = insDoc(L4, gLnk("S", "<p id='Vulpes_lagopus'>Vulpes_lagopus</p>", AmPpath + "Vulpes_lagopus/Vulpes_lagopus_res.html"))
lv12.xID = "Vulpes_lagopus"
lv13 = insDoc(L4, gLnk("S", "<p id='Vulpes_vulpes'>Vulpes_vulpes</p>", AmPpath + "Vulpes_vulpes/Vulpes_vulpes_res.html"))
lv13.xID = "Vulpes_vulpes"
L4 = insFld(L3, gFld("<p id='Canis'>Canis</p>", "treeview_taxa.html?pic=%22Canis%2Ejpg%22"))
L4.xID = "Canis"
lv14 = insDoc(L4, gLnk("S", "<p id='Canis_lupus'>Canis_lupus</p>", AmPpath + "Canis_lupus/Canis_lupus_res.html"))
lv14.xID = "Canis_lupus"
L4 = insFld(L3, gFld("<p id='Nyctereutes'>Nyctereutes</p>", "treeview_taxa.html?pic=%22Nyctereutes%2Ejpg%22"))
L4.xID = "Nyctereutes"
lv15 = insDoc(L4, gLnk("S", "<p id='Nyctereutes_procyonoides'>Nyctereutes_procyonoides</p>", AmPpath + "Nyctereutes_procyonoides/Nyctereutes_procyonoides_res.html"))
lv15.xID = "Nyctereutes_procyonoides"
L3 = insFld(L2, gFld("<p id='Arctoidea'>Arctoidea</p>", "treeview_taxa.html?pic=%22Arctoidea%2Ejpg%22"))
L3.xID = "Arctoidea"
L4 = insFld(L3, gFld("<p id='Musteloidea'>Musteloidea</p>", "treeview_taxa.html?pic=%22Musteloidea%2Ejpg%22"))
L4.xID = "Musteloidea"
L5 = insFld(L4, gFld("<p id='Ailuridae'>Ailuridae</p>", "treeview_taxa.html?pic=%22Ailuridae%2Ejpg%22"))
L5.xID = "Ailuridae"
L6 = insFld(L5, gFld("<p id='Ailurus'>Ailurus</p>", "treeview_taxa.html?pic=%22Ailurus%2Ejpg%22"))
L6.xID = "Ailurus"
lv16 = insDoc(L6, gLnk("S", "<p id='Ailurus_fulgens'>Ailurus_fulgens</p>", AmPpath + "Ailurus_fulgens/Ailurus_fulgens_res.html"))
lv16.xID = "Ailurus_fulgens"
L5 = insFld(L4, gFld("<p id='Mephitidae'>Mephitidae</p>", "treeview_taxa.html?pic=%22Mephitidae%2Ejpg%22"))
L5.xID = "Mephitidae"
L6 = insFld(L5, gFld("<p id='Mephitis'>Mephitis</p>", "treeview_taxa.html?pic=%22Mephitis%2Ejpg%22"))
L6.xID = "Mephitis"
lv17 = insDoc(L6, gLnk("S", "<p id='Mephitis_mephitis'>Mephitis_mephitis</p>", AmPpath + "Mephitis_mephitis/Mephitis_mephitis_res.html"))
lv17.xID = "Mephitis_mephitis"
L5 = insFld(L4, gFld("<p id='Mustelidae'>Mustelidae</p>", "treeview_taxa.html?pic=%22Mustelidae%2Ejpg%22"))
L5.xID = "Mustelidae"
L6 = insFld(L5, gFld("<p id='Meles'>Meles</p>", "treeview_taxa.html?pic=%22Meles%2Ejpg%22"))
L6.xID = "Meles"
lv18 = insDoc(L6, gLnk("S", "<p id='Meles_meles'>Meles_meles</p>", AmPpath + "Meles_meles/Meles_meles_res.html"))
lv18.xID = "Meles_meles"
L6 = insFld(L5, gFld("<p id='Enhydra'>Enhydra</p>", "treeview_taxa.html?pic=%22Enhydra%2Ejpg%22"))
L6.xID = "Enhydra"
lv19 = insDoc(L6, gLnk("S", "<p id='Enhydra_lutris'>Enhydra_lutris</p>", AmPpath + "Enhydra_lutris/Enhydra_lutris_res.html"))
lv19.xID = "Enhydra_lutris"
L6 = insFld(L5, gFld("<p id='Lutra'>Lutra</p>", "treeview_taxa.html?pic=%22Lutra%2Ejpg%22"))
L6.xID = "Lutra"
lv20 = insDoc(L6, gLnk("S", "<p id='Lutra_lutra'>Lutra_lutra</p>", AmPpath + "Lutra_lutra/Lutra_lutra_res.html"))
lv20.xID = "Lutra_lutra"
L5 = insFld(L4, gFld("<p id='Procyonidae'>Procyonidae</p>", "treeview_taxa.html?pic=%22Procyonidae%2Ejpg%22"))
L5.xID = "Procyonidae"
L6 = insFld(L5, gFld("<p id='Procyon'>Procyon</p>", "treeview_taxa.html?pic=%22Procyon%2Ejpg%22"))
L6.xID = "Procyon"
lv21 = insDoc(L6, gLnk("S", "<p id='Procyon_lotor'>Procyon_lotor</p>", AmPpath + "Procyon_lotor/Procyon_lotor_res.html"))
lv21.xID = "Procyon_lotor"
L4 = insFld(L3, gFld("<p id='Ursidae'>Ursidae</p>", "treeview_taxa.html?pic=%22Ursidae%2Ejpg%22"))
L4.xID = "Ursidae"
L5 = insFld(L4, gFld("<p id='Ursus'>Ursus</p>", "treeview_taxa.html?pic=%22Ursus%2Ejpg%22"))
L5.xID = "Ursus"
lv22 = insDoc(L5, gLnk("S", "<p id='Ursus_arctos'>Ursus_arctos</p>", AmPpath + "Ursus_arctos/Ursus_arctos_res.html"))
lv22.xID = "Ursus_arctos"
lv23 = insDoc(L5, gLnk("S", "<p id='Ursus_maritimus'>Ursus_maritimus</p>", AmPpath + "Ursus_maritimus/Ursus_maritimus_res.html"))
lv23.xID = "Ursus_maritimus"
L5 = insFld(L4, gFld("<p id='Ailuropoda'>Ailuropoda</p>", "treeview_taxa.html?pic=%22Ailuropoda%2Ejpg%22"))
L5.xID = "Ailuropoda"
lv24 = insDoc(L5, gLnk("S", "<p id='Ailuropoda_melanoleuca'>Ailuropoda_melanoleuca</p>", AmPpath + "Ailuropoda_melanoleuca/Ailuropoda_melanoleuca_res.html"))
lv24.xID = "Ailuropoda_melanoleuca"
L4 = insFld(L3, gFld("<p id='Pinnipedia'>Pinnipedia</p>", "treeview_taxa.html?pic=%22Pinnipedia%2Ejpg%22"))
L4.xID = "Pinnipedia"
L5 = insFld(L4, gFld("<p id='Otariidae'>Otariidae</p>", "treeview_taxa.html?pic=%22Otariidae%2Ejpg%22"))
L5.xID = "Otariidae"
L6 = insFld(L5, gFld("<p id='Callorhinus'>Callorhinus</p>", "treeview_taxa.html?pic=%22Callorhinus%2Ejpg%22"))
L6.xID = "Callorhinus"
lv25 = insDoc(L6, gLnk("S", "<p id='Callorhinus_ursinus'>Callorhinus_ursinus</p>", AmPpath + "Callorhinus_ursinus/Callorhinus_ursinus_res.html"))
lv25.xID = "Callorhinus_ursinus"
L6 = insFld(L5, gFld("<p id='Zalophus'>Zalophus</p>", "treeview_taxa.html?pic=%22Zalophus%2Ejpg%22"))
L6.xID = "Zalophus"
lv26 = insDoc(L6, gLnk("S", "<p id='Zalophus_californianus'>Zalophus_californianus</p>", AmPpath + "Zalophus_californianus/Zalophus_californianus_res.html"))
lv26.xID = "Zalophus_californianus"
L6 = insFld(L5, gFld("<p id='Arctocephalus'>Arctocephalus</p>", "treeview_taxa.html?pic=%22Arctocephalus%2Ejpg%22"))
L6.xID = "Arctocephalus"
lv27 = insDoc(L6, gLnk("S", "<p id='Arctocephalus_australis'>Arctocephalus_australis</p>", AmPpath + "Arctocephalus_australis/Arctocephalus_australis_res.html"))
lv27.xID = "Arctocephalus_australis"
L6 = insFld(L5, gFld("<p id='Otaria'>Otaria</p>", "treeview_taxa.html?pic=%22Otaria%2Ejpg%22"))
L6.xID = "Otaria"
lv28 = insDoc(L6, gLnk("S", "<p id='Otaria_flavescens'>Otaria_flavescens</p>", AmPpath + "Otaria_flavescens/Otaria_flavescens_res.html"))
lv28.xID = "Otaria_flavescens"
L5 = insFld(L4, gFld("<p id='Phocidae'>Phocidae</p>", "treeview_taxa.html?pic=%22Phocidae%2Ejpg%22"))
L5.xID = "Phocidae"
L6 = insFld(L5, gFld("<p id='Phoca'>Phoca</p>", "treeview_taxa.html?pic=%22Phoca%2Ejpg%22"))
L6.xID = "Phoca"
lv29 = insDoc(L6, gLnk("S", "<p id='Phoca_vitulina'>Phoca_vitulina</p>", AmPpath + "Phoca_vitulina/Phoca_vitulina_res.html"))
lv29.xID = "Phoca_vitulina"
L6 = insFld(L5, gFld("<p id='Pusa'>Pusa</p>", "treeview_taxa.html?pic=%22Pusa%2Ejpg%22"))
L6.xID = "Pusa"
lv30 = insDoc(L6, gLnk("S", "<p id='Pusa_hispida'>Pusa_hispida</p>", AmPpath + "Pusa_hispida/Pusa_hispida_res.html"))
lv30.xID = "Pusa_hispida"
L6 = insFld(L5, gFld("<p id='Halichoerus'>Halichoerus</p>", "treeview_taxa.html?pic=%22Halichoerus%2Ejpg%22"))
L6.xID = "Halichoerus"
lv31 = insDoc(L6, gLnk("S", "<p id='Halichoerus_grypus'>Halichoerus_grypus</p>", AmPpath + "Halichoerus_grypus/Halichoerus_grypus_res.html"))
lv31.xID = "Halichoerus_grypus"
L6 = insFld(L5, gFld("<p id='Pagophilus'>Pagophilus</p>", "treeview_taxa.html?pic=%22Pagophilus%2Ejpg%22"))
L6.xID = "Pagophilus"
lv32 = insDoc(L6, gLnk("S", "<p id='Pagophilus_groenlandicus'>Pagophilus_groenlandicus</p>", AmPpath + "Pagophilus_groenlandicus/Pagophilus_groenlandicus_res.html"))
lv32.xID = "Pagophilus_groenlandicus"
L6 = insFld(L5, gFld("<p id='Erignathus'>Erignathus</p>", "treeview_taxa.html?pic=%22Erignathus%2Ejpg%22"))
L6.xID = "Erignathus"
lv33 = insDoc(L6, gLnk("S", "<p id='Erignathus_barbatus'>Erignathus_barbatus</p>", AmPpath + "Erignathus_barbatus/Erignathus_barbatus_res.html"))
lv33.xID = "Erignathus_barbatus"
L6 = insFld(L5, gFld("<p id='Cystophora'>Cystophora</p>", "treeview_taxa.html?pic=%22Cystophora%2Ejpg%22"))
L6.xID = "Cystophora"
lv34 = insDoc(L6, gLnk("S", "<p id='Cystophora_cristata'>Cystophora_cristata</p>", AmPpath + "Cystophora_cristata/Cystophora_cristata_res.html"))
lv34.xID = "Cystophora_cristata"
L6 = insFld(L5, gFld("<p id='Mirounga'>Mirounga</p>", "treeview_taxa.html?pic=%22Mirounga%2Ejpg%22"))
L6.xID = "Mirounga"
lv35 = insDoc(L6, gLnk("S", "<p id='Mirounga_leonina'>Mirounga_leonina</p>", AmPpath + "Mirounga_leonina/Mirounga_leonina_res.html"))
lv35.xID = "Mirounga_leonina"
L5 = insFld(L4, gFld("<p id='Odobenidae'>Odobenidae</p>", "treeview_taxa.html?pic=%22Odobenidae%2Ejpg%22"))
L5.xID = "Odobenidae"
L6 = insFld(L5, gFld("<p id='Odobenus'>Odobenus</p>", "treeview_taxa.html?pic=%22Odobenus%2Ejpg%22"))
L6.xID = "Odobenus"
lv36 = insDoc(L6, gLnk("S", "<p id='Odobenus_rosmarus_rosmarus'>Odobenus_rosmarus_rosmarus</p>", AmPpath + "Odobenus_rosmarus_rosmarus/Odobenus_rosmarus_rosmarus_res.html"))
lv36.xID = "Odobenus_rosmarus_rosmarus"
foldersTree.treeID = "Carnivora"
