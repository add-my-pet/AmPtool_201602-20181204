%% get_eco
% specifies ecology for AmP entries

%%
function [climate, ecozone, habitat, embryo, migrate, food] = get_eco(taxon)
% created 2018/04/03 by Bas Kooijman

%% Syntax
% [climate, ecozone, habitat, embryo, migrate, food] = <get_eco *get_eco*>(taxon)

%% Description
% Fills cell strings with ecological specifications of AmP species
%
% Input:
%
% * taxon: character string with name of an entry
%
% Output:
%
% * climate, ecozone, habitat, embryo, migrate, food: cell arrays with codes

%% Remarks
% The codes are described in AmPeco.html.
% check the correctness of the codes with <check_eco *check_eco*>


%% Example of use
% [climate, ecozone, habitat, embryo, migrate, food] = get_eco('Daphnia_magna');


  switch taxon
    case 'Haliclona_oculata'
      climate = {'MC'};
      ecozone = {'MAN','MAS'};
      habitat = {'0bMp','biMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP'};

    case 'Chironex_fleckeri'
      climate = {'MC'};
      ecozone = {'MAN','MAS'};
      habitat = {'0bMp','biMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP'};

    case 'Hydra_viridissima'
      climate = {'Cfb','Dfb'};
      ecozone = {'TH'};
      habitat = {'0iFp','biFl'};
      embryo  = {'Fc'};
      migrate = {};
      food    = {'biP','biAa'};

    case 'Pelagia_noctiluca'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Cyanea_capillata'
      climate = {'MC','ME'};
      ecozone = {'MPN','MAN','MN'};
      habitat = {'0iMp','biMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Rhizostoma_octopus'
      climate = {'MC'};
      ecozone = {'MPN','MAN'};
      habitat = {'0iMp','biMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Mastigias_papua'
      climate = {'MA'};
      ecozone = {'MPSW','MI'};
      habitat = {'0iMp','biMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','jiAa'};

    case 'Ptilosarcus_gurneyi'
      climate = {'MC'};
      ecozone = {'MPE'};
      habitat = {'0iMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Mnemiopsis_leidyi'
      climate = {'MC'};
      ecozone = {'MA'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Bolinopsis_mikado'
      climate = {'MC'};
      ecozone = {'MPW'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Callianira_antarctica'
      climate = {'ME'};
      ecozone = {'MS'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Pleurobrachia_pileus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Pleurobrachia_bachei'
      climate = {'MC'};
      ecozone = {'MPNE'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Beroe_gracilis'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biCin'};

    case 'Beroe_ovata'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biCin'};

    case 'Symsagittifera_roscoffensis'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0iMb','0iMi'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biB','jiAa'};

    case 'Moniliformis_dubius'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TA'};
      habitat = {'0iT'};
      embryo  = {'Ta'};
      migrate = {};
      food    = {'biTvm'};

    case 'Asplanchna_girodi'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TA','TN','TP'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fp'};
      migrate = {};
      food    = {'biPz','biCir'};

    case 'Brachionus_plicatilis'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TA','TN','TP'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fp'};
      migrate = {};
      food    = {'biPp'};

    case 'Aspidiophorus_polystictos'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TA','TN','TP'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fp'};
      migrate = {};
      food    = {'biPn'};

    case 'Schmidtea_polychroa'
      climate = {'C'};
      ecozone = {'THp'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fs'};
      migrate = {};
      food    = {'biCiw','biCim'};

    case 'Baikaiobia_guttata'
      climate = {'Dwc'};
      ecozone = {'THp'}; % Lake Baikal
      habitat = {'0iFl'};
      embryo  = {'Fs'};
      migrate = {};
      food    = {'biD'};

    case 'Magellania_fragilis'
      climate = {'ME'};
      ecozone = {'MS'};
      habitat = {'0iMb'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biP'};

    case 'Phoronis_pallida'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biP'};

    case 'Flustra_foliacea'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biP'};

    case 'Myzostoma_cirriferum'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMc','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjD','jiPz'}; % commensales on rosy featherstar Antedon bifida 

    case 'Neanthes_arenaceodentata'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMc','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjP','jiCi'}; 

    case 'Capitella_teleta'
      climate = {'MC'};
      ecozone = {'MAN','MPNE'};
      habitat = {'0jMc','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjP','jiCi'}; 

    case 'Arenicola_marina'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMc','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPp','bjD'}; 

    case 'Urechis_caupo'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMc','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPp','bjD'}; 

    case 'Dendrobaena_octaedra'
      climate = {'C'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biD'}; 

    case 'Lumbricus_terrestris'
      climate = {'B','C'};
      ecozone = {'TP','TA','TN','TH'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biD'}; 

    case 'Octolasion_cyaneum'
      climate = {'C'};
      ecozone = {'THp','TAz'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biD'}; 

    case 'Aporrectodea_longa'
      climate = {'C'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biD'}; 

    case 'Eisenia_fetida'
      climate = {'C'};
      ecozone = {'TP','TN','TA','TH'}; % originally in Europe only
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biD'}; 

    case 'Barbronia_weberi'
      climate = {'A','B'};
      ecozone = {'TPi','TA'}; 
      habitat = {'0iFm'};
      embryo  = {'Fs'};
      migrate = {};
      food    = {'biTim','biCim'}; 

    case 'Lepidochitona_cinerea'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPp','jiHa','jiD'};

    case 'Mya_arenaria'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Arctica_islandica'
      climate = {'MC','ME'};
      ecozone = {'MAN','MN'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Sphaerium_corneum'
      climate = {'C','D'};
      ecozone = {'THp'};
      habitat = {'0iFm','0iFp'};
      embryo  = {'Fbb'};
      migrate = {};
      food    = {'biPp'};

    case 'Tridacna_gigas'
      climate = {'MA'};
      ecozone = {'MPSW','MI'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','jiAa'};

    case 'Cerastoderma_edule'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Cerastoderma_glaucum'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Spisula_subtruncata'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Spisula_solidissima'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Macoma_balthica'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPp','jiD'};

    case 'Thyasira_cf_gouldi'
      climate = {'MC','ME'};
      ecozone = {'MAN','MPE','MN'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Parathyasira_sp'
      climate = {'ME'};
      ecozone = {'MN'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Ruditapes_philippinarum'
      climate = {'MB','MC'};
      ecozone = {'MANE','MPNW'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Ruditapes_decussatus'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Dosinia_exoleta'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Mercenaria_mercenaria'
      climate = {'MA','MB','MC'};
      ecozone = {'MAW'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Mytilopsis_sallei'
      climate = {'A','B'};
      ecozone = {'TN','TPi','TA','TH'}; % orgininally in central and south Am
      habitat = {'0iFe'};
      embryo  = {'Fp'};
      migrate = {};
      food    = {'piPp'};

    case 'Ensis_directus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Echyridella_menziesii'
      climate = {'Cfb'};
      ecozone = {'TAz'};
      habitat = {'0jFp','jiFr','jiFl'};
      embryo  = {'Fbb'};
      migrate = {};
      food    = {'bjTvf','jiPp'};

    case 'Anodonta_cygnea'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiFr','jiFl'};
      embryo  = {'Fbb'};
      migrate = {};
      food    = {'bjTvf','jiPp'};

    case 'Westralunio_carteri'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0jFp','jiFr','jiFl'};
      embryo  = {'Fbb'};
      migrate = {};
      food    = {'bjTvf','jiPp'};

    case 'Argopecten_purpuratus'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Pecten_maximus'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Placopecten_magellanicus'
      climate = {'MC','ME'};
      ecozone = {'MANW'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Chlamys_islandica'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Magallana_gigas'
      climate = {'MC'};
      ecozone = {'MPE','MPSE','MAN'}; % original in pacific east cost
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Crassostrea_virginica'
      climate = {'MB','MC'};
      ecozone = {'MAW'}; 
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Ostrea_edulis'
      climate = {'MC'};
      ecozone = {'MANE'}; 
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Perna_viridis'
      climate = {'MA','MB'};
      ecozone = {'MPSE','MAW'}; % originally SE Pacific
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Mytilus_edulis'
      climate = {'MC','ME'};
      ecozone = {'MAN','MPN','MN'}; 
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Mytilus_californianus'
      climate = {'MC'};
      ecozone = {'MPE'}; 
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Mytilus_galloprovincialis'
      climate = {'MB'};
      ecozone = {'MAm','MPE'}; % native in the mediterranean 
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Mytilus_trossulus'
      climate = {'MC','ME'};
      ecozone = {'MAN','MPN','MN'}; 
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Brachidontes_pharaonis'
      climate = {'MA','MB'};
      ecozone = {'MI','MIr','MAm'}; % invading the mediterranean
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Mytilaster_minimus'
      climate = {'MB'};
      ecozone = {'MAm'}; 
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Septifer_virgatus'
      climate = {'MB'};
      ecozone = {'MPW'}; 
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Pinctada_margaritifera'
      climate = {'MA'};
      ecozone = {'MI'}; 
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPp'};

    case 'Patella_vulgata'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Gibbula_umbilicalis'
      climate = {'MB','MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Phorcus_lineatus'
      climate = {'MB','MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Urosalpinx_cinerea'
      climate = {'MB','MC'};
      ecozone = {'MAW'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPz','jiCim'};

    case 'Buccinum_undatum'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPz','jiCim'};

    case 'Adelomelon_brasiliana'
      climate = {'MC'};
      ecozone = {'MASW'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPz','jiCim'};

    case 'Littorina_littorea'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Crepidula_fornicata'
      climate = {'MC'};
      ecozone = {'MAN'}; % native to MANE
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'biPp'};

    case 'Euspira_nitida'
      climate = {'MB','MC'};
      ecozone = {'MANE','MAm'}; 
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Potamopyrgus_antipodarum'
      climate = {'Cfb'};
      ecozone = {'TAz'}; 
      habitat = {'0jFl','jiFc'};
      embryo  = {'Fp'};      
      migrate = {};
      food    = {'biHa'};

    case 'Aplysia_californica'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0jMp','jiMb','jiMi'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPp','jiHa'};

    case 'Clione_limacina'
      climate = {'MC','ME'};
      ecozone = {'MPN','MAN','MN'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'biCim'}; % only preys on Limacina

    case 'Cuthona_nana'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};      
      migrate = {};
      food    = {'bjPz','jiCih'}; % only prays on Hydractinia echinata

    case 'Lymnaea_stagnalis'
      climate = {'Cfa','Cfb','Dfa','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fs'};      
      migrate = {};
      food    = {'biHa','biHl'};

    case 'Stagnicola_palustris'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fs'};      
      migrate = {};
      food    = {'biHa','biHl'};

    case 'Biomphalaria_glabrata'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fs'};      
      migrate = {};
      food    = {'biHa','biHl'};

    case 'Planorbis_planorbis'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFl','0iFp','0iFm'};
      embryo  = {'Fs'};      
      migrate = {};
      food    = {'biHa','biHl'};

    case 'Achatina_achatina'
      climate = {'A'};
      ecozone = {'TPa'};
      habitat = {'0iTf','0iTi','0iTg'};
      embryo  = {'Tt'};      
      migrate = {};
      food    = {'biHl'};

    case 'Ambigolimax_valentianus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTi','0iTg'};
      embryo  = {'Tt'};      
      migrate = {};
      food    = {'biHl'};

    case 'Cornu_aspersum'
      climate = {'BSk','Csa','Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTi','0iTg'};
      embryo  = {'Tt'};      
      migrate = {};
      food    = {'biHl'};

    case 'Helix_pomatia'
      climate = {'BSk','Csa','Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTi','0iTg'};
      embryo  = {'Tt'};      
      migrate = {};
      food    = {'biHl'};

    case 'Cernuella_virgata'
      climate = {'BSk','Csa','Cfb'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTi','0iTg'};
      embryo  = {'Tt'};      
      migrate = {};
      food    = {'biHl'};

    case 'Nautilus_pompilius'
      climate = {'MA'};
      ecozone = {'MPE'};
      habitat = {'0iMp','0iMr'};
      embryo  = {'Ms'};      
      migrate = {};
      food    = {'biCik','biCvf'};

    case 'Sepia_officinalis'
      climate = {'MB','MC'};
      ecozone = {'MANE','MAm'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Ms'};      
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Sepiola_atlantica'
      climate = {'MB','MC'};
      ecozone = {'MANE','MAm'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Ms'};      
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Sepietta_obscura'
      climate = {'MB'};
      ecozone = {'MANE','MAm'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Ms'};      
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Euprymna_hyllebergi'
      climate = {'MA'};
      ecozone = {'MIE'};
      habitat = {'0iMc'};
      embryo  = {'Ms'};      
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Doryteuthis_pealeii'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mc'};      
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Octopus_cyanea'
      climate = {'MA'};
      ecozone = {'MI','MPSW'};
      habitat = {'0jMc','jiMr'};
      embryo  = {'Mc'};      
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Octopus_maya'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0jMc','jiMr'};
      embryo  = {'Mc'};      
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Octopus_vulgaris'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0jMc','jiMb'};
      embryo  = {'Mc'};      
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Octopus_mimus'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0jMc','jiMb'};
      embryo  = {'Mc'};      
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Ferosagitta_hispida'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Macrobiotus_hufelandii'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Hypsibius_convergens'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Ramazzottius_oberhaeuseri'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Milnesium_tardigradum'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Caenorhabditis_elegans'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Pycnogonum_litorale'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Smeringurus_mesaensis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Rhizoglyphus_robini'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Aglaoctenus_lagotis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Tetragnatha_versicolor'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Cyprideis_torosa'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Triops_longicaudatus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Diaphanosoma_brachyurum'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Bosmina_longirostris'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Eubosmina_coregoni'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Chydorus_sphaericus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Pleuroxus_aduncus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Pleuroxus_striatus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Ceriodaphnia_pulchella'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Ceriodaphnia_dubia'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Daphnia_cucullata'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Daphnia_longispina'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Daphnia_hyalina'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Daphnia_magna'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Daphnia_pulex'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Scapholeberis_mucronata'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Simocephalus_serrulatus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Moina_macrocopa'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Leptodora_kindtii'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Pollicipes_polymerus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Amphibalanus_amphitrite'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Argulus_coregoni'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Nitokra_spinipes'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Acanthocyclops_robustus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Cyclops_vicinus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Mesocyclops_leukarti'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Calanus_sinicus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Eurytemora_affinis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Lepeophtheirus_salmonis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Leptomysis_lingvura'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Hemimysis_speluncola'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Mysis_mixta'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Neomysis_integer'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Praunus_flexuosus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Asellus_aquaticus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Porcellio_scaber'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Corophium_volutator'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Gammarus_fossarum'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Gammarus_pseudolimnaeus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Gammarus_pulex'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Gammarus_roeselii'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Dikerogammarus_villosus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Euphausia_superba'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Meganyctiphanes_norvegica'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Pandalus_borealis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Dichelopandalus_bonnieri'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Palaemonetes_pugio'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Palaemonetes_varians'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Palaemon_elegans'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Crangon_crangon'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Astacus_astacus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Pacifastacus_leniusculus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Homarus_gammarus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Homarus_americanus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Paralithodes_camtschaticus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Pagurus_bernhardus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Birgus_latro'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Carcinus_maenas'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Charybdis_bimaculata'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Dissodactylus_primitivus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Cancer_pagurus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Eriphia_verrucosa'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Macrocheira_kaempferi'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Hyas_coarctatus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Chionoecetes_opilio'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Isotoma_viridis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Folsomia_candida'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Tomocerus_minor'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Entomobrya_nivalis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Orchesella_cincta'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Lepidocyrtus_cyaneus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Lepisma_saccharina'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Ecdyonurus_dispar'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Rhithrogena_semicolorata'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Epeorus_assimilis'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Oligoneuriella_rhenana'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Baetis_rhodani'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Cloeon_dipterum'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Habrophlebia_lauta'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Locusta_migratoria'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Acyrthosiphon_pisum'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Notonecta_maculata'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Aedes_aegypti'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Chironomus_riparius'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Chaoborus_americanus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Chaoborus_crystallinus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Plodia_interpunctella'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Bombyx_mori'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Manduca_sexta'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Venturia_canescens'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Onthophagus_taurus'
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};

    case 'Ophiura_ophiura'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjP','biB','biD','jiCi'};

    case 'Ophiura_albida'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjP','bjB','biD','jiCi'};

    case 'Amphiura_filiformis'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjB','biD'};

    case 'Asterias_rubens'
      climate = {'MC'};
      ecozone = {'MANE','MAW'};
      habitat = {'0jMcp','jiMb','JiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCi'};

    case 'Pisaster_ochraceus'
      climate = {'MC'};
      ecozone = {'MPE'};
      habitat = {'0jMcp','jiMb','JiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCi'};

    case 'Astropecten_aranciacus'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCim'};

    case 'Astropecten_irregularis'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCim'};

    case 'Luidia_sarsii'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCie'};

    case 'Archaster_typicus'
      climate = {'MA'};
      ecozone = {'MPE'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCi','biD'};

    case 'Acanthaster_planci'
      climate = {'MA'};
      ecozone = {'MP','MI'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCia'};

    case 'Protoreaster_nodosus'
      climate = {'MA'};
      ecozone = {'MP','MI'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCia','bjCis'};

    case 'Crossaster_papposus'
      climate = {'MC'};
      ecozone = {'MPN','MAN'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCie','bjO'};

    case 'Asterina_gibbosa'
      climate = {'MB','MC'};
      ecozone = {'MANE','MAm'};
      habitat = {'0jMcp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjCi'};

    case 'Odontaster_validus'
      climate = {'ME'};
      ecozone = {'MS'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz','bjO'};

    case 'Echinus_esculentus'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Gracilechinus_affinis'
      climate = {'MC','ME'};
      ecozone = {'MAN','MN'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Sterechinus_neumayeri'
      climate = {'ME'};
      ecozone = {'MS'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Mesocentrotus_franciscanus'
      climate = {'MC'};
      ecozone = {'MPE'};
      habitat = {'0jMcp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Strongylocentrotus_purpuratus'
      climate = {'MC'};
      ecozone = {'MPE'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Strongylocentrotus_droebachiensis'
      climate = {'MC','ME'};
      ecozone = {'MPN','MAN','MN'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Lytechinus_variegatus'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Paracentrotus_lividus'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Psammechinus_miliaris'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMcp','jiMb','jiMi'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa','bjCi'};

    case 'Echinocardium_cordatum'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjD'};

    case 'Clypeaster_subdepressus'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjD'};

    case 'Holothuria_scabra'
      climate = {'MA'};
      ecozone = {'MI','MP'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa'};

    case 'Stichopus_vastus'
      climate = {'MA'};
      ecozone = {'MI'};
      habitat = {'0jMcp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP','bjHa'};

    case 'Branchiostoma_floridae'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP'};

    case 'Oikopleura_dioica'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPn'};

    case 'Oikopleura_longicauda'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPn'};

    case 'Thalia_democratica'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP'};

    case 'Ciona_intestinalis'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0jMp','jiMb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biP'};

    case 'Myxine_glutinosa'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biSvf'};

    case 'Eptatretus_stoutii'
      climate = {'MC'};
      ecozone = {'MPE'};
      habitat = {'0iMd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biSvf'};

    case 'Lampetra_planeri'
      climate = {'Cf'};
      ecozone = {'THp'};
      habitat = {'0iFc'};
      embryo  = {'Ft'};
      migrate = {'Mp'};
      food    = {'biD'};

    case 'Callorhinchus_capensis'
      climate = {'MB'};
      ecozone = {'MASE','MISW'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Raja_brachyura'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Raja_clavata'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Raja_montagui'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Raja_rhina'
      climate = {'MC'};
      ecozone = {'MANW','MASW','MPNE','MPSE'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Beringraja_binoculata'
      climate = {'MC'};
      ecozone = {'MPN'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Leucoraja_erinacea'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Leucoraja_naevus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Rhinobatos_productus'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Trygonoptera_personata'
      climate = {'MB'};
      ecozone = {'MIE'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi'};

    case 'Manta_birostris'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biPz'};

    case 'Torpedo_marmorata'
      climate = {'MB','MC'};
      ecozone = {'MAE','MAm'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Pristis_pectinata'
      climate = {'MA'};
      ecozone = {'MA'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {'Ma'};
      food    = {'biCi','biCvf'};

    case 'Squatina_californica'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Pristiophorus_cirratus'
      climate = {'MB'};
      ecozone = {'MIE'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Squalus_acanthias'
      climate = {'MB','MC'};
      ecozone = {'MAN','MAm','MAS'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCi','biCvf'};

    case 'Somniosus_microcephalus'
      climate = {'ME'};
      ecozone = {'MN','MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf','biCvb','biCvm'};

    case 'Etmopterus_perryi'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0iMpb'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Chlamydoselachus_anguineus'
      climate = {'MC'};
      ecozone = {'MIW','MPW','MPE','MAE'};
      habitat = {'0iMdb'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Heptranchias_perlo'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMdb'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Heterodontus_portusjacksoni'
      climate = {'MB'};
      ecozone = {'MIE'};
      habitat = {'0iMd'};
      embryo  = {'Ms'};
      migrate = {'Mo'};
      food    = {'biCi','biCvf'};

    case 'Chiloscyllium_plagiosum'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0iMr','0iMd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Rhincodon_typus'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Sphyrna_lewini'
      climate = {'MA'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCic','biCvf'};

    case 'Scyliorhinus_canicula'
      climate = {'MB','MC'};
      ecozone = {'MANE','MAm'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Carcharhinus_leucas'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iFl','0iMc','0iMr'};
      embryo  = {'Mv'};
      migrate = {'Ma'};
      food    = {'biCi','biCvf','biCvr','biSvm'};

    case 'Carcharhinus_plumbeus'
      climate = {'MB'};
      ecozone = {'MC'};
      habitat = {'0iMcp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Galeocerdo_cuvier'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iMcp'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCi','biCvf','biCvr','biCva','biCvm'};

    case 'Rhizoprionodon_acutus'
      climate = {'MA','MB'};
      ecozone = {'MAE','MI','MPW'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {'Ma'};
      food    = {'biCi','biCvf'};

    case 'Prionace_glauca'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCi','biCvf','biSvm'};

    case 'Carcharias_taurus'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iMr'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCi','biCvf'};

    case 'Lamna_nasus'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCic','biCvf'};

    case 'Isurus_oxyrinchus'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCic','biCvf'};

    case 'Carcharodon_carcharias'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Mo'};
      food    = {'biCic','biCvf','biCvb','biCvm'};

    case 'Erpetoichthys_calabaricus'
      climate = {'Aw'};
      ecozone = {'TPa'};
      habitat = {'0iFe'};
      embryo  = {'Fs'};
      migrate = {};
      food    = {'biCi'};

    case 'Acipenser_ruthenus'
      climate = {'Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFr'};
      embryo  = {'Fg'};
      migrate = {'Mp'};
      food    = {'biCi'};

    case 'Acipenser_sturio'
      climate = {'MC'};
      ecozone = {'MAE','THp'};
      habitat = {'0iMcd','0iFr'};
      embryo  = {'Fg'};
      migrate = {'Ma','Mda'};
      food    = {'biCi'};

    case 'Amia_calva'
      climate = {'Dfa','Cfb'};
      ecozone = {'THn'};
      habitat = {'0iFm'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Atractosteus_spatula'
      climate = {'MB','Cfb'};
      ecozone = {'THn'};
      habitat = {'0iFe','0iFm','0iMm'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCi','biCvr','biCvb','biCvm'};

    case 'Megalops_atlanticus'
      climate = {'MA','MB'};
      ecozone = {'MAW'};
      habitat = {'0iMr','0iMcp'};
      embryo  = {'Fp','Mp'};
      migrate = {'Ma'};
      food    = {'bpCi','piCvf'};

    case 'Albula_vulpes'
      climate = {'MA','MB'};
      ecozone = {'MAW','MPE'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {'Ma'};
      food    = {'biPz'};

    case 'Notacanthus_chemnitzii'
      climate = {'MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMpm','0iMpb'};
      embryo  = {'Mpm'};
      migrate = {};
      food    = {'biCia'};

    case 'Anguilla_anguilla'
      climate = {'MB','MC','Cfb'};
      ecozone = {'MAN','THp'};
      habitat = {'0jMpe','jpFl','jpFp','jpFr','piMd'};
      embryo  = {'Mpe'};
      migrate = {'Mdc'};
      food    = {'bjPz','jiCi'};

    case 'Hiodon_tergisus'
      climate = {'Dwa'};
      ecozone = {'THn'};
      habitat = {'0jFl','0jFr'};
      embryo  = {'Fpe'};
      migrate = {};
      food    = {'biCi'};

    case 'Osteoglossum_bicirrhosum'
      climate = {'MA'};
      ecozone = {'TN'};
      habitat = {'0iFr','0iFm','0iFl'};
      embryo  = {'Fbm'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Notopterus_notopterus'
      climate = {'Am'};
      ecozone = {'TPi'};
      habitat = {'0iFr'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi'};

    case 'Arapaima_gigas'
      climate = {'Af'};
      ecozone = {'TN'};
      habitat = {'0iFl','0iFr'};
      embryo  = {'Fnm'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Sardina_pilchardus'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0iMpe'};
      embryo  = {'Mpe'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Sardinella_aurita'
      climate = {'MB'};
      ecozone = {'MAW','MAE'};
      habitat = {'0iMpe','0iMr'};
      embryo  = {'Mpe'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Sprattus_sprattus'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0iMpe'};
      embryo  = {'Mpe'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Clupea_harengus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMpe'};
      embryo  = {'Mpe'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Alosa_alosa'
      climate = {'MC'};
      ecozone = {'MAE','THp'};
      habitat = {'jiMpe','piFr','0jFr'};
      embryo  = {'Fg'};
      migrate = {'Ma'};
      food    = {'biPz'};

    case 'Alosa_sapidissima'
      climate = {'MC'};
      ecozone = {'MAW'};
      habitat = {'0iMpe','piFr'};
      embryo  = {'Fg'};
      migrate = {'Mda'};
      food    = {'biPz'};

    case 'Engraulis_encrasicolus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0iMcp'};
      embryo  = {'Fpe'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Chirocentrus_dorab'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0iMpe'};
      embryo  = {'Mpe'};
      migrate = {'Ma'};
      food    = {'biPz','jiCvf'};

    case 'Alepocephalus_bairdii'
      climate = {'ME'};
      ecozone = {'MAN','MN'};
      habitat = {'0iMdb'};
      embryo  = {'Mpb'};
      migrate = {};
      food    = {'biCij'};

    case 'Chanos_chanos'
      climate = {'MA'};
      ecozone = {'MIE','MPW','TPi'};
      habitat = {'0iMm','0iFm','0iFe'};
      embryo  = {'Mpe'};
      migrate = {'Ma'};
      food    = {'bjCi','bjPz','jiB'};

    case 'Cobitis_taenia'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFm','0iFp'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi'};

    case 'Rhodeus_amarus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFm','0iFp'};
      embryo  = {'Fbb'};
      migrate = {};
      food    = {'bjCi','jiHl'};

    case 'Barbus_barbus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFr'};
      embryo  = {'Fg'};
      migrate = {};
      food    = {'biCi'};

    case 'Luciobarbus_sclateri'
      climate = {'Csb'};
      ecozone = {'THp'};
      habitat = {'0iFr'};
      embryo  = {'Fs'};
      migrate = {};
      food    = {'biCi'};

    case 'Gobio_gobio'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFc'};
      embryo  = {'Fs'};
      migrate = {'Mp'};
      food    = {'biCi'};

    case 'Cyprinus_carpio'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFp','0iFm'};
      embryo  = {'Fs','Fh'};
      migrate = {'Mp'};
      food    = {'biCi','biHl','biD'};

    case 'Carassius_carassius'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFp','0iFm','0iFl'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi','biHl','biD'};

    case 'Danio_rerio'
      climate = {'Am'};
      ecozone = {'TPi'};
      habitat = {'0iFp','0iFm'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCi'};

    case 'Abramis_brama'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFl'};
      embryo  = {'Fs','Fh'};
      migrate = {'Mp'};
      food    = {'biCi','biHl'};

    case 'Pimephales_promelas'
      climate = {'Cfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iFc','0iFp'};
      embryo  = {'Fnm'};
      migrate = {'Mp'};
      food    = {'biD','biHa'};

    case 'Chondrostoma_nasus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFr'};
      embryo  = {'Fg'};
      migrate = {'Mp'};
      food    = {'biCi','jiD'};

    case 'Tinca_tinca'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFp','0iFm'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi','jiHl','jiD'};

    case 'Rutilus_rutilus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFp','0iFm'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi','jiHl','jiD'};

    case 'Alburnoides_bipunctatus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFr'};
      embryo  = {'Fg'};
      migrate = {'Mp'};
      food    = {'biCii','biSii'};

    case 'Blicca_bjoerkna'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFl','0iFr','0iFm'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi'};

    case 'Hydrocynus_vittatus'
      climate = {'Af','Am'};
      ecozone = {'TPa'};
      habitat = {'0iFr','0iFl'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'bjCi','jiCvf'};

    case 'Colossoma_macropomum'
      climate = {'Af','Am'};
      ecozone = {'TN'};
      habitat = {'0iFm'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'bjPz','jiCi','jiHl'};

    case 'Hyphessobrycon_pulchripinnis'
      climate = {'Af'};
      ecozone = {'TN'};
      habitat = {'0iFr'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCi'};

    case 'Electrophorus_electricus'
      climate = {'Af','Am'};
      ecozone = {'TN'};
      habitat = {'0iFm'};
      embryo  = {'Fnm'};
      migrate = {};
      food    = {'biCvf'};

    case 'Silurus_glanis'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFl','0iFr'};
      embryo  = {'Fnm'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Pangasianodon_hypophthalmus'
      climate = {'Am'};
      ecozone = {'TPi'};
      habitat = {'0iFr'};
      embryo  = {'Fs'};
      migrate = {'Mp'};
      food    = {'biCi','biCvf'};

    case 'Ictalurus_punctatus'
      climate = {'Cfa','Dfa'};
      ecozone = {'THn'};
      habitat = {'0iFr'};
      embryo  = {'Fs'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Corydoras_aeneus'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iFm'};
      embryo  = {'Fc','Fh'};
      migrate = {};
      food    = {'biCi','jiHl'};

    case 'Lepidogalaxias_salamandroides'
      climate = {'BWh'};
      ecozone = {'TA'};
      habitat = {'0iFp'};
      embryo  = {'Ft'};
      migrate = {'TW'};
      food    = {'biCi'};

    case 'Argentina_silus'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0iMdb'};
      embryo  = {'Mpm'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Galaxias_paucispondylus'
      climate = {'Cfa'};
      ecozone = {'TAz'};
      habitat = {'0iFc'};
      embryo  = {'Fg'};
      migrate = {};
      food    = {'biCi'};

    case 'Galaxias_prognathus'
      climate = {'Cfa'};
      ecozone = {'TAz'};
      habitat = {'0iFc'};
      embryo  = {'Fg'};
      migrate = {};
      food    = {'biCi'};

    case 'Galaxias_maculatus'
      climate = {'Cfa','BWk'};
      ecozone = {'TN','TA'};
      habitat = {'jiFc','jiFl','0jMcp'};
      embryo  = {'Th'}; % this is not a typo
      migrate = {'Mdc'};
      food    = {'biCi'};

    case 'Thymallus_thymallus'
      climate = {'Cfa','Cfb','Dfa'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFc'};
      embryo  = {'Fg'};
      migrate = {};
      food    = {'biCi'};

    case 'Oncorhynchus_tshawytscha'
      climate = {'MC','ME'};
      ecozone = {'MPN'};
      habitat = {'0jFr','jiMpe'};
      embryo  = {'Fg'};
      migrate = {'Mda'};
      food    = {'bjCi','jiCic','jiCvf'};

    case 'Oncorhynchus_mykiss'
      climate = {'MC'};
      ecozone = {'MPN'};
      habitat = {'0jFr','jiMpe'};
      embryo  = {'Fg'};
      migrate = {'Mda'};
      food    = {'bjCi','jiCic','jiCvf'};

    case 'Salmo_trutta'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jFr','jiMpe'};
      embryo  = {'Fg'};
      migrate = {'Mda'};
      food    = {'bjCi','jiCic','jiCvf'};

    case 'Salvelinus_alpinus'
      climate = {'MC','ME'};
      ecozone = {'MAN','MN'};
      habitat = {'0jFr','jiMpe'};
      embryo  = {'Fg'};
      migrate = {'Mda'};
      food    = {'biCi','jiCvf'};

    case 'Coregonus_albula'
      climate = {'Dfc'};
      ecozone = {'MAb'};
      habitat = {'0jFr','jiMpe'};
      embryo  = {'Fg','Fs'};
      migrate = {'Mda'};
      food    = {'biPz'};

    case 'Coregonus_lavaretus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jFr','jiMpe'};
      embryo  = {'Fg'};
      migrate = {'Ma'};
      food    = {'biPz'};

    case 'Esox_lucius'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iFl'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'bjCi','jiCvf'};

    case 'Osmerus_mordax'
      climate = {'MC'};
      ecozone = {'MPN','MAN'};
      habitat = {'0jFr','jiMcp'};
      embryo  = {'Fs','Fg','Fh'};
      migrate = {'Ma'};
      food    = {'biPz','biCi'};

    case 'Mallotus_villosus'
      climate = {'MC','ME'};
      ecozone = {'MPN','MAN','MN'};
      habitat = {'0jFr','jiMcp'};
      embryo  = {'Fs'};
      migrate = {'Ma'};
      food    = {'biPz'};

    case 'Maurolicus_muelleri'
      climate = {'MB','MC'};
      ecozone = {'MC','MAm'};
      habitat = {'0iMpm'};
      embryo  = {'Mpf'};
      migrate = {};
      food    = {'biPz'};

    case 'Harpadon_nehereus'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0iMpb'};
      embryo  = {'Ms'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Saurida_undosquamis'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0jMp','jiMc','jiMr'};
      embryo  = {'Mp'};
      migrate = {'Ma'};
      food    = {'bjPz','jiCi'};

    case 'Lampanyctodes_hectoris'
      climate = {'MC'};
      ecozone = {'MAS','MPS','MIS'};
      habitat = {'0iMm'};
      embryo  = {'Mpe'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Percopsis_omiscomaycus'
      climate = {'Dfc'};
      ecozone = {'THn'};
      habitat = {'0iFl','0iFr','0iFc'};
      embryo  = {'Fs','Fg'};
      migrate = {};
      food    = {'biCi'};

    case 'Zeus_faber'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0iMc'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bpPz','bpCi'};

    case 'Merluccius_merluccius'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jpCi','piCvf'};

    case 'Raniceps_raninus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCie','jiCvf'};

    case 'Coryphaenoides_rupestris'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMpb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Coryphaenoides_acrolepis'
      climate = {'MC'};
      ecozone = {'MPN'};
      habitat = {'0jMp','jiMpb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Trachyrincus_scabrus'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMpb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Gaidropsarus_guttatus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','0iMd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Lota_lota'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iFl','0iFr'};
      embryo  = {'Fp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Brosme_brosme'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMcp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','piCvf'};

    case 'Molva_molva'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','piCvf'};

    case 'Molva_dypterygia'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','piCvf'};

    case 'Pseudophycis_bachus'
      climate = {'MB'};
      ecozone = {'MPS'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Trisopterus_luscus'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMc'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Trisopterus_minutus'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMcp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Gadiculus_argenteus'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','0iMcp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Micromesistius_poutassou'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMpm'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCic','jiCvf'};

    case 'Pollachius_virens'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Melanogrammus_aeglefinus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','0iMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Merlangius_merlangus'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMc'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Gadus_morhua'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMc'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Boreogadus_saida'
      climate = {'ME'};
      ecozone = {'MN'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Polymixia_nobilis'
      climate = {'MA'};
      ecozone = {'MA'};
      habitat = {'0jMp','jiMdb'};
      embryo  = {'Mp'}; % guess, since eggs are unknown
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Hoplostethus_atlanticus'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0jMp','jiMpb'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Holocentrus_adscensionis'
      climate = {'MA'};
      ecozone = {'MA'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Carapus_bermudensis'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biCi','jiTie'};

    case 'Genypterus_blacodes'
      climate = {'MC'};
      ecozone = {'MAS'};
      habitat = {'0jMp','0iMdb'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiTie'};

    case 'Opsanus_tau'
      climate = {'MB'};
      ecozone = {'MAW'};
      habitat = {'0iMr','0iMcd'};
      embryo  = {'Mnm'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Halobatrachus_didactylus'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0iMcd'};
      embryo  = {'Mnm'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Kurtus_gulliveri'
      climate = {'MA'};
      ecozone = {'MIE'};
      habitat = {'0iMm'};
      embryo  = {'Mbm'};
      migrate = {};
      food    = {'biCi'};

    case 'Ostorhinchus_doederleini'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0iMr'};
      embryo  = {'Mbm'};
      migrate = {};
      food    = {'biCi'};

    case 'Siphamia_tubifer'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0iMr'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi','biPz'};

    case 'Pomatoschistus_minutus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jFe','jiMcd','JiMi'};
      embryo  = {'Ms'};
      migrate = {'Ma'};
      food    = {'biCi','biPz'};

    case 'Rhinogobius_brunneus'
      climate = {'MC'};
      ecozone = {'MPNW'};
      habitat = {'0jFe','jiMcd'};
      embryo  = {'Ms'};
      migrate = {'Ma'};
      food    = {'biCi'};

    case 'Gobius_niger'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0iMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'biCi'};

    case 'Gobius_paganellus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jFe','jiMcd'};
      embryo  = {'Ms'};
      migrate = {'Ma'};
      food    = {'biCi','biPz'};

    case 'Hippocampus_whitei'
      climate = {'MA'};
      ecozone = {'MPSW'};
      habitat = {'0iMcd','0iMr'};
      embryo  = {'Mbm'};
      migrate = {};
      food    = {'biCi','biPz'};

    case 'Macroramphosus_scolopax'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0pMp','piMcd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biCi','biPz'};

    case 'Macroramphosus_gracilis'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0pMp','piMpe'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biCi','biPz'};

    case 'Thunnus_orientalis'
      climate = {'MA','MB','MC'};
      ecozone = {'MA'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCic','jiCvf'};

    case 'Thunnus_thynnus'
      climate = {'MA','MB','MC'};
      ecozone = {'MA'};
      habitat = {'0iMpe'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'biPz','jiCvf'};

    case 'Scomber_scombrus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMcp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Trichiurus_nanhaiensis'
      climate = {'MA'};
      ecozone = {'MPW'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Mastacembelus_erythrotaenia'
      climate = {'Am'};
      ecozone = {'TPi'};
      habitat = {'0iFm'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCii','biHl'};

    case 'Channa_punctata'
      climate = {'Am'};
      ecozone = {'TPi'};
      habitat = {'0iFm','0iFp'};
      embryo  = {'Fp'};
      migrate = {'Mp'};
      food    = {'biCi'};

    case 'Leptomelanosoma_indicum'
      climate = {'MA'};
      ecozone = {'MIN'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Ma'};
      food    = {'bjPz','jiCi','piCvf'};

    case 'Coryphaena_hippurus'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0jMp','jiMcp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCic'};

    case 'Trachurus_trachurus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Seriola_dumerili'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCvf'};

    case 'Sphyraena_barracuda'
      climate = {'MA'};
      ecozone = {'MC'};
      habitat = {'0jMm','jiMr','jiMpe'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCvf','jiCic'};

    case 'Xiphias_gladius'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCvf','jiCic'};

    case 'Makaira_nigricans'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCvf','jiCic'};

    case 'Centropomus_undecimalis'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0iMm','jiMr'};
      embryo  = {'Mp'};
      migrate = {'Ma'};
      food    = {'bjPz','jiCvf','jiCi'};

    case 'Solea_solea'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Psetta_maxima'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Bothus_podas'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Arnoglossus_laterna'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Paralichthys_californicus'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Hippoglossus_hippoglossus'
      climate = {'MC','ME'};
      ecozone = {'MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Hippoglossus_stenolepis'
      climate = {'MC','ME'};
      ecozone = {'MPN'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Reinhardtius_hippoglossoides'
      climate = {'MC'};
      ecozone = {'MPN','MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Glyptocephalus_cynoglossus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Microstomus_kitt'
      climate = {'MC'};
      ecozone = {'MANE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Hypsopsetta_guttulata'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Pleuronectes_platessa'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Limanda_limanda'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Limanda_ferruginea'
      climate = {'MC'};
      ecozone = {'MANW'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Platichthys_stellatus'
      climate = {'MC'};
      ecozone = {'MPN'};
      habitat = {'0jFe','jiMcd'};
      embryo  = {'Fp'};
      migrate = {'Mdc'};
      food    = {'bjPz','jiCi'};

    case 'Oreochromis_niloticus'
      climate = {'Am','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iFl','0iFr'};
      embryo  = {'Fbf'};
      migrate = {'Mp'};
      food    = {'biHa','biPz'};

    case 'Belone_belone'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'biMcp'};
      embryo  = {'Ms'};
      migrate = {'Mo'};
      food    = {'biCvf'};

    case 'Hirundichthys_affinis'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0iMcp'};
      embryo  = {'Mpe'};
      migrate = {'Mo'};
      food    = {'biPz'};

    case 'Oryzias_latipes'
      climate = {'Aw','Cfa'};
      ecozone = {'TPi','THp'};
      habitat = {'0jFm','jiMm'};
      embryo  = {'Fs','Fh'};
      migrate = {'Mda','Ma'};
      food    = {'biCi'};

    case 'Kryptolebias_marmoratus'
      climate = {'Af','Am','Cfa'};
      ecozone = {'TN'};
      habitat = {'0iFm','0iMm'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCi'};

    case 'Poecilia_reticulata'
      climate = {'Af','Am','Cfa'};
      ecozone = {'TN'};
      habitat = {'0iFm','0iMm'};
      embryo  = {'Fv'};
      migrate = {};
      food    = {'biCi'};

    case 'Aphanius_fasciatus'
      climate = {'Csa','MB'};
      ecozone = {'MAm'};
      habitat = {'0iFm','0iMm'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCi'};

    case 'Nothobranchius_furzeri'
      climate = {'Cwc'};
      ecozone = {'TPa'};
      habitat = {'0iFpe'};
      embryo  = {'Ft'};
      migrate = {};
      food    = {'biCi'};

    case 'Nothobranchius_kadleci'
      climate = {'Am'};
      ecozone = {'TPa'};
      habitat = {'0iFpe'};
      embryo  = {'Ft'};
      migrate = {};
      food    = {'biCi'};

    case 'Fundulopanchax_gardneri'
      climate = {'Am'};
      ecozone = {'TPa'};
      habitat = {'0iFp','0iFm'};
      embryo  = {'Fs'};
      migrate = {};
      food    = {'biCi'};

    case 'Atherina_presbyter'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0iMcp'};
      embryo  = {'Fc','Fh'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Chromis_chromis'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0iMc','0iMr'};
      embryo  = {'Mnm'};
      migrate = {};
      food    = {'biCi'};

    case 'Pomacentrus_amboinensis'
      climate = {'MC'};
      ecozone = {'MIE','MPW'};
      habitat = {'0iMr'};
      embryo  = {'Mnm'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Pomacentrus_coelestis'
      climate = {'MC'};
      ecozone = {'MIE','MPW'};
      habitat = {'0iMr'};
      embryo  = {'Mnm'};
      migrate = {};
      food    = {'biCi'};

    case 'Chelon_labrosus'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'jiFm','0iMm'};
      embryo  = {'Mp'};
      migrate = {'Mdc'};
      food    = {'bjPz','jiCi'};

    case 'Pseudochromis_flavivertex'
      climate = {'MA'};
      ecozone = {'MINW'};
      habitat = {'0iMr'};
      embryo  = {'Mnm'};
      migrate = {};
      food    = {'biCi'};

    case 'Lepadogaster_lepadogaster'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0iMi','jiMi'};
      embryo  = {'Mnfm'};
      migrate = {};
      food    = {'biCi'};

    case 'Parablennius_ruber'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0iMcd','jiMi'};
      embryo  = {'Mnm'};
      migrate = {};
      food    = {'biCi'};

    case 'Lipophrys_pholis'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0iMcd'};
      embryo  = {'Mnm'};
      migrate = {};
      food    = {'biCi'};

    case 'Gerres_equulus'
      climate = {'MC'};
      ecozone = {'MPNW'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'}; % guess
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Uranoscopus_scaber'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Achoerodus_viridis'
      climate = {'MB'};
      ecozone = {'MPSW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Semicossyphus_pulcher'
      climate = {'MB'};
      ecozone = {'MPE'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Dicentrarchus_labrax'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Platax_orbicularis'
      climate = {'MA'};
      ecozone = {'MIN','MIE','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'}; % guess
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Chaetodon_larvatus'
      climate = {'MA'};
      ecozone = {'MIr'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Sciaena_umbra'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Argyrosomus_regius'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Acanthurus_lineatus'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiHa', 'biCi'};

    case 'Acanthurus_olivaceus'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiHa'};

    case 'Ctenochaetus_striatus'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiHa'};

    case 'Zebrasoma_scopas'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiHa'};

    case 'Naso_brevirostris'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jpHa','piPz'};

    case 'Naso_hexacanthus'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'biPz'};

    case 'Naso_tuberosus'
      climate = {'MA'};
      ecozone = {'MI'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiHa'};

    case 'Naso_unicornis'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiHa'};

    case 'Naso_vlamingii'
      climate = {'MA'};
      ecozone = {'MI','MP'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','biO'};

    case 'Prionurus_maculatus'
      climate = {'MB'};
      ecozone = {'MPSW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiHa'};

    case 'Pomacanthus_imperator'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'jiCis','jiCit'};

    case 'Lutjanus_fulviflamma'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr','jpMm'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','biCi'};

    case 'Lutjanus_guttatus'
      climate = {'MA'};
      ecozone = {'MPE'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Lobotes_surinamensis'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0iMm'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Dentex_dentex'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Pagellus_erythrinus'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Sparus_aurata'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'bjMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Diplodus_puntazzo'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0iMp'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'biCi','jiHa'};

    case 'Boops_boops'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Acanthopagrus_berda'
      climate = {'MA'};
      ecozone = {'MI'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Siganus_sutor'
      climate = {'MA'};
      ecozone = {'MI'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiHa'};

    case 'Scatophagus_argus'
      climate = {'MA'};
      ecozone = {'MI','MPW'};
      habitat = {'0jMp','jiMr','jiFm','jiMm'};
      embryo  = {'Mp','Fp'};
      migrate = {'Ma'};
      food    = {'bjPz','jiCi'};

    case 'Priacanthus_macracanthus'
      climate = {'MA'};
      ecozone = {'MIE','MPW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Capros_aper'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Lophius_piscatorius'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMdb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCvf'};

    case 'Balistes_vetula'
      climate = {'MA'};
      ecozone = {'MAW'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'jiCie'};

    case 'Mola_mola'
      climate = {'MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMpe'};
      embryo  = {'Mp'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','biCij'};

    case 'Pempheris_adusta'
      climate = {'MA'};
      ecozone = {'MI','MP'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Pempheris_schwenkii'
      climate = {'MA'};
      ecozone = {'MP'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Lepomis_cyanellus'
      climate = {'Cfb','Dfa'};
      ecozone = {'THn'};
      habitat = {'0iFl','0iFp'};
      embryo  = {'Fnm'};
      migrate = {};
      food    = {'biCi'};

    case 'Epinephelus_marginatus'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMr'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Serranus_scriba'
      climate = {'MB'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Perca_fluviatilis'
      climate = {'Cfa','Dfc','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFl','0iFp'};
      embryo  = {'Fc','Fh'};
      migrate = {};
      food    = {'biCi','piCvf'};

    case 'Sander_lucioperca'
      climate = {'Cfa','Dfc','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFl','0iFe'};
      embryo  = {'Fnm'};
      migrate = {'Mp'};
      food    = {'biCi','piCvf'};

    case 'Gymnocephalus_cernuus'
      climate = {'Cfa','Dfc','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFl','0iFp','0iFe'};
      embryo  = {'Fc','Fh'};
      migrate = {};
      food    = {'biCi'};

    case 'Notothenia_coriiceps'
      climate = {'EF'};
      ecozone = {'MS'};
      habitat = {'0jMp','jiMcd'};
      embryo  = {'Mpe'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Chaenocephalus_aceratus'
      climate = {'EF'};
      ecozone = {'MS'};
      habitat = {'0bMcd','bjMp','jiMcd'};
      embryo  = {'Ms'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Platycephalus_fuscus'
      climate = {'MA'};
      ecozone = {'MPW'};
      habitat = {'0jMp','jiMm'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi'};

    case 'Chelidonichthys_lucerna'
      climate = {'MB','MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Eutrigla_gurnardus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0jMp','jiMd'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Helicolenus_dactylopterus'
      climate = {'MA','MB','MC'};
      ecozone = {'MA'};
      habitat = {'0jMp','jiMdb'};
      embryo  = {'Mp'};
      migrate = {};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Anarhichas_denticulatus'
      climate = {'EF'};
      ecozone = {'MN'};
      habitat = {'0bMcb','bpMp','piMd'};
      embryo  = {'Mnm'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi'};

    case 'Anarhichas_lupus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0bMb','bjMp','jiMd'};
      embryo  = {'Mnm'};
      migrate = {'Mo'};
      food    = {'bjPz','jiCi','jiCvf'};

    case 'Zoarces_viviparus'
      climate = {'MC'};
      ecozone = {'MAE'};
      habitat = {'0iMcd'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCi'};

    case 'Gasterosteus_aculeatus'
      climate = {'MC'};
      ecozone = {'MA','MP','TH'};
      habitat = {'piMc','0iFe','0iFl','0iFp'};
      embryo  = {'Fnm'};
      migrate = {'Ma'};
      food    = {'biCi'};

    case 'Pungitius_pungitius'
      climate = {'MC'};
      ecozone = {'MA','MP','TH'};
      habitat = {'piMc','0iFe','0iFl','0iFp'};
      embryo  = {'Fnm'};
      migrate = {'Ma'};
      food    = {'biCi'};

    case 'Cyclopterus_lumpus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMd'};
      embryo  = {'Mnm'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Scorpaenichthys_marmoratus'
      climate = {'MC'};
      ecozone = {'MPE'};
      habitat = {'0iMcd'};
      embryo  = {'Mnm'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Myoxocephalus_scorpius'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMcd'};
      embryo  = {'Mnm'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Latimeria_chalumnae'
      climate = {'MA'};
      ecozone = {'MIW'};
      habitat = {'0iMdb'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'biCic','biCvf'};

    case 'Neoceratodus_forsteri'
      climate = {'Cfb'};
      ecozone = {'TA'};
      habitat = {'0iFr','0iFm'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi','biHl','biHs'};

    case 'Ichthyophis_kohtaoensis'
      climate = {'Am'};
      ecozone = {'TPi'};
      habitat = {'0bTf','bjFc','jiTf'};
      embryo  = {'Tnsf'};
      migrate = {'TW'};
      food    = {'biCi'};

    case 'Andrias_japonicus'
      climate = {'Cfb'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFc'};
      embryo  = {'Fnm'};
      migrate = {'TT'};
      food    = {'biCi','piCvm'};

    case 'Cryptobranchus_alleganiensis'
      climate = {'Cfb'};
      ecozone = {'THn'};
      habitat = {'0iFr','0iFc'};
      embryo  = {'Fnm'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Hynobius_nebulosus'
      climate = {'Cfb'};
      ecozone = {'THp'};
      habitat = {'0jFc','jiTf'};
      embryo  = {'Fc'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Onychodactylus_japonicus'
      climate = {'Cfb','Dfa'};
      ecozone = {'THp'};
      habitat = {'0jFc','jiTf'};
      embryo  = {'Fc'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Plethodon_cinereus'
      climate = {'Cfb','Dfa','Dwa'};
      ecozone = {'THn'};
      habitat = {'0jFc','jiTf'};
      embryo  = {'Fc'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Amphiuma_means'
      climate = {'Cfb'};
      ecozone = {'THn'};
      habitat = {'0bTf','biFl','biFm'};
      embryo  = {'Tnsf'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Rhyacotriton_olympicus'
      climate = {'Cfb'};
      ecozone = {'THn'};
      habitat = {'0bFc','biTf'};
      embryo  = {'Fc'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Ambystoma_mexicanum'
      climate = {'Cwc'};
      ecozone = {'THn'};
      habitat = {'0iFl'};
      embryo  = {'Fc'};
      migrate = {'TT'};
      food    = {'biCii'};

    case 'Dicamptodon_tenebrosus'
      climate = {'Csb'};
      ecozone = {'THn'};
      habitat = {'0bFc','biTf'};
      embryo  = {'Fnf'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Lissotriton_vulgaris'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTg'};
      embryo  = {'Fh'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Salamandra_salamandra'
      climate = {'Csb','Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0jFc','jiTf'};
      embryo  = {'Fs'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Salamandra_lanzai'
      climate = {'ET'};
      ecozone = {'THp'};
      habitat = {'biTg','biTf'};
      embryo  = {'Fs'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Proteus_anguinus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFcc'};
      embryo  = {'Fnf'};
      migrate = {};
      food    = {'biCi'};

    case 'Siren_lacertina'
      climate = {'Cfa'};
      ecozone = {'THn'};
      habitat = {'0iFm'};
      embryo  = {'Fh'};
      migrate = {'Mp'};
      food    = {'biCi'};

    case 'Hoplobatrachus_tigerinus'
      climate = {'Dfb','Cwa','BSh','BWh'};
      ecozone = {'TPi'};
      habitat = {'0bFm','biTg'};
      embryo  = {'Fpf'};
      migrate = {'TW'};
      food    = {'biCi','piCv'};

    case 'Bombina_bombina'
      climate = {'Dfa','Dfb'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTs','jiTf','jiFp'};
      embryo  = {'Fpf'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Alytes_muletensis'
      climate = {'Csa'};
      ecozone = {'THp'};
      habitat = {'0jFc','jiTf'};
      embryo  = {'Fbm'};
      migrate = {};
      food    = {'biCi'};

    case 'Xenopus_laevis'
      climate = {'BWk','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iFm'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Pelobates_fuscus'
      climate = {'Dfa','Dfb','BSk'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTs','jiTf','jiTg'};
      embryo  = {'Fh'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Pelobates_syriacus'
      climate = {'Csa','BSk'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTs','jiTi','jiTg'};
      embryo  = {'Fpf'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Crinia_nimbus'
      climate = {'Cfb'};
      ecozone = {'TAt'};
      habitat = {'0jTf','bjFl','jiTf'};
      embryo  = {'Tnfm'};
      migrate = {};
      food    = {'biCi'};

    case 'Crinia_georgiana'
      climate = {'Csb'};
      ecozone = {'TA'};
      habitat = {'0jFp','jiTg','jiTf'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Geocrinia_vitellina'
      climate = {'Csb'};
      ecozone = {'TA'};
      habitat = {'0bFp','biTg','biTf'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Pseudophryne_bibronii'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0bTf','0iTg'};
      embryo  = {'Tns'};
      migrate = {};
      food    = {'biCi'};

    case 'Bufo_bufo'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTf','jiTg'};
      embryo  = {'Fh'};
      migrate = {};
      food    = {'biCi'};

    case 'Rana_temporaria'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTf','jiTg','jiTi'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Rana_arvalis'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTf','jiTg'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Pelophylax_ridibundus'
      climate = {'BSk','Cfb','Dsa','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTf','jiTg','jiTa','jiTs'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Pelophylax_lessonae'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTf','jiTi'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Pelophylax_esculentus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTf','jiTi'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Pyxicephalus_adspersus'
      climate = {'BSh','BWh','Cwb','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0jFp','jiTs','jiTa','jiTd'};
      embryo  = {'Fnm'};
      migrate = {};
      food    = {'biCi'};

    case 'Hyla_arborea'
      climate = {'Cfb','Dfb','Csb','BSk'};
      ecozone = {'THp'};
      habitat = {'0jFp','jiTf'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Hyperolius_viridiflavus'
      climate = {'Aw'};
      ecozone = {'TPa'};
      habitat = {'0jFp','jiTi'};
      embryo  = {'Fpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Sphenodon_punctatus'
      climate = {'Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biCv'};

    case 'Heteronotia_binoei'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Heteronotia_binoei_3N1A'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Heteronotia_binoei_3N1B'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Heteronotia_binoei_EA6'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Heteronotia_binoei_SM6'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Eulamprus_quoyii'
      climate = {'Cfb','Cfc'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Tiliqua_rugosa'
      climate = {'Cfb','Cfc','BWh','BWk','BSh','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTd','0iTa','0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Egernia_cunninghami'
      climate = {'Cfb','Cfc','BWh','BWk','BSh','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTd','0iTa','0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Egernia_striolata'
      climate = {'Cfb','Cfc','BSh','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTd','0iTa','0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Liopholis_striata'
      climate = {'Cfb','Cfc','BWh','BWk','BSh','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTd','0iTa','0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Liopholis_inornata'
      climate = {'BWh','BWk','BSh','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Amphisbaena_alba'
      climate = {'Af','Am','Aw'};
      ecozone = {'TN'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Lacerta_agilis'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTh','0iTa'};
      embryo  = {'Tt'};
      migrate = {'TT'};
      food    = {'biCi'};

    case 'Lacerta_strigata'
      climate = {'BWh','BSh','Csa','Csb'};
      ecozone = {'THp'};
      habitat = {'0iTa','0iTd','0iTs','0iTh'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Takydromus_hsuehshanensis'
      climate = {'Cfa'};
      ecozone = {'TPi'};
      habitat = {'0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Varanus_komodoensis'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'bpCvr','biCvm','biSv'};

    case 'Anguis_fragilis'
      climate = {'Cfb','Dfb','Csa'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Furcifer_labordi'
      climate = {'Am','Aw'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Ctenophorus_ornatus'
      climate = {'BWh','BSh','BSk','Csa'};
      ecozone = {'TA'};
      habitat = {'0iTd'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Sceloporus_undulatus'
      climate = {'Cfa','Dfa','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Python_regius'
      climate = {'BSh','Aw'};
      ecozone = {'TPa'};
      habitat = {'0iTf','0iTh','0iTi'};
      embryo  = {'Tntf'};
      migrate = {};
      food    = {'biCvm'};

    case 'Eunectes_murinus'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iFr'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'biCv'};

    case 'Eunectes_notaeus'
      climate = {'Aw','Cfa'};
      ecozone = {'TN'};
      habitat = {'0iFr','0iFm'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'biCv'};

    case 'Boa_constrictor'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'biCv'};

    case 'Vipera_berus'
      climate = {'Cfb','Dfb','BWk','BSk'};
      ecozone = {'THp'};
      habitat = {'0iThh','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'biCv','biCi'};

    case 'Crotalus_horridus'
      climate = {'Cfa'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'biCv'};

    case 'Coronella_austriaca'
      climate = {'Cfb','Dfb','Dfa'};
      ecozone = {'THp'};
      habitat = {'0iThh','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'biCvr'};

    case 'Natrix_natrix'
      climate = {'Cfb','Dfb','Dfa'};
      ecozone = {'THp'};
      habitat = {'0bTg','biFm'};
      embryo  = {'Tl'};
      migrate = {};
      food    = {'biCva'};

    case 'Pelomedusa_subrufa'
      climate = {'Aw','BWh','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0bTd','biFp','biFm'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biO'};

    case 'Podocnemis_unifilis'
      climate = {'Af','Am'};
      ecozone = {'TN'};
      habitat = {'0bTd','biFr','biFm'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biHl','biHs'};

    case 'Pseudemydura_umbrina'
      climate = {'Csa'};
      ecozone = {'TA'};
      habitat = {'0bTd','biFp'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Chelodina_oblonga'
      climate = {'Aw'};
      ecozone = {'TA'};
      habitat = {'0bTd','biFm','biMm'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biCvf','biCva'};

    case 'Elseya_dentata'
      climate = {'Aw'};
      ecozone = {'TA'};
      habitat = {'0bTd','biFm'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biCvf','biCva'};

    case 'Hydromedusa_maximiliani'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0bTd','biFc'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Chelus_fimbriata'
      climate = {'Af','Am','Aw'};
      ecozone = {'TN'};
      habitat = {'0bTd','biFc','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biCvf'};

    case 'Carettochelys_insculpta'
      climate = {'Af','Aw'};
      ecozone = {'TA'};
      habitat = {'0bTd','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biHl','biHs'};

    case 'Apalone_spinifera'
      climate = {'BSk','Cfa','Dfa'};
      ecozone = {'THn'};
      habitat = {'0bTd','biFp','biFl','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biHl'};

    case 'Chelydra_serpentina'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0bTd','biFp','biFl','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biCv','biSv','biHl'};

    case 'Dermatemys_mawii'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0bTd','biFl','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biHl'};

    case 'Claudius_angustatus'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0bTd','biFp','biFc'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biSv'};

    case 'Dermochelys_coriacea'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0bTd','biMp'};
      embryo  = {'Tt'};
      migrate = {'Mo'};
      food    = {'biCij'};

    case 'Caretta_caretta'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0bTd','biMcp'};
      embryo  = {'Tt'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Caretta_caretta_MED'
      climate = {'MB'};
      ecozone = {'MAm'};
      habitat = {'0bTd','biMcp'};
      embryo  = {'Tt'};
      migrate = {'Mo'};
      food    = {'biCi'};

    case 'Lepidochelys_kempii'
      climate = {'MA','MB','MC'};
      ecozone = {'MAW'};
      habitat = {'0bTd','biMcp'};
      embryo  = {'Tt'};
      migrate = {'Mo'};
      food    = {'biCi','biHa'};

    case 'Natator_depressus'
      climate = {'MA','MB'};
      ecozone = {'MIE'};
      habitat = {'0bTd','biMcp'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biHa'};

    case 'Chelonia_mydas'
      climate = {'MA','MB'};
      ecozone = {'MC'};
      habitat = {'0bTd','biMcp','biMr'};
      embryo  = {'Tt'};
      migrate = {'Mo'};
      food    = {'biCi','piHa'};

    case 'Emydura_macquarii'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0bTd','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi'};

    case 'Platysternon_megacephalum'
      climate = {'Cwa'};
      ecozone = {'TPi'};
      habitat = {'0bTd','biFc'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCim','biCvf'};

    case 'Emys_orbicularis'
      climate = {'BSk','Csa','Dfa','Dfb'};
      ecozone = {'THp'};
      habitat = {'0bTd','biFp'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biHl'};

    case 'Gopherus_agassizii'
      climate = {'BWh'};
      ecozone = {'THn'};
      habitat = {'0iTd'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'0iH'};

    case 'Gopherus_polyphemus'
      climate = {'Cfa'};
      ecozone = {'THn'};
      habitat = {'0iTh','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'0iH'};

    case 'Testudo_hermanni'
      climate = {'Csa'};
      ecozone = {'THp'};
      habitat = {'0iTh'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'0iH'};

    case 'Testudo_graeca'
      climate = {'Csa','BSk'};
      ecozone = {'THp'};
      habitat = {'0iTh'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'0iH'};

    case 'Aldabrachelys_gigantea'
      climate = {'Am'};
      ecozone = {'TPa'};
      habitat = {'0iTg'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biHl'};

    case 'Chelonoidis_niger'
      climate = {'BWh'};
      ecozone = {'TN'};
      habitat = {'0iTa'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biHl'};

    case 'Stigmochelys_pardalis'
      climate = {'BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTa','0iTi'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biHl'};

    case 'Mauremys_japonica'
      climate = {'Cfa'};
      ecozone = {'THp'};
      habitat = {'0bTd','biFm','biFp','biFl','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biH'};

    case 'Mauremys_sinensis'
      climate = {'Cfa'};
      ecozone = {'TPi'};
      habitat = {'0bTd','biFm','biFp','biFl','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biH'};

    case 'Cuora_flavomarginata'
      climate = {'Cfa'};
      ecozone = {'TPi'};
      habitat = {'0bTd','biFm','biFp'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'biCi','biH'};

    case 'Deinosuchus_rugosus'
      climate = {'Aw'};
      ecozone = {'THn'};
      habitat = {'0bTd','biFm','biFr'};
      embryo  = {'Tl'};
      migrate = {};
      food    = {'biCvr','biCvf'};

    case 'Alligator_mississippiensis'
      climate = {'Aw','Cfa'};
      ecozone = {'THn'};
      habitat = {'0bTd','biFm','biFp','biFp','biFr'};
      embryo  = {'Tl'};
      migrate = {};
      food    = {'biCv','biCi'};

    case 'Caiman_crocodilus'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0bTd','biFp','biFm','biFr'};
      embryo  = {'Tl'};
      migrate = {};
      food    = {'biCvr','biCvf'};

    case 'Gavialis_gangeticus'
      climate = {'Aw','BWh','BSh','Cfa'};
      ecozone = {'TPi'};
      habitat = {'0bTd','biFc','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'bpCi','bpCva','biCvf'};

    case 'Crocodylus_johnsoni'
      climate = {'BSh'};
      ecozone = {'TA'};
      habitat = {'0bTd','biFm','biFr'};
      embryo  = {'Tt'};
      migrate = {};
      food    = {'bpCi','biCv'};

    case 'Crocodylus_niloticus'
      climate = {'Am','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0bTd','biFm','biFl','biFp','biFr'};
      embryo  = {'Tl'};
      migrate = {};
      food    = {'bpCi','biCv'};

    case 'Pterodaustro_guinazui'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0bTd','biMm'};
      embryo  = {'Ts'};
      migrate = {};
      food    = {'0iP'};

    case 'Plateosaurus_engelhardti'
      climate = {'BS','Df'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTh'};
      embryo  = {'Ts'};
      migrate = {};
      food    = {'biH'};

    case 'Camerasaurus_spec'
      climate = {'BS'};
      ecozone = {'THn'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Ts'};
      migrate = {};
      food    = {'biH'};

    case 'Rapetosaurus_krausei'
      climate = {'A','Df'};
      ecozone = {'TPam'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Ts'};
      migrate = {};
      food    = {'biH'};

    case 'Apatosaurus_spec'
      climate = {'BS'};
      ecozone = {'THn'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Ts'};
      migrate = {};
      food    = {'biH'};

    case 'Mamenchisaurus_spec'
      climate = {'BS'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Ts'};
      migrate = {};
      food    = {'biH'};

    case 'Psittacosaurus_mongoliensis'
      climate = {'BS','Df'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Tns'};
      migrate = {};
      food    = {'biH'};

    case 'Maiasaura_peeblesorum'
      climate = {'BS','Df'};
      ecozone = {'THn'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Tns'};
      migrate = {};
      food    = {'biH'};

    case 'Daspletosaurus_torosus'
      climate = {'BS','Df'};
      ecozone = {'THn'};
      habitat = {'0iTi'};
      embryo  = {'Tns'};
      migrate = {};
      food    = {'biCvr','biSvr'};

    case 'Gorgosaurus_libratus'
      climate = {'BS','Df'};
      ecozone = {'THn'};
      habitat = {'0iTi'};
      embryo  = {'Tns'};
      migrate = {};
      food    = {'biCvr','biSvr'};

    case 'Tyrannosaurus_rex'
      climate = {'BS','Df'};
      ecozone = {'THn'};
      habitat = {'0iTi'};
      embryo  = {'Tns'};
      migrate = {};
      food    = {'biCvr','biSvr'};

    case 'Archaeopteryx_lithographica'
      climate = {'Df'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTf'};
      embryo  = {'Tl'};
      migrate = {};
      food    = {'biCi'};

    case 'Apteryx_mantelli'
      climate = {'Cfb'};
      ecozone = {'TAz'};
      habitat = {'0iTf'};
      embryo  = {'Tntm'};
      migrate = {};
      food    = {'biCi'};

    case 'Dromaius_novaehollandiae'
      climate = {'BWh','BSh','Cfa'};
      ecozone = {'TA'};
      habitat = {'0iTg','0iTs','0iTd'};
      embryo  = {'Tnsm'};
      migrate = {};
      food    = {'biCi','biHl'};

    case 'Struthio_camelus'
      climate = {'BWh','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTg','0iTs','0iTd'};
      embryo  = {'Tnsm'};
      migrate = {};
      food    = {'biCi','biHl'};

    case 'Rhea_americana'
      climate = {'Aw','Cfa','Cwa','Cwb'};
      ecozone = {'TN'};
      habitat = {'0iTg','0iTs','0iTd'};
      embryo  = {'Tnsm'};
      migrate = {};
      food    = {'biCi','biCv','biHl'};

    case 'Rhynchotus_rufescens'
      climate = {'A','Cfa','Cwa','Cwb'};
      ecozone = {'TN'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tnsm'};
      migrate = {};
      food    = {'biCi','biHl'};

    case 'Alectura_lathami'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tl'};
      migrate = {};
      food    = {'biCi','biHs'};

    case 'Tetrastes_bonasia'
      climate = {'Dfb','Dfc','Dwb','Dwc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tnsf'};
      migrate = {};
      food    = {'bxCi','biHs'};

    case 'Gallus_gallus'
      climate = {'A'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tnsf'};
      migrate = {};
      food    = {'bxCi','biHs'};

    case 'Gallus_gallus_IR'
      climate = {'A'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tnsf'};
      migrate = {};
      food    = {'bxCi','biHs'};

    case 'Gallus_gallus_WL'
      climate = {'A'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tnsf'};
      migrate = {};
      food    = {'bxCi','biHs'};

    case 'Coturnix_japonica'
      climate = {'Dwa','Dwb'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tnsf'};
      migrate = {};
      food    = {'bxCi','biHs'};

    case 'Colinus_virginianus'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTh','0iTf'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'bxCi','biHs'};

    case 'Anas_platyrhynchos'
      climate = {'Cfa','Cfb','Csa','Csb','Dfa','Dfb','Dfc'};
      ecozone = {'TH','TPi','TA'};
      habitat = {'biFp','biFm','biMm'};
      embryo  = {'Tnsf'};
      migrate = {'Ms'};
      food    = {'biCi','xiHl','xiHr'};

    case 'Aythya_fuligula'
      climate = {'Cfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'biFp','biFm'};
      embryo  = {'Tnsf'};
      migrate = {'Ms'};
      food    = {'biCi','biCim'};

    case 'Aythya_americana'
      climate = {'Cfb','Dfc','BSk'};
      ecozone = {'THn'};
      habitat = {'biFp','biFm'};
      embryo  = {'Tnsf'};
      migrate = {'Ms'};
      food    = {'biCi','biCim','xiHl'};

    case 'Mergus_merganser'
      climate = {'Cfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'biFp','biFm'};
      embryo  = {'Tnwf'};
      migrate = {'Ml'};
      food    = {'biCi','biCvf'};

    case 'Mergus_serrator'
      climate = {'Cfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'biFp','biFm','xiMc'};
      embryo  = {'Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi','biCvf','biCva'};

    case 'Melanitta_perspicillata'
      climate = {'Dfc'};
      ecozone = {'THn'};
      habitat = {'biFp','biFm','xiMc'};
      embryo  = {'Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Somateria_mollissima'
      climate = {'Dfc'};
      ecozone = {'MC'};
      habitat = {'xiMc'};
      embryo  = {'Tncf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Podilymbus_podiceps'
      climate = {'BSk','Cf','Csb','Dfa','Dfb'};
      ecozone = {'THn','TN'};
      habitat = {'0iFp','0iFm'};
      embryo  = {'Tnffm'};
      migrate = {};
      food    = {'biCi'};

    case 'Phoeniconaias_minor'
      climate = {'BSh','Cw'};
      ecozone = {'TPa'};
      habitat = {'0iS'};
      embryo  = {'Tnsfm'};
      migrate = {'Ms'};
      food    = {'biP'};

    case 'Columba_oenas'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tnwfm'};
      migrate = {'Ms'};
      food    = {'biHs','biCi'};

    case 'Columba_livia'
      climate = {'BSk','Csa'};
      ecozone = {'THp'};
      habitat = {'0iTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biHs','bxCi'};

    case 'Mesitornis_variegatus'
      climate = {'A'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tnpfm'};
      migrate = {};
      food    = {'biCi','xiHs'};

    case 'Pterocles_alchata'
      climate = {'BSk','BWk','Csa'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tnsfm'};
      migrate = {'Ms'};
      food    = {'bxCi','xiHs'};

    case 'Apus_apus'
      climate = {'BSh','BSk','Csa','Cfb','Dfb','Dfc'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTh','0iTf','0iTi','0iTg'};
      embryo  = {'Tncfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Archilochus_alexandri'
      climate = {'BSk','BWk'};
      ecozone = {'THn'};
      habitat = {'0iTh'};
      embryo  = {'Tnpf'};
      migrate = {'Ml'};
      food    = {'biCi','xiHn'};

    case 'Aegotheles_cristatus'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTf'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Podargus_strigoides'
      climate = {'BSh','BSk','Cfa'};
      ecozone = {'TA'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tnpfm'};
      migrate = {};
      food    = {'biCi'};

    case 'Cuculus_canorus'
      climate = {'Cwa','Cfa','Cfb','Dfb','Dfc'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tnpo'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Clamator_glandarius'
      climate = {'BSh','BSk','Csa','Csb'};
      ecozone = {'THp','TPa'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tnpo'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Tauraco_erythrolophus'
      climate = {'Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tnpfm'};
      migrate = {};
      food    = {'biHs'};

    case 'Ardeotis_kori'
      climate = {'BSh','Aw'};
      ecozone = {'TPa'};
      habitat = {'0iTi','0iTs','0iTg'};
      embryo  = {'Tnsf'};
      migrate = {};
      food    = {'biO'};

    case 'Opisthocomus_hoazin'
      climate = {'Af','Am'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tnpfm'};
      migrate = {};
      food    = {'bxHlf','xiHl'};

    case 'Calidris_ferruginea'
      climate = {'ET'};
      ecozone = {'THp'};
      habitat = {'0iTht'};
      embryo  = {'Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Calidris_alpina'
      climate = {'ET','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Calidris_bairdii'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Calidris_minuta'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Calidris_minutilla'
      climate = {'Dfc','ET'};
      ecozone = {'THn'};
      habitat = {'0iTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Calidris_maritima'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tnsm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Philomachus_pugnax'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTht','0iTg'};
      embryo  = {'Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Tringa_flavipes'
      climate = {'Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Tringa_totanus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Limnodromus_griseus'
      climate = {'Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Limosa_haemastica'
      climate = {'Cfa','Dfb','Dfa'};
      ecozone = {'THn'};
      habitat = {'0iTh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Limosa_limosa'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTg'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Numenius_phaeopus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTh','0iTg'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Uria_aalge'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biCvf'};

    case 'Uria_lomvia'
      climate = {'MC','ME'};
      ecozone = {'MAN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biCvf'};

    case 'Alle_alle'
      climate = {'ME'};
      ecozone = {'MAN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {'Ms'};
      food    = {'biCik'};

    case 'Pinguinus_impennis'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biCvf'};

    case 'Alca_torda'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biCvf'};

    case 'Cepphus_grylle'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biCvf','biCik'};

    case 'Brachyramphus_brevirostris'
      climate = {'ME'};
      ecozone = {'MPN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {'Ms'};
      food    = {'biCik'};

    case 'Ptychoramphus_aleuticus'
      climate = {'MC'};
      ecozone = {'MPNE'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biCik'};

    case 'Aethia_pusilla'
      climate = {'MC','ME'};
      ecozone = {'MPNE'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {'Ms'};
      food    = {'biCik'};

    case 'Aethia_cristatella'
      climate = {'MC','ME'};
      ecozone = {'MPNW'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {'Ms'};
      food    = {'biCik'};

    case 'Cerorhinca_monocerata'
      climate = {'MC'};
      ecozone = {'MPN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tntfm'};
      migrate = {'Ms'};
      food    = {'biCik','biCvf'};

    case 'Fratercula_arctica'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tntfm'};
      migrate = {'Ms'};
      food    = {'biCvf'};

    case 'Fratercula_cirrhata'
      climate = {'MC'};
      ecozone = {'MPNE'};
      habitat = {'xiMcp','0bTd'};
      embryo  = {'Tntfm'};
      migrate = {'Ms'};
      food    = {'biCvf'};

    case 'Chlidonias_leucopterus'
      climate = {'Dfb'};
      ecozone = {'THp','TPa','TA'};
      habitat = {'0iFm'};
      embryo  = {'Tnffm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCii'};

    case 'Sterna_paradisaea'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht','0iThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf'};

    case 'Sterna_hirundo'
      climate = {'Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTht','0iThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf'};

    case 'Thalasseus_sandvicensis'
      climate = {'Dfb','Dfc'};
      ecozone = {'MA'};
      habitat = {'0iTht','0iThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf'};

    case 'Chroicocephalus_ridibundus'
      climate = {'Cfb','Dfb'};
      ecozone = {'TH'};
      habitat = {'0iFl','0iFm','0iMm'};
      embryo  = {'Tnsfm'};
      migrate = {'Ms'};
      food    = {'biCvf','biCi'};

    case 'Larus_argentatus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFe','0iMm','biMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ms'};
      food    = {'biCvf','biCi','biSi','biSv'};

    case 'Rissa_tridactyla'
      climate = {'MC','ME'};
      ecozone = {'MAN','MPN','MN'};
      habitat = {'biMc','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {'Ms'};
      food    = {'biCvf'};

    case 'Rissa_brevirostris'
      climate = {'MC','ME'};
      ecozone = {'MPN'};
      habitat = {'biMc','0bTd'};
      embryo  = {'Tncfm'};
      migrate = {'Ms'};
      food    = {'biCvf','biCic'};

    case 'Stercorarius_longicaudus'
      climate = {'ET','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCvb','biCvm','biSv','xiHs'};

    case 'Stercorarius_skua'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iTg','xiMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCvb','biCvm','biSv','xiHs'};

    case 'Stercorarius_maccormicki'
      climate = {'MC'};
      ecozone = {'MS'};
      habitat = {'0iTg','xiMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCvb','biCvm','biSv','xiHs'};

    case 'Himantopus_mexicanus'
      climate = {'BWh','BSh'};
      ecozone = {'THn','TN'};
      habitat = {'0xTs','xiFm','xiFe'};
      embryo  = {'Tnsfm'};
      migrate = {'Ms'};
      food    = {'biCi'};

    case 'Haematopus_moquini'
      climate = {'BWk','BSh','BSk'};
      ecozone = {'TPa'};
      habitat = {'0xTs','xiFm','xiFe'};
      embryo  = {'Tnsfm'};
      migrate = {'Ms'};
      food    = {'biCim'};

    case 'Vanellus_vanellus'
      climate = {'Cfb'};
      ecozone = {'THp'};
      habitat = {'0xTg','xiFm','xiFe'};
      embryo  = {'Tnsfm'};
      migrate = {'Ms'};
      food    = {'biCi'};

    case 'Vanellus_armatus'
      climate = {'Aw','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTg','0iTs','0iTa'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCi'};

    case 'Vanellus_coronatus'
      climate = {'Aw','BWh','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTg','0iTs','0iTa'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCii'};

    case 'Charadrius_pecuarius'
      climate = {'Aw','BWh','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTg','0iTs','0iFm','0iSm'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCii'};

    case 'Pluvialis_dominica'
      climate = {'ET','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Gallinula_chloropus'
      climate = {'Aw','BSk','Cfb','Dfb'};
      ecozone = {'THp','TPa','TPi'};
      habitat = {'0iFm'};
      embryo  = {'Tnffm'};
      migrate = {'Ms'};
      food    = {'biCi','biHl'};

    case 'Grus_japonensis'
      climate = {'Dwb'};
      ecozone = {'THp'};
      habitat = {'xiFm','0xTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'bxCi','xiO'};

    case 'Grus_monacha'
      climate = {'Dwb','Dwc','Dfc'};
      ecozone = {'THp'};
      habitat = {'xiFm','0xTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'bxCi','xiO'};

    case 'Grus_americana'
      climate = {'Dfb'};
      ecozone = {'THn'};
      habitat = {'xiThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'bxCi','xiO'};

    case 'Grus_virgo'
      climate = {'BSk','Dfa','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTa','0iTs'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'bxCi','xiO'};

    case 'Antigone_antigone'
      climate = {'Aw','BSh'};
      ecozone = {'TPi','TA'};
      habitat = {'0iTg','xiFm'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'bxCi','xiO'};

    case 'Antigone_vipio'
      climate = {'Dwc'};
      ecozone = {'THp'};
      habitat = {'0iTs','0iThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'bxCi','xiO'};

    case 'Antigone_canadensis'
      climate = {'Cfa','Dfa','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTg','0iTht','0iThh'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'bxCi','xiO'};

    case 'Antigone_rubicunda'
      climate = {'Aw','BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTg','0iTs','0iTa','xiFm','xiMm'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'bxCi','xiO'};

    case 'Leucogeranus_leucogeranus'
      climate = {'ET'};
      ecozone = {'THp'};
      habitat = {'0iTht'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'bxCi','xiO'};

    case 'Phaethon_lepturus'
      climate = {'MA'};
      ecozone = {'MC'};
      habitat = {'xiMpe','0xTd'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCvf','biCic'};

    case 'Phaethon_rubricauda'
      climate = {'MA'};
      ecozone = {'MP','MI'};
      habitat = {'xiMpe','0xTd'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCvf','biCic'};

    case 'Rhynochetos_jubatus'
      climate = {'Af'};
      ecozone = {'TAz'};
      habitat = {'0iTf'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCi','biCvr'};

    case 'Gavia_stellata'
      climate = {'Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iFl','xiMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf'};

    case 'Gavia_immer'
      climate = {'Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iFl','xiMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf'};

    case 'Eudyptula_minor'
      climate = {'MC'};
      ecozone = {'MISE','MPSW'};
      habitat = {'0iMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCic','biCik'};

    case 'Pygoscelis_adeliae'
      climate = {'ME'};
      ecozone = {'TS'};
      habitat = {'0iMc'};
      embryo  = {'Tncfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCic','biCik'};

    case 'Pygoscelis_antarcticus'
      climate = {'ME','MC'};
      ecozone = {'TS'};
      habitat = {'0iMc'};
      embryo  = {'Tncfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCic','biCik'};

    case 'Pygoscelis_papua'
      climate = {'ME','MC'};
      ecozone = {'MS'};
      habitat = {'0iMc'};
      embryo  = {'Tncfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCic','biCik'};

    case 'Fulmarus_glacialis'
      climate = {'MC','ME'};
      ecozone = {'MN','MC'};
      habitat = {'0iMc'};
      embryo  = {'Tncfm'};
      migrate = {'Ml'};
      food    = {'biCvf','biCic','biCik','biCij','bjSv'};

    case 'Diomedea_exulans'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0iMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCic','biCik','biSv'};

    case 'Thalassarche_melanophrys'
      climate = {'MC'};
      ecozone = {'MC'};
      habitat = {'0iMc'};
      embryo  = {'Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCic','biCik','biSv'};

    case 'Ciconia_ciconia'
      climate = {'BSk','Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTs','xiFm'};
      embryo  = {'Tncfm'};
      migrate = {'Ml'};
      food    = {'biCva','biCi'};

    case 'Phalacrocorax_auritus'
      climate = {'Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0xTf','0iMi','xiFl','xiFp'};
      embryo  = {'Tnpfm','Tncfm'};
      migrate = {'Ms'};
      food    = {'biCvf'};

    case 'Sula_bassana'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMc'};
      embryo  = {'Tncfm'};
      migrate = {'Ms'};
      food    = {'biCvf'};

    case 'Sula_nebouxii'
      climate = {'MA','MB'};
      ecozone = {'MPE'};
      habitat = {'0iMc'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCvf'};

    case 'Balaeniceps_rex'
      climate = {'Aw','Cwb','Cwc'};
      ecozone = {'TPa'};
      habitat = {'0iFm'};
      embryo  = {'Tnsfm'};
      migrate = {};
      food    = {'biCvf','biCva','biCvr'};

    case 'Pelecanus_onocrotalus'
      climate = {'Csa','Dfa','Dfb'};
      ecozone = {'TPa','THp'};
      habitat = {'0iFl','0iFe'};
      embryo  = {'Tnpfm','Tnsfm'};
      migrate = {};
      food    = {'biCvf'};

    case 'Platalea_leucorodia'
      climate = {'BWk','BSk','Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFm','0iFe'};
      embryo  = {'Tnpfm','Tnsfm'};
      migrate = {'Ml'};
      food    = {'biCi','biCvf','biCva'};

    case 'Ardea_herodias'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iFm','0iFe','0iMm'};
      embryo  = {'Tnpfm'};
      migrate = {'Ms'};
      food    = {'biCi','biCv'};

    case 'Aquila_chrysaetos'
      climate = {'BSk','Cfa','Cfb','Dfa','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTi','0iTs','0iTg','0iTht','0iThh'};
      embryo  = {'Tncf'};
      migrate = {'Ms'};
      food    = {'biCvb','biCvm','biSvm'};

    case 'Circus_aeruginosus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFm','0iTh'};
      embryo  = {'Tnsf'};
      migrate = {'Ml'};
      food    = {'biCvb','biCvm','biCva','biCii'};

    case 'Vultur_gryphus'
      climate = {'BWk','BSk','Csb','Cfb'};
      ecozone = {'TN'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tncfm'};
      migrate = {};
      food    = {'biSvm','biSvb'};

    case 'Tyto_alba'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TN','TP','TA'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCv','biCi'};

    case 'Bubo_scandiacus'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tnsf'};
      migrate = {'Ms'};
      food    = {'biCva','biCvm'};

    case 'Bubo_virginianus'
      climate = {'A','B','C','D'};
      ecozone = {'THn','TN'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnpf'};
      migrate = {'Ms'};
      food    = {'biCv'};

    case 'Urocolius_macrourus'
      climate = {'BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTh'};
      embryo  = {'Tnpfm'};
      migrate = {};
      food    = {'biCi','biH'};

    case 'Leptosomus_discolor'
      climate = {'A'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tnpf'};
      migrate = {};
      food    = {'biCii'};

    case 'Euptilotis_neoxenus'
      climate = {'BSk','Cwa','Cwb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tnwfm'};
      migrate = {};
      food    = {'biCi','biCvr','xiHs'};

    case 'Bucorvus_leadbeateri'
      climate = {'BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTi'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi','biCvr'};

    case 'Todiramphus_cinnamominus'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tnwfm','Tntfm'};
      migrate = {};
      food    = {'biCvf','biCii'};

    case 'Ramphastos_toco'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0iTi'};
      embryo  = {'Tnwfm','Tntfm'};
      migrate = {};
      food    = {'biCii','biCvr','biHs'};

    case 'Jynx_torquilla'
      climate = {'Cfa','Cfb','Dfb','Dwb','Dwc'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTh'};
      embryo  = {'Tnwfm','Tntfm'};
      migrate = {'Ml'};
      food    = {'biCii'};

    case 'Cariama_cristata'
      climate = {'Aw','Cfa'};
      ecozone = {'TN'};
      habitat = {'0iTg'};
      embryo  = {'Tnsfm','Tnpfm'};
      migrate = {};
      food    = {'biCii','biCvr'};

    case 'Falco_naumanni'
      climate = {'BSk','BWk'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTg','0iTa'};
      embryo  = {'Tnwfm','Tncfm'};
      migrate = {'Ml'};
      food    = {'biCi','biCv'};

    case 'Falco_tinnunculus'
      climate = {'BSk','BWk','Cfb','Csa','Dfb','Dwc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTg','0iTa'};
      embryo  = {'Tncf'};
      migrate = {'Ms'};
      food    = {'biCi','biCv'};

    case 'Melopsittacus_undulatus'
      climate = {'BWk','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tnwf'};
      migrate = {'Ms'};
      food    = {'biHs'};

    case 'Forpus_passerinus'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf','0iTh','0iTi'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biHs'};

    case 'Myiopsitta_monachus'
      climate = {'Aw','Cwa','Cfa'};
      ecozone = {'TN'};
      habitat = {'0iTg','0iTh','0iTi'};
      embryo  = {'Tnpfm'};
      migrate = {};
      food    = {'biHs'};

    case 'Aphrastura_spinicauda'
      climate = {'Csb','Cfb','Cfc'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tnwfm'};
      migrate = {};
      food    = {'biCii'};

    case 'Tyrannus_tyrannus'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTi'};
      embryo  = {'Tnpfm'};
      migrate = {'Ml'};
      food    = {'biCii','xiHs'};

    case 'Sayornis_phoebe'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTi'};
      embryo  = {'Tnpfm'};
      migrate = {'Ms'};
      food    = {'biCii','xiHs'};

    case 'Lanius_senator'
      climate = {'BSk','Csa'};
      ecozone = {'THp'};
      habitat = {'0iTh'};
      embryo  = {'Tnpf'};
      migrate = {'Ml'};
      food    = {'biCi','biCva','biCvb'};

    case 'Pica_pica'
      climate = {'A','B','C','D'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tnpfm'};
      migrate = {};
      food    = {'bxCi','xiO'};

    case 'Corvus_monedula'
      climate = {'A','B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tnwfm'};
      migrate = {};
      food    = {'bxCi','xiO'};

    case 'Remiz_pendulinus'
      climate = {'Dfa','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iThf'};
      embryo  = {'Tnpfm'}; % either male or female who incubates
      migrate = {'Ms'};
      food    = {'biCi'};

    case 'Lophophanes_cristatus'
      climate = {'BSk','Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Poecile_atricapillus'
      climate = {'Dfa','Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Parus_major'
      climate = {'A','B','C','D'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTf','0iTh','0iTi'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Cyanistes_caeruleus'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTh','0iTi'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Periparus_ater'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Sylvia_atricapilla'
      climate = {'BSk','Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnpf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Phylloscopus_trochilus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnpf'}; % close to the ground
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Regulus_regulus'
      climate = {'Cfa','Cfb','Cwc','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tnpf'};
      migrate = {'Ms'};
      food    = {'biCi'};

    case 'Regulus_ignicapillus'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tnpf'};
      migrate = {'Ms'};
      food    = {'biCi'};

    case 'Tichodroma_muraria'
      climate = {'ET','Cwb','Cwc'};
      ecozone = {'THp'};
      habitat = {'0iTd'};
      embryo  = {'Tncf'};
      migrate = {'Ms'};
      food    = {'biCi'};

    case 'Troglodytes_aedon'
      climate = {'BSk','Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tnwf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Sitta_europaea'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Cinclus_cinclus'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tncf'};
      migrate = {'Ms'};
      food    = {'biCi'};

    case 'Turdus_merula'
      climate = {'BSk','Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnpf'}; 
      migrate = {'Ms'};
      food    = {'biCi','xiHs'};

    case 'Turdus_philomelos'
      climate = {'BSk','Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnpf'}; 
      migrate = {'Ms'};
      food    = {'biCi','xiHs'};

    case 'Turdus_migratorius'
      climate = {'BSk','Cfa','Dfa','Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnpf'}; 
      migrate = {'Ml'};
      food    = {'biCi','xiHs'};

    case 'Catharus_minimus'
      climate = {'Cfa','Dfa','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnpf','Tnsf'}; 
      migrate = {'Ml'};
      food    = {'biCi','xiHs'};

    case 'Sturnus_vulgaris'
      climate = {'B','C','D'};
      ecozone = {'TH'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tnwfm'}; 
      migrate = {'Ml'};
      food    = {'biCi','xiHs'};

    case 'Toxostoma_curvirostre'
      climate = {'BWh','BSh','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tnwf'};
      migrate = {};
      food    = {'biCi'};

    case 'Cinnyris_jugularis'
      climate = {'A'};
      ecozone = {'TPi','TA'};
      habitat = {'0iTh','0iMm'};
      embryo  = {'Tnpf'};
      migrate = {};
      food    = {'biCi'};

    case 'Passer_domesticus'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TN','TP','TA'};
      habitat = {'0iTh','0iTi','0iTs','0iTg','0iTa'};
      embryo  = {'Tnwf','Tncf'};
      migrate = {};
      food    = {'biCi','biHs'};

    case 'Anthus_pratensis'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTi','0iTs','0iTg'};
      embryo  = {'Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi','biHs'};

    case 'Motacilla_flava'
      climate = {'BSk','Csa','Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTi','0iTs','0iTg'};
      embryo  = {'Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Passerculus_sandwichensis'
      climate = {'BSk','Dfa','Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTh','0iTi','0iTs'};
      embryo  = {'Tnpf','Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi','biHs'};

    case 'Passerella_iliaca'
      climate = {'BSk','Dfa','Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTh','0iTi','0iTs'};
      embryo  = {'Tnpf','Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi','biHs'};

    case 'Zonotrichia_leucophrys'
      climate = {'BSk','Dfa','Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTh','0iTi','0iTs'};
      embryo  = {'Tnpf','Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi','biHs'};

    case 'Spizelloides_arborea'
      climate = {'BSk','Dfa','Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTh','0iTi','0iTs'};
      embryo  = {'Tnpf','Tnsf'};
      migrate = {'Ml'};
      food    = {'biCi','biHs'};

    case 'Acanthis_flammea'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht','0iThh'};
      embryo  = {'Tnpf'};
      migrate = {'Ml'};
      food    = {'biCi','biHs'};

    case 'Carduelis_carduelis'
      climate = {'BSk','Cfb','Dfa','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iThh'};
      embryo  = {'Tnpf'};
      migrate = {'Ml'};
      food    = {'biCi','biHs'};

    case 'Setophaga_striata'
      climate = {'Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTh','0iTi','0iTs'};
      embryo  = {'Tnpf'};
      migrate = {'Ml'};
      food    = {'biCi'};

    case 'Ornithorhynchus_anatinus'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0xTf','xiFc'};
      embryo  = {'Tnt'};
      migrate = {};
      food    = {'bxM','xiCi'};

    case 'Tachyglossus_aculeatus'
      climate = {'Aw','BWh','BSh','Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTf','0iTa','0iTd','0iTh'};
      embryo  = {'Tbf'};
      migrate = {};
      food    = {'bxM','xiCi'};

    case 'Caluromys_philander'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs','xiCvr','xiCvb'};

    case 'Didelphis_virginiana'
      climate = {'A','Cfa','Csb','Dfa','Dfb'};
      ecozone = {'THp','TN'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Sarcophilus_harrisii'
      climate = {'Cfb'};
      ecozone = {'TAt'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO','xiCvm','xiSvm'};

    case 'Dasyurus_viverrinus'
      climate = {'Cfb'};
      ecozone = {'TAt'};
      habitat = {'0iTf','0iTh','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvm','xiSvm'};

    case 'Perameles_nasuta'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi','xiHr','xiHl','xiF'};

    case 'Phascolarctos_cinereus'
      climate = {'BSh','Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Tarsipes_rostratus'
      climate = {'BSk','Csa'};
      ecozone = {'TA'};
      habitat = {'0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHn'};

    case 'Lagostrophus_fasciatus'
      climate = {'BSk'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Lagorchestes_conspicillatus'
      climate = {'Aw','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTi','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Lagorchestes_hirsutus'
      climate = {'BWh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTi','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_agilis'
      climate = {'Aw','BSk'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTi','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_antilopinus'
      climate = {'Aw'};
      ecozone = {'TA'};
      habitat = {'0iTi','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_eugenii'
      climate = {'BSh','Csa','Csb'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_fuliginosus'
      climate = {'BSh','Csa','Csb'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_giganteus'
      climate = {'BSh','BSk','Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTs','0iTi','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_parma'
      climate = {'Cfa'};
      ecozone = {'TA'};
      habitat = {'0iTf','0iTi','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_rufogriseus'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTf','0iTi','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Macropus_rufus'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Onychogalea_fraenata'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Petrogale_xanthopus'
      climate = {'BWh','BSh'};
      ecozone = {'TA'};
      habitat = {'0iTa','0iTd','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Setonix_brachyurus'
      climate = {'Csb'};
      ecozone = {'TA'};
      habitat = {'0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Wallabia_bicolor'
      climate = {'Aw','Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Myrmecophaga_tridactyla'
      climate = {'A','Cwa','Cwb'};
      ecozone = {'TN'};
      habitat = {'0iTi','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCii'};

    case 'Dasypus_novemcinctus'
      climate = {'A','BSh','Cwa','Cwb','Cfa'};
      ecozone = {'TN','THn'};
      habitat = {'0iTi','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCii'};

    case 'Orycteropus_afer'
      climate = {'A','BWh','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTi','0iTh','0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCii','xiHs'};

    case 'Macroscelides_proboscideus'
      climate = {'BWh','BWk'};
      ecozone = {'TPa'};
      habitat = {'0iTh','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCii','xiH'};

    case 'Hemicentetes_semispinosus'
      climate = {'A'};
      ecozone = {'TPam'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCiw'};

    case 'Loxodonta_africana'
      climate = {'Aw','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Elephas_maximus'
      climate = {'Aw','Cwa','Cwb','Cfa','Cfb'};
      ecozone = {'TPi'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Trichechus_inunguis'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0iFr'};
      embryo  = {'Fv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Procavia_capensis'
      climate = {'B'};
      ecozone = {'TPa'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Sorex_araneus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi'};

    case 'Talpa_europaea'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi'};

    case 'Talpa_occidentalis'
      climate = {'BSk','Csa','Cfb','Csb'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi'};

    case 'Erinaceus_europaeus'
      climate = {'BSk','Csa','Cfb','Csb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi','xiHs','xiF'};

    case 'Camelus_dromedarius'
      climate = {'BWh'};
      ecozone = {'THp','TPa'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Sus_scrofa'
      climate = {'Aw','Cfa','Cfb','Dfa','Dfb','Dwa','Dwb'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Monodon_monoceros'
      climate = {'ME'};
      ecozone = {'MN','MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ms'};
      food    = {'bxM','xiCvf','xiCic','xiCik'};

    case 'Delphinapterus_leucas'
      climate = {'ME'};
      ecozone = {'MN'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ms'};
      food    = {'bxM','xiCvf','xiCik'};

    case 'Phocoena_phocoena'
      climate = {'ME','MC'};
      ecozone = {'MPSW','MPSE'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCvf','xiCic','xiCik'};

    case 'Lagenorhynchus_obscurus'
      climate = {'MB','MC'};
      ecozone = {'MPSE','MPSW','MASE'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCvf','xiCic'};

    case 'Delphinus_delphis'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCvf','xiCic'};

    case 'Tursiops_truncatus'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCvf','xiCic'};

    case 'Pseudorca_crassidens'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCvf','xiCvm','xiCic'};

    case 'Orcinus_orca'
      climate = {'MA','MB','MC','ME'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ms'};
      food    = {'bxM','xiCvf','xiCvm','xiCvb','xiSvm','xiCic'};

    case 'Pontoporia_blainvillei'
      climate = {'MB','MC'};
      ecozone = {'MASW'};
      habitat = {'0iMm'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCvf','xiCic','xiCik'};


    case 'Physeter_macrocephalus'
      climate = {'MA','MB','MC','ME'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ml'};
      food    = {'bxM','xiCvf','xiCic'};

    case 'Hyperoodon_ampullatus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCvf','xiCic'};

    case 'Balaenoptera_acutorostrata'
      climate = {'MA','MB','MC'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ml'};
      food    = {'bxM','xiCvf','xiCic','xiCik'};

    case 'Balaenoptera_musculus'
      climate = {'MA','MB','MC','ME'};
      ecozone = {'MC'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ml'};
      food    = {'bxM','xiCvf','xiCic','xiCik'};

    case 'Eschrichtius_robustus'
      climate = {'MC'};
      ecozone = {'MPN'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ml'};
      food    = {'bxM','xiCi'};

    case 'Eubalaena_glacialis'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ml'};
      food    = {'bxM','xiCik'};

    case 'Balaena_mysticetus'
      climate = {'ME'};
      ecozone = {'MN'};
      habitat = {'0iMp'};
      embryo  = {'Mv'};
      migrate = {'Ml'};
      food    = {'bxM','xiCik','xiCvf'};

    case 'Hippopotamus_amphibius'
      climate = {'A','B','C'};
      ecozone = {'TPa'};
      habitat = {'0iFr','0iFl'};
      embryo  = {'Fv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Giraffa_camelopardalis'
      climate = {'A','B','C'};
      ecozone = {'TPa'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Okapia_johnstoni'
      climate = {'A'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Odocoileus_virginianus'
      climate = {'A','B','C'};
      ecozone = {'THn','TN'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Cervus_canadensis'
      climate = {'B','C','D'};
      ecozone = {'TH'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {'Ms'};
      food    = {'bxM','xiHl'};

    case 'Rangifer_tarandus'
      climate = {'Dfc','E'};
      ecozone = {'TH'};
      habitat = {'0iTf','0iTht'};
      embryo  = {'Tv'};
      migrate = {'Ms'};
      food    = {'bxM','xiHl','xiF'};

    case 'Alces_alces'
      climate = {'Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Aepyceros_melampus'
      climate = {'Aw','BWh','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTi','0iTs','0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Bos_primigenius_Angus'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Bos_primigenius_Holstein'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Bos_primigenius_Brahman'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTi','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Rupicapra_rupicapra'
      climate = {'ET','Cfa'};
      ecozone = {'THp'};
      habitat = {'0iTd','0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Ovibos_moschatus'
      climate = {'ET'};
      ecozone = {'TH'};
      habitat = {'0iTd','0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Rousettus_aegyptiacus'
      climate = {'Aw','BWh','BWk','BSh','BSk'};
      ecozone = {'THp','TPa'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Eidolon_helvum'
      climate = {'Aw','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs','xiHn'};

    case 'Rhinolophus_hipposideros'
      climate = {'BSk','Csa'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiCii'};

    case 'Miniopterus_schreibersii'
      climate = {'BSk','BSh','BWk','Csa'};
      ecozone = {'THp','TPa','TA'};
      habitat = {'0iTh','0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiCii'};

    case 'Desmodus_rotundus'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiTvm'};

    case 'Carollia_perspicillata'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs','xiHn','xiCii'};

    case 'Tadarida_brasiliensis'
      climate = {'BSk','Cfa','Cwa','Cwb'};
      ecozone = {'THn','TN'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {'Ms'};
      food    = {'bxM','xiCii'};

    case 'Pipistrellus_pipistrellus'
      climate = {'B','C','D'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiCii'};

    case 'Manis_crassicaudata'
      climate = {'Aw','BSh','Cwa'};
      ecozone = {'TPi'};
      habitat = {'0iTf','0iTi','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCii'};

    case 'Panthera_leo'
      climate = {'Am','BS'};
      ecozone = {'TPa'};
      habitat = {'0iTg','0iTs','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvm','xiSvm'};

    case 'Lynx_lynx'
      climate = {'BWk','Dfc','Dfd'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvb','xiCvm'};

    case 'Arctictis_binturong'
      climate = {'A'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Paradoxurus_hermaphroditus'
      climate = {'A','Cwa'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Civettictis_civetta'
      climate = {'A','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Crocuta_crocuta'
      climate = {'Aw','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTi','0iTs','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvm','xiSvm'};

    case 'Hyaena_brunnea'
      climate = {'BWh','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiSvm','xiHs','xiF'};

    case 'Atilax_paludinosus'
      climate = {'Aw','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iFm'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Herpestes_javanicus'
      climate = {'Am','Aw','BWh','BSh','BSk','Cwa','Cwb'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi','xiCv'};

    case 'Suricata_suricatta'
      climate = {'BSh','BWh'};
      ecozone = {'TPa'};
      habitat = {'0iTd','0iTa','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Vulpes_lagopus'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCva','xiCvm','xiSv'};

    case 'Vulpes_vulpes'
      climate = {'B','C','D'};
      ecozone = {'TH','TPi'};
      habitat = {'0iTh','0iTf','0iTi','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Canis_lupus'
      climate = {'B','C','D'};
      ecozone = {'TH','TPi'};
      habitat = {'0iTh','0iTf','0iTi','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvm','xiSvm','xiHs'};

    case 'Nyctereutes_procyonoides'
      climate = {'Cwa','Cwb','Cfa','Dw'};
      ecozone = {'THp','TPi'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiO'};

    case 'Ailurus_fulgens'
      climate = {'Cwa','Cwb','Cfa'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs','xiCv'};

    case 'Mephitis_mephitis'
      climate = {'BSk','Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCii'};

    case 'Meles_meles'
      climate = {'BSk','Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiCiw','xiSv','xiHs','xiHn'};

    case 'Enhydra_lutris'
      climate = {'MC'};
      ecozone = {'MPN'};
      habitat = {'0iMc'};
      embryo  = {'Mv'};
      migrate = {};
      food    = {'bxM','xiCi'};

    case 'Lutra_lutra'
      climate = {'BSk','Cfa','Cfb','Dfb','Dfc'};
      ecozone = {'THp','TPi'};
      habitat = {'0iFm','0iFl','0iFr'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvf'};

    case 'Procyon_lotor'
      climate = {'BSk','Cfa','Dfa','Dfb'};
      ecozone = {'TH'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Ursus_arctos'
      climate = {'BSk','BWk','Dfb','Dfc'};
      ecozone = {'TH'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Ursus_maritimus'
      climate = {'ME'};
      ecozone = {'MN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {'Ms'};
      food    = {'bxM','xiCvm'};

    case 'Ailuropoda_melanoleuca'
      climate = {'Dwa','Dwb'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Callorhinus_ursinus'
      climate = {'MC','ME'};
      ecozone = {'MPN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {'Mo'};
      food    = {'bxM','xiCvf'};

    case 'Zalophus_californianus'
      climate = {'MB','MC'};
      ecozone = {'MPE'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvf'};

    case 'Arctocephalus_australis'
      climate = {'MC'};
      ecozone = {'MPSE','MASW'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvf'};

    case 'Otaria_flavescens'
      climate = {'MC'};
      ecozone = {'MPSE','MASW'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvf'};

    case 'Phoca_vitulina'
      climate = {'MC'};
      ecozone = {'MPN','MAN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvf'};

    case 'Pusa_hispida'
      climate = {'ME'};
      ecozone = {'MN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {'Mo'};
      food    = {'bxM','xiCvf'};

    case 'Halichoerus_grypus'
      climate = {'MC'};
      ecozone = {'MAN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCvf'};

    case 'Pagophilus_groenlandicus'
      climate = {'MC','ME'};
      ecozone = {'MAN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {'Mo'};
      food    = {'bxM','xiCvf','xiCi'};

    case 'Erignathus_barbatus'
      climate = {'ME'};
      ecozone = {'MN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {'Mo'};
      food    = {'bxM','xiCvf','xiCim','xiCic'};

    case 'Cystophora_cristata'
      climate = {'MC','ME'};
      ecozone = {'MAN','MN'};
      habitat = {'0iMc'};
      embryo  = {'Tv'};
      migrate = {'Mo'};
      food    = {'bxM','xiCvf','xiCik','xiCic'};

    case 'Mirounga_leonina'
      climate = {'ME'};
      ecozone = {'MS'};
      habitat = {'0iMp'};
      embryo  = {'Tv'};
      migrate = {'Mo'};
      food    = {'bxM','xiCic','xiCvf'};

    case 'Odobenus_rosmarus_rosmarus'
      climate = {'MC','ME'};
      ecozone = {'MN','MPN','MAN'};
      habitat = {'0iMp'};
      embryo  = {'Tv'};
      migrate = {'Mo'};
      food    = {'bxM','xiCi'};

    case 'Equus_quagga'
      climate = {'BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTs','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Tapirus_terrestris'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Rhinoceros_unicornis'
      climate = {'Cwb'};
      ecozone = {'TPi'};
      habitat = {'0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Dicerorhinus_sumatrensis'
      climate = {'A'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Ceratotherium_simum'
      climate = {'Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTg','0iTi','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl'};

    case 'Pedetes_capensis'
      climate = {'BWh','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiCii'};

    case 'Castor_fiber'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iFl','0iFr'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHw'};

    case 'Geomys_bursarius'
      climate = {'BSk','Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd','0iTs','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHr'};

    case 'Dipodomys_merriami'
      climate = {'BWh','BWk','BSh','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs'};

    case 'Dipodomys_deserti'
      climate = {'BWh','BWk','BSh','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs'};

    case 'Dipodomys_heermanni'
      climate = {'BWh','BWk','BSk','Csa'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs'};

    case 'Dipodomys_nitratoides'
      climate = {'Csa'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs'};

    case 'Dipodomys_spectabilis'
      climate = {'BWh','BWk','BSh','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs'};

    case 'Perognathus_longimembris'
      climate = {'BWh','BWk','BSh','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs','xiCi'};

    case 'Chaetodipus_formosus'
      climate = {'BWh','BWk','BSh','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs','xiCi'};

    case 'Heterocephalus_glaber'
      climate = {'BWh','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTa','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHr'};

    case 'Cryptomys_mechowi'
      climate = {'Aw','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTi','0iTh','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHr'};

    case 'Cryptomys_hottentotus'
      climate = {'BWk','BSk','Cwa'};
      ecozone = {'TPa'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHr'};

    case 'Georychus_capensis'
      climate = {'BWk','BSk'};
      ecozone = {'TPa'};
      habitat = {'0iTd','0iTa','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHr'};

    case 'Hystrix_africaeaustralis'
      climate = {'BWk','BWh','BSk','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTi','0iTh','0iTg','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHr','xiHw'};

    case 'Geocapromys_ingrahami'
      climate = {'Aw'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Cavia_porcellus'
      climate = {'BWk'};
      ecozone = {'TN'};
      habitat = {'0iTh','0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Cavia_tschudii'
      climate = {'BWk'};
      ecozone = {'TN'};
      habitat = {'0iTh','0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Galea_musteloides'
      climate = {'BWk','BSk','Cwa','Cwb'};
      ecozone = {'TN'};
      habitat = {'0iTh','0iTa','0iTg','0iTi'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Hydrochoerus_hydrochaeris'
      climate = {'A','Cfa','Cwa','Cwb'};
      ecozone = {'TN'};
      habitat = {'0iFr','0iFm','0iFl','0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Chinchilla_lanigera'
      climate = {'BWk','Csb'};
      ecozone = {'TN'};
      habitat = {'0iTh','0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Lagostomus_maximus'
      climate = {'Aw','Cfa'};
      ecozone = {'TN'};
      habitat = {'0iTh','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Myoprocta_acouchy'
      climate = {'Af'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Erethizon_dorsatus'
      climate = {'BSk','Dsb','Dfa','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Myocastor_coypus'
      climate = {'Aw','Cwa','Cfa'};
      ecozone = {'TN'};
      habitat = {'0iFm','0iFr'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Octodon_degus'
      climate = {'Csb'};
      ecozone = {'TN'};
      habitat = {'0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs'};

    case 'Jaculus_jaculus'
      climate = {'BWh'};
      ecozone = {'THp','TPa'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs'};

    case 'Zapus_hudsonius'
      climate = {'Dfa','Dfb','Dfc','Dsb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTi'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiHs','xiCii'};

    case 'Napaeozapus_insignis'
      climate = {'Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iFm'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiHs','xiCii'};

    case 'Arvicola_amphibius'
      climate = {'Cfb','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iFr','0iFm','0iFp'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_richardsoni'
      climate = {'Csb','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_agrestis'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_arvalis'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_cabrerae'
      climate = {'BSk','Csa'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_guentheri'
      climate = {'BSk','Csa','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTht','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_subterraneus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_pennsylvanicus'
      climate = {'Cfb','Dfb','Dfc','Dsb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_oeconomus'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_pinetorum'
      climate = {'BSk','Csb','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Microtus_ochrogaster'
      climate = {'BSk','Cfa','Dfa'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Alticola_strelzowi'
      climate = {'BWk','BSk'};
      ecozone = {'THp'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Ondatra_zibethicus'
      climate = {'B','C','D'};
      ecozone = {'TH'};
      habitat = {'0iFm'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Dicrostonyx_groenlandicus'
      climate = {'ET'};
      ecozone = {'THn'};
      habitat = {'0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Dicrostonyx_torquatus'
      climate = {'ET'};
      ecozone = {'THp'};
      habitat = {'0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Lagurus_lagurus'
      climate = {'Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTa','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Lemmus_trimucronatus'
      climate = {'Dfc','ET'};
      ecozone = {'TH'};
      habitat = {'0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Lemmus_lemmus'
      climate = {'Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTht'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Myopus_schisticolor'
      climate = {'Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Synaptomys_cooperi'
      climate = {'Dfc','Dwc'};
      ecozone = {'THp'};
      habitat = {'0iThh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Phenacomys_intermedius'
      climate = {'Dfb','Dfc','Dsb'};
      ecozone = {'THn'};
      habitat = {'0iThh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Phenacomys_ungava'
      climate = {'Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iThh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Cricetus_cricetus'
      climate = {'BSk','BWk','Dfa','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTa','0iTs','0iTg'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiH','xiCii'};

    case 'Baiomys_taylori'
      climate = {'B'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiH','xiCii'};

    case 'Neotoma_floridana'
      climate = {'BSk','BWk','Cfa'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iTh','0iFm','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiF'};

    case 'Neotoma_albigula'
      climate = {'B'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiF'};

    case 'Neotoma_micropus'
      climate = {'B'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiF'};

    case 'Neotoma_lepida'
      climate = {'B'};
      ecozone = {'THn'};
      habitat = {'0iTa','0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiF'};

    case 'Neotoma_cinerea'
      climate = {'BSk','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iTd','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiF','xiCii'};

    case 'Peromyscus_polionotus'
      climate = {'Cfa'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii'};

    case 'Peromyscus_leucopus'
      climate = {'BSk','Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTh','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii'};

    case 'Peromyscus_californicus'
      climate = {'BSh','BWh'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii'};

    case 'Peromyscus_truei'
      climate = {'BWh'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii'};

    case 'Peromyscus_crinitus'
      climate = {'B'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii'};

    case 'Onychomys_torridus'
      climate = {'B'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii'};

    case 'Onychomys_leucogaster'
      climate = {'BS'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa','0iTs'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi','xiCvm','xiCvr'};

    case 'Sigmodon_hispidus'
      climate = {'Aw','Cfa'};
      ecozone = {'THn','TN'};
      habitat = {'0iTi','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Otonyctomys_hatti'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Nyctomys_sumichrasti'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Tylomys_nudicaudus'
      climate = {'Aw'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Acomys_cahirinus'
      climate = {'BWh'};
      ecozone = {'THp'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Meriones_unguiculatus'
      climate = {'BSk'};
      ecozone = {'THp'};
      habitat = {'0iTs','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Meriones_libycus'
      climate = {'BW','BSk'};
      ecozone = {'THp'};
      habitat = {'0iTd','0iTa','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Meriones_shawi'
      climate = {'BWh'};
      ecozone = {'THp'};
      habitat = {'0iTd','0iTa','0iTh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Psammomys_obesus'
      climate = {'BWh'};
      ecozone = {'THp'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Gerbillus_pyramidum'
      climate = {'BWh','Csa'};
      ecozone = {'THp'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Micaelamys_namaquensis'
      climate = {'BWh','BSh','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Mus_musculus'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TP','TA','TN'};
      habitat = {'0iTa','0iTs','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Rattus_norvegicus'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TP','TA','TN'};
      habitat = {'0iTa','0iTs','0iTg','0iFm'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Rattus_lutreolus'
      climate = {'Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iFm'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii','xiF'};

    case 'Rattus_fuscipes'
      climate = {'BSk','Cs','Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iFm'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH','xiCii','xiF'};

    case 'Apodemus_sylvaticus'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs','xiCi','xiF'};

    case 'Apodemus_speciosus'
      climate = {'Cfa','Dfa'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Apodemus_agrarius'
      climate = {'Dfb','Dw'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTg','0iFm'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Apodemus_semotus'
      climate = {'Cfa'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiO'};

    case 'Apodemus_flavicollis'
      climate = {'Cfb','Dfb','Dfc'};
      ecozone = {'THp'};
      habitat = {'0iTh','0iTf','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHl','xiHs','xiCi','xiF'};

    case 'Chiropodomys_gliroides'
      climate = {'Aw','Cwa','Cwb','Cfa'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Hydromys_chrysogaster'
      climate = {'BS','Cs','Cfa','Cfb'};
      ecozone = {'TA'};
      habitat = {'0iFm','0iFr','0iFc'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiCi','xiCv'};

    case 'Notomys_alexis'
      climate = {'BWh'};
      ecozone = {'TA'};
      habitat = {'0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Arvicanthis_niloticus'
      climate = {'BWh','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTd','0iTi','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Lemniscomys_striatus'
      climate = {'A'};
      ecozone = {'TPa'};
      habitat = {'0iTf','0iTg'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Rhabdomys_pumilio'
      climate = {'B','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTh','0iTi','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Pseudomys_australis'
      climate = {'BWh'};
      ecozone = {'TA'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Otomys_irroratus'
      climate = {'B','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTg','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Praomys_tullbergi'
      climate = {'A'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Mystromys_albicaudatus'
      climate = {'BWk','BSk','Cwa','Cwb'};
      ecozone = {'TPa'};
      habitat = {'0iTh','0iTa'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Aplodontia_rufa'
      climate = {'Csb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiH'};

    case 'Glis_glis'
      climate = {'Cfb','Csa','Dfa','Dfb'};
      ecozone = {'THp'};
      habitat = {'0iTf','0iThh'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Sciurus_carolinensis'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Sciurus_aberti'
      climate = {'BWk','BSk'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Tamiasciurus_hudsonicus'
      climate = {'BSk','Df'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Glaucomys_volans'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Glaucomys_sabrinus'
      climate = {'Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {};
      food    = {'bxM','xiHs'};

    case 'Tamias_striatus'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiHs','xiCi','xiF'};

    case 'Tamias_amoenus'
      climate = {'BSk','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiHs','xiCi'};

    case 'Tamias_townsendii'
      climate = {'BSk','Cs','Dsb'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiHs','xiCi'};

    case 'Ammospermophilus_harrisii'
      climate = {'BSh','BWh'};
      ecozone = {'THn'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiHs'};

    case 'Callospermophilus_lateralis'
      climate = {'BSh','BWh'};
      ecozone = {'THn'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiHs','xiSv','xiCvm'};

    case 'Callospermophilus_saturatus'
      climate = {'Dsa'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiO'};

    case 'Otospermophilus_variegatus'
      climate = {'B','Cs','Dsb'};
      ecozone = {'THn'};
      habitat = {'0iTf','0iTh'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiH','xiCi'};

    case 'Xerospermophilus_mohavensis'
      climate = {'BWh'};
      ecozone = {'THn'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {'TT'};
      food    = {'bxM','xiH','xiCi'};

    case 'Xerospermophilus_tereticaudus'
      climate = {'BW'};
      ecozone = {'THn'};
      habitat = {'0iTd'};
      embryo  = {'Tv'};
      migrate = {'TT'}; % in torpor, but no hibernation
      food    = {'bxM','xiH','xiCi'};

    case 'Marmota_flaviventris'
      climate = {'BSk'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tv'};
      migrate = {'TT'}; 
      food    = {'bxM','xiH'};

    case 'Marmota_monax'
      climate = {'Dfa','Dfb','Dfc'};
      ecozone = {'THn'};
      habitat = {'0iTd','0iTa'};
      embryo  = {'Tv'};
      migrate = {'TT'}; 
      food    = {'bxM','xiH'};

    case 'Ictidomys_tridecemlineatus'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {'TT'}; 
      food    = {'bxM','xiH'};

    case 'Cynomys_ludovicianus'
      climate = {'Cfa','Dfa','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {'TT'}; % no full hibernation
      food    = {'bxM','xiH'};

    case 'Urocitellus_richardsonii'
      climate = {'Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {'TT'}; 
      food    = {'bxM','xiH'};

    case 'Urocitellus_beldingi'
      climate = {'BSk'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {'TT'}; 
      food    = {'bxM','xiH','xiCi'};

    case 'Oryctolagus_cuniculus'
      climate = {'BSk','Csa','Cfb','Dfb'};
      ecozone = {'THp','TA'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Oryctolagus_cuniculus_NZW'
      climate = {'BSk','Csa','Cfb','Dfb'};
      ecozone = {'THp','TA'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Lepus_europaeus'
      climate = {'Cfa','Cfb','Dfb'};
      ecozone = {'THp','TA','TN'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Lepus_timidus'
      climate = {'Dfb','Dfc','ET'};
      ecozone = {'THp'};
      habitat = {'0iTht'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Lepus_townsendii'
      climate = {'BSk','Dfb'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Lepus_capensis'
      climate = {'BSh','BWh'};
      ecozone = {'THp','TPa'};
      habitat = {'0iTg','0iTs'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Sylvilagus_floridanus'
      climate = {'Aw','Cfa','Dfa','Dfb'};
      ecozone = {'THn','TN'};
      habitat = {'0iTg','0iTs','0iTh'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Ochotona_princeps'
      climate = {'BSk'};
      ecozone = {'THn'};
      habitat = {'0iTg','0iTh'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Tupaia_glis'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHl','xiHs','xiCii'};

    case 'Galeopterus_variegatus'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHl','xiHs','xiHn','xiCii'};

    case 'Daubentonia_madagascariensis'
      climate = {'A'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};

    case 'Propithecus_diadema'
      climate = {'Aw','Cwa','Cwb'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Microcebus_murinus'
      climate = {'Aw','BSh'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiCii'};

    case 'Lepilemur_mustelinus'
      climate = {'Cwa','Cwb'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH'};

    case 'Varecia_variegata'
      climate = {'Am'};
      ecozone = {'TPam'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHs'};

    case 'Nycticebus_coucang'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH','xiCim','xiCvbe'};

    case 'Loris_tardigradus'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiCii'};

    case 'Galago_senegalensis'
      climate = {'Aw','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};

    case 'Tarsius_tarsier'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiCii'};

    case 'Callithrix_pygmaea'
      climate = {'Af'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHs','xiCii','xiCvr','xiCvbe'};

    case 'Callithrix_jacchus'
      climate = {'Af','BSh'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHe','xiCii','xiCvbe'};

    case 'Leontopithecus_rosalia'
      climate = {'Af'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHn','xiHs','xiCii','xiCvbe'};

    case 'Aotus_trivirgatus'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH','xiCii','xiCvbe'};

    case 'Pithecia_pithecia'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH','xiCii','xiCvm','xiCvb'};

    case 'Cebus_capucinus'
      climate = {'A'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH','xiCi','xiCv'};

    case 'Saimiri_sciureus'
      climate = {'Af','Am'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHs','xiCii'};

    case 'Alouatta_palliata'
      climate = {'Af','Am'};
      ecozone = {'TN'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHl'};

    case 'Chlorocebus_aethiops'
      climate = {'Am','Cs','Cw'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};

    case 'Papio_hamadryas'
      climate = {'BWh','BSh'};
      ecozone = {'TPa'};
      habitat = {'0iTa','0iTd','0iTi'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};

    case 'Nasalis_larvatus'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHl'};

    case 'Macaca_fascicularis'
      climate = {'Af','Am'};
      ecozone = {'TPi'};
      habitat = {'0iTf','0iTg','0iTi'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};

    case 'Macaca_mulatta'
      climate = {'Am','BSh','Cwa','Cfa'};
      ecozone = {'TPi'};
      habitat = {'0iTf','0iTg','0iTa','0iTi'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};

    case 'Hylobates_lar'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHs','xiHl','xiCii'};

    case 'Symphalangus_syndactylus'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHs','xiHl','xiCii'};

    case 'Pongo_pygmaeus'
      climate = {'Af'};
      ecozone = {'TPi'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiHs','xiHl','xiHn','xiCii'};

    case 'Gorilla_gorilla'
      climate = {'Am','Aw'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiH','xiCi'};

    case 'Pan_troglodytes'
      climate = {'Am','Aw'};
      ecozone = {'TPa'};
      habitat = {'0iTf'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};

    case 'Homo_sapiens'
      climate = {'A','B','C','D'};
      ecozone = {'TH','TN','TP','TA'};
      habitat = {'0iT'};
      embryo  = {'Tv'};
      migrate = {}; 
      food    = {'bxM','xiO'};
      
    otherwise
      climate = {};
      ecozone = {};
      habitat = {};
      embryo  = {};
      migrate = {};
      food    = {};
  end

  if isempty(climate) && isempty(ecozone) && isempty(habitat) &&  isempty(migrate) && isempty(food)
    fprintf (['Warning from get_eco: all ecological specifications of ', taxon, ' are empty\n'])
  end
