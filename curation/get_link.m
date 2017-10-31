%% get_link
% gets links to web-pages for AmP entries

%%
function [links info] = get_link(taxon, test)
% created 2017/06/14 by Bas Kooijman, modified 2017/07/11

%% Syntax
% [links info] = <get_link *get_link*>(taxon, test)

%% Description
% Gets cell strings with links and descriptions for an entry and can test presence of webpages.
%
% Input:
%
% * taxon: character string with name of an entry
% * test: optional boolean for testing existence of web pages (default 0)
%
% Output:
%
% * links: (n,2)-cell array with links and names for links
% * info: (n,1)-matrix with true of false for existence of web pages (1's if test = 0)

%% Remarks
% empty ID links are removed from output; ID links are all empty if entry is not listed, but warning is given
% testing might take long time (therefore default 0)
%
% Potential general web sites:
%
% * EoL is most complete 
% * CoL: edition 2017 is used
% * AWD: strong American bias, wierd common names
% * Taxonomicon: Sheila.Brands@utxs.com; Sheila.Brands@multiweb.nl
% * Wikipedia: if it has not the entry name, a higher taxon is selected
% * WoRMS only has marine species, such as the polar bear, but no other bears; inconsistent presence for freshwater plankton
%
% Potential taxon-specific web sites:
%
% * molluscabase only has molluscs
% * fishbase only has fish
% * amphibiaseweb only has amphibians
% * ReptileDB only has reptiles (no dino's)
% * Avibase only has birds
% * MSW3 only has mammals
% * AnAge only works well for tetrapods; ulread for AnAge is always successful, but <20000 long if entry does not exist

%% Example of use
% links = get_link('Daphnia_magna')

  % texts to supplement taxon for various websites
  taxon_fish = [strrep(taxon,'_','-'), '.html'];         % used in fishbase
  taxon_amph = strrep(taxon,'_','+');                    % used in amphibiaweb
  taxon_rep = ['genus=', strrep(taxon,'_','&species=')]; % used in reptileDB

  % default identifiers
  id_Wiki = taxon;  id_ADW = taxon; id_CoL = ''; id_EoL = ''; id_Taxo = ''; id_WoRMS = ''; % general sites
  id_molluscabase = ''; id_fishbase = ''; id_amphweb = ''; id_ReptileDB = ''; id_avibase = ''; id_MSW3 = ''; id_AnAge = ''; % taxon-specific sites

  switch taxon % overwrite id's if necessary, assign empty to delete (at bottom)
    case 'Haliclona_oculata'
      id_CoL = '91f72133c6f354d688695e8755c95e32';
      id_WoRMS = '289593';
      id_Taxo = '11495';
      id_EoL = '45316178';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Chironex_fleckeri'
      id_CoL = 'acb0b861a8a833094a28eb241f5d6668';
      id_WoRMS = '23632';
      id_Taxo = '11821';
      id_EoL = '200766';      
      
    case 'Hydra_viridissima'
      id_CoL = '19190e1a47af46b36c952ecf9b80588d';
      id_WoRMS = '290156';
      id_Taxo = '11604';
      id_EoL = '1006246';
      
    case 'Pelagia_noctiluca'
      id_CoL = 'd46fd9939cd7273ba4caa7f6a44c1e44';
      id_WoRMS = '135305';
      id_Taxo = '11851';
      id_EoL = '203481';
      
    case 'Cyanea_capillata'
      id_CoL = '08804dad0ba263ccf88e072523cd00d9';
      id_WoRMS = '135301';
      id_Taxo = '11855';
      id_EoL = '1005690';
      
    case 'Mastigias_papua'
      id_CoL = 'dbf8c27746d6ab5b080fe529c023a253';
      id_WoRMS = '220485';
      id_Taxo = '458143';
      id_EoL = '203445';
      
    case 'Rhizostoma_octopus'
      id_CoL = 'c73258a81408309516936f312686772a';
      id_WoRMS = '152203';
      id_Taxo = '11875';
      id_EoL = '2552541';
      
    case 'Lychnorhiza_lucerna'
      id_CoL = '46556d3c743bdb6db72206faaca92672';
      id_WoRMS = '290320';
      id_Taxo = '451574';
      id_EoL = '203436';
      
    case 'Ptilosarcus_gurneyi'
      id_CoL = '19dd87c4059f3e0d7b8ee05643419b23';
      id_WoRMS = '290947';
      id_Taxo = '114546';
      id_EoL = '199466';
      
    case 'Mnemiopsis_leidyi'
      id_CoL = '1c0c292c0300677f3bce686e31495b3e';
      id_WoRMS = '106401';
      id_Taxo = '12339';
      id_EoL = '393337';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Bolinopsis_mikado'
      id_CoL = '266955574f36a9262c06633951a8c034';
      id_WoRMS = '265201';
      id_Taxo = '86084';
      id_Wiki = 'Bolinopsis_infundibulum';
      id_EoL = '393328';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Callianira_antarctica'
      id_CoL = '303f7a8417f250f9b9d1cbc77fc060cf';
      id_WoRMS = '265170';
      id_Taxo = '290691';
      id_Wiki = 'Callianira_(ctenophore)';
      id_EoL = '45502494';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Pleurobrachia_pileus'
      id_CoL = '3ddfb02d1f60caec8189823cc007b893';
      id_WoRMS = '106386';
      id_Taxo = '12311';
      id_EoL = '393310';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Pleurobrachia_bachei'
      id_CoL = 'ea157b9c6d94ac452e22b094c2d3c211';
      id_WoRMS = '265191';
      id_Taxo = '12310';
      id_EoL = '393303';
      
    case 'Beroe_gracilis'
      id_CoL = 'd2a147385e1eacebb447e4f9e1558f1e';
      id_WoRMS = '106361';
      id_Taxo = '167446';
      id_Wiki = 'Beroe_(ctenophore)';
      id_EoL = '509862';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Beroe_ovata'
      id_CoL = 'c70014071bb5de21dca3ec0d826bb274';
      id_WoRMS = '106362';
      id_Taxo = '167447';        
      id_EoL = '45502754';
      id_ADW = ''; % not present at 2017/08/09

    case 'Symsagittifera_roscoffensis'
      id_CoL = '4115a356141cdb139611c3b87899630c';
      id_WoRMS = '484585'; 
      id_Taxo = '201059';  
      id_ADW = ''; % not present at 2017/09/24
      id_EoL = '5012595'; 

    case 'Moniliformis_dubius'
      id_CoL = '2db31682f5ec69386b23ea4212b709b1';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '14700';
      id_Wiki = 'Moniliformis_moniliformis';
      id_EoL = '481468';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Asplanchna_girodi'
      id_CoL = '7ef4175c71766debbf941dc6e2476c02';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '114748';  
      id_Wiki = 'Rotifera';
      id_EoL = '1062479';
      
    case 'Brachionus_plicatilis'
      id_CoL = 'c1847141382c50836d8cf6c9cea31e71';
      id_WoRMS = '134982';
      id_Taxo = '91556'; 
      id_EoL = '1062516';
      
    case 'Aspidiophorus_polystictos'
      id_CoL = '88edfcced5860e504db0c2d25d801715';
      id_WoRMS = '114471';
      id_Taxo = '';  % not present 2017/06/15 
      id_Wiki = 'Gastrotricha';
      id_EoL = '510013';
      
    case 'Schmidtea_polychroa'
      id_CoL = '032a02867df5f7a953bd3c02edd02523';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15
      id_EoL = '595706'; % present as Dugesia polychroa
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Baikaiobia_guttata'
      id_CoL = ''; % not present 2017/09/17
      id_WoRMS = ''; % not present 2017/09/17 
      id_Taxo = '';  % not present 2017/09/17
      id_EoL = ''; % not present 2017/09/17
      id_ADW = ''; % not present 2017/09/17
      id_Wiki = 'Tricladia';

    case 'Magellania_fragilis'
      id_CoL = '397256b281a713c08dd827ce925a4418';
      id_WoRMS = '235668';
      id_Taxo = '991609'; % unaccepeted, to Aerothyris fragilis
      id_Wiki = 'Brachiopoda';
      id_EoL = '7011791';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Phoronis_pallida'
      id_CoL = '3d20b39a5cdcd6ae450a423e58efe977';
      id_WoRMS = '128551';
      id_Taxo = '40609'; 
      id_Wiki = 'Phoronidea';
      id_EoL = '512282';
      
    case 'Flustra_foliacea'
      id_CoL = 'fd374d545f72678ced74b5f86d54deba';
      id_WoRMS = '111367';
      id_Taxo = '40579';        
      id_EoL = '600545';
      
    case 'Myzostoma_cirriferum'
      id_CoL = ''; % not present 2017/09/16
      id_WoRMS = '130336';
      id_Taxo = '114628'; % not accepted, to Myzostomum cirriferum Leuckart, 1827 
      id_EoL = '2967081';
      id_ADW = 'Myzostomum_cirriferum';

    case 'Capitella_teleta'
      id_CoL = 'fd9aa8aa73aaf17bae632c52a561664d';
      id_WoRMS = '592089';
      id_Taxo = ''; % not present 2017/06/15        
      id_EoL = '44282278';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Neanthes_arenaceodentata'
      id_CoL = '36d20e9543e6c676d401c4a73d140d5e';
      id_WoRMS = '334084';
      id_Taxo = '480714'; 
      id_EoL = '458741';
      id_Wiki = 'Nereididae';
      
    case 'Arenicola_marina'
      id_CoL = '8981bb1d5f3ba68ed39eec35e0104438';
      id_WoRMS = '129868';
      id_Taxo = '15271';        
      id_EoL = '486136';
      
    case 'Urechis_caupo'
      id_CoL = '6588e0703aeed419f42bfe94280334ac';
      id_WoRMS = '266874';
      id_Taxo = '15653'; 
      id_EoL = '512273';
      id_Wiki = 'Echiura';
      
    case 'Dendrobaena_octaedra'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '2907467';   
      id_Wiki = 'Annelida';
      id_EoL = '3126867';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Lumbricus_terrestris'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '15563';  
      id_EoL = '3126801';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Octolasion_cyaneum'
      id_CoL = 'c39d48b8d317b85403b3500a610f0be7';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '140609';        
      id_Wiki = 'Annelida';
      id_EoL = '3140066';
      
    case 'Aporrectodea_longa'
      id_CoL = '6ba7cb1f971e29fa5b0489de565d4109';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15        
      id_Wiki = 'Annelida';
      id_EoL = '3126993';
      
    case 'Eisenia_fetida'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '15557'; % Eisenia_foetida  preferred    
      id_EoL = '3126934';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Barbronia_weberi'
      id_CoL = '6deb30d583228d87219b6ddb697b8192';
      id_WoRMS = ''; % not present 2017/09/18 
      id_Taxo = '103702';  
      id_EoL = '3139989';
      id_Wiki = 'Erpobdelliformes'; 
      
    case 'Lepidochitona_cinerea'
      id_CoL = '75dec12407157ff88b7093da4cd037b8';
      id_WoRMS = '152774';
      id_Taxo = '114600';  
      id_EoL = '451167';
      id_molluscabase = '152774';
      
    case 'Mya_arenaria'
      id_CoL = 'b8018df2338b52a3f82bb35f20327198';
      id_WoRMS = '140430';
      id_Taxo = '39960';        
      id_EoL = '492903';      
      id_molluscabase = '140430';
      
    case 'Arctica_islandica'
      id_CoL = '5c0583f70d0785993185a7411b8a4cae';
      id_WoRMS = '138802';
      id_Taxo = '39737';        
      id_EoL = '493164';     
      id_molluscabase = '138802';
      
    case 'Sphaerium_corneum'
      id_CoL = 'd6cc7df13f1f1d9a37cbd8ff86c9a824';
      id_WoRMS = ''; % not present at 2017/10/04
      id_Taxo = '39602';        
      id_EoL = '493224'; % unaccpeted, to Sphaerium asiaticum     
      id_molluscabase = '181564';
      
    case 'Tridacna_gigas'
      id_CoL = '4eb8d942654a006b5458b02e3a2c137b';
      id_WoRMS = '207670';
      id_Taxo = '39920';        
      id_EoL = '2926830';      
      id_molluscabase = '207670';
      
    case 'Cerastoderma_edule'
      id_CoL = '2af65e2b505c0c8b54696e3d1a6ae6cc';
      id_WoRMS = '138998';
      id_Taxo = '39793';        
      id_EoL = '395985';      
      id_molluscabase = '138998';
      
    case 'Cerastoderma_glaucum'
      id_CoL = '8388202a26e5db4db1e1b11e113dd6a7';
      id_WoRMS = '138999';
      id_Taxo = '84902';        
      id_EoL = '590197';      
      id_molluscabase = '138999';
      
    case 'Spisula_subtruncata'
      id_CoL = '645d5bc0059ac916901c819a2e8ac614';
      id_WoRMS = '140302'; 
      id_Taxo = '39755';        
      id_EoL = '448797';
      id_Wiki = 'Spisula';     
      id_molluscabase = '140302';
      
    case 'Macoma_balthica'
      id_CoL = '7752e8e469ee3f69471f23a73bb94786';
      id_WoRMS = '141579'; % unaccepeted, to Limecola balthica (Linnaeus, 1758)
      id_Taxo = '39503';        
      id_EoL = '590151';      
      id_molluscabase = '141579';
      
    case 'Ruditapes_philippinarum'
      id_CoL = '020b3f1b4179f488782e4d69d7dc071f';
      id_WoRMS = '231750';
      id_Taxo = '39617';        
      id_EoL = '395921';
      id_ADW = ''; % not present at 2017/08/09
      
      id_molluscabase = '231750';
    case 'Ruditapes_decussatus'
      id_CoL = 'd288b9f0f3748a3f1555be799829a11f';
      id_WoRMS = '231749';
      id_Taxo = '139552';        
      id_EoL = '3060328';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '231749';
      
    case 'Dosinia_exoleta'
      id_CoL = '98038a896a55c991e0cc4262dcca1c32';
      id_WoRMS = '141911';
      id_Taxo = '39650';        
      id_EoL = '395922';      
      id_molluscabase = '141911';
      
    case 'Mytilopsis_sallei'
      id_CoL = '5e451e2ac36ade42130a9909b0979122';
      id_WoRMS = '397147';
      id_Taxo = '135649'; % only genus level 2017/07/21       
      id_EoL = '493167';      
      id_molluscabase = '397147';
      
    case 'Ensis_directus'
      id_CoL = '9535725bdbecb2f76d4461dc8a747406';
      id_WoRMS = '140732';
      id_Taxo = '39468';        
      id_EoL = '448700';     
      id_molluscabase = '933783';
      
    case 'Echyridella_menziesii'
      id_CoL = '1467382d3ab24e1ca4e76417fc858224';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15
      id_EoL = '4752438';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '819815';
      
    case 'Anodonta_cygnea'
      id_CoL = '932770a8167ab3658dfb0e0c4e98278b';  
      id_WoRMS = '234103'; % unaccepted, to Anadonta_anatina
      id_Taxo = '39445';   
      id_EoL = '4749280';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '234103';
      
    case 'Westralunio_carteri'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15
      id_EoL = '7262151';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '818635'; % only at genus level
      
    case 'Argopecten_purpuratus'
      id_CoL = 'be54afd1d214780315c063fa0def0756';
      id_WoRMS = '394269';
      id_Taxo = ''; % not present 2017/06/15             
      id_EoL = '4739393';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '394269';
      
    case 'Pecten_maximus'
      id_CoL = 'cfba025bc7568aa8054058b764da5484';
      id_WoRMS = '140712';
      id_Taxo = '39421';        
      id_EoL = '449733';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '140712';
      
    case 'Chlamys_islandica'
      id_CoL = '03df3956fb490ebd6d6e757b5ac9377d';
      id_WoRMS = '140692';
      id_Taxo = '39391';        
      id_EoL = '449763';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '140692';
      
    case 'Magallana_gigas'
      id_CoL = '93190b1650de88982e0161577b8b6a7e'; 
      id_WoRMS = '836033'; 
      id_Taxo = '39283'; % present as Crassostrea gigas      
      id_EoL = '451579'; % present as Crassostrea gigas
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '140656'; 
      
    case 'Ostrea_edulis'
      id_CoL = '3063d7e4904e854f23e2d5ac9861a140';
      id_WoRMS = '140658';
      id_Taxo = '39291';        
      id_EoL = '449502';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '140658';
      
    case 'Perna_viridis'
      id_CoL = '6ef2899719ea0ddf2c7310cb868c9927';
      id_WoRMS = '367822';
      id_Taxo = '39229';        
      id_EoL = '3110205';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '367822';
      
    case 'Mytilus_edulis'
      id_CoL = 'fd90faaa60b00c787b864db5935122a0';
      id_WoRMS = '140480';
      id_Taxo = '39226';        
      id_EoL = '449959';      
      id_molluscabase = '140480';
      
    case 'Mytilus_californianus'
      id_CoL = '073e0f457f10e18f5ea034cfe0c48c20';
      id_WoRMS = '140481';
      id_Taxo = '39225';        
      id_EoL = '449960';       
      id_molluscabase = '367837';
      
    case 'Mytilus_galloprovincialis'
      id_CoL = '04790e322405f377d0e822187e2d7404';
      id_WoRMS = '140481';
      id_Taxo = '39227';
      id_EoL = '449961';       
      id_molluscabase = '140481';
      
    case 'Mytilus_trossulus'
      id_CoL = 'b22222da5f4fd8e0e68afc05d8705c9b';
      id_WoRMS = '140482';
      id_Taxo = '81556';        
      id_EoL = '578868';       
      id_molluscabase = '140482';
      
    case 'Brachidontes_pharaonis'
      id_CoL = '7e58b93994497ead236dd02370e5c733';
      id_WoRMS = '140437';
      id_Taxo = ''; % not present 2017/06/15        
      id_EoL = '2972795';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '140437';
      
    case 'Mytilaster_minimus'
      id_CoL = 'bf5b0501c3db505732b751a445a2396d';
      id_WoRMS = '140478';
      id_Taxo = ''; % not present 2017/06/15          
      id_EoL = '2972843';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '140478';
      
    case 'Septifer_virgatus'
      id_CoL = '755768b01e8324c1c8e620dd1153a5ed'; % unaccepted, to Mytilisepta virgata (Wiegmann, 1837)
      id_WoRMS = '367774'; % unaccepted, to Mytilisepta virgata (Wiegmann, 1837)
      id_Taxo = ''; % not present 2017/06/15
      id_Wiki = 'Mytilidae';
      id_EoL = '3110167';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '367774';
      
    case 'Pinctada_margaritifera'
      id_CoL = '4c8d85c6f008d3ce9c479af1a0f99e4f'; 
      id_WoRMS = '207899'; 
      id_Taxo = '39257';
      id_EoL = '468594';       
      id_molluscabase = '207899';
      
    case 'Patella_vulgata'
      id_CoL = 'b6d47c01f8b1aac2e8d612029dec8807';
      id_WoRMS = '140685';
      id_Taxo = '34642';        
      id_EoL = '401252';       
      id_molluscabase = '140685';
      
    case 'Gibbula_umbilicalis'
      id_CoL = 'e5837ae66f8b757e82aa6181db535ab8';
      id_WoRMS = '141801';
      id_Taxo = '34750';        
      id_EoL = '619551';       
      id_molluscabase = '141801';
      
    case 'Phorcus_lineatus'
      id_CoL = '5d915d529f45e7c60979e383f2ef5333';
      id_WoRMS = '689176';
      id_Taxo = ''; % not present 2017/06/15       
      id_EoL = '619858';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '689176';
      
    case 'Urosalpinx_cinerea'
      id_CoL = '854e3a6612913ce60ea981e0048635e4';
      id_WoRMS = '140429';
      id_Taxo = '36285';        
      id_EoL = '503335';       
      id_molluscabase = '140429';
      
    case 'Buccinum_undatum'
      id_CoL = '1e9490fd92636d74588b2fc5f0870e54';
      id_WoRMS = '138878';
      id_Taxo = '36715';        
      id_EoL = '595071';       
      id_molluscabase = '138878';
      
    case 'Adelomelon_brasiliana'
      id_CoL = 'db2a0271d654038c6f5c9c5108c38d23';
      id_WoRMS = '759016';
      id_Taxo = ''; % not present 2017/06/15            
      id_EoL = '4845771';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '759016';
      
    case 'Littorina_littorea'
      id_CoL = '8937d1f10190ce22541aa498ba4773c6';
      id_WoRMS = '140262';
      id_Taxo = '35203';        
      id_EoL = '619396';       
      id_molluscabase = '140262';
      
    case 'Crepidula_fornicata'
      id_CoL = 'cb8d13d370be3253d988a29585db934d';
      id_WoRMS = '138963';
      id_Taxo = '35525';        
      id_EoL = '593855';       
      id_molluscabase = '138963';
      
    case 'Euspira_nitida'
      id_CoL = '79649390454e2a5fc41c8ea2ed2faaaf';
      id_WoRMS = '151894';
      id_Taxo = ''; % not present 2017/06/15        
      id_EoL = '6990612'; 
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '151894';
      
    case 'Potamopyrgus_antipodarum'
      id_CoL = 'a25261f237f8c34efe70e335ed0fe1fc';
      id_WoRMS = '147123';
      id_Taxo = '155529';        
      id_EoL = '586334';       
      id_molluscabase = '147123';
      
    case 'Aplysia_californica'
      id_CoL = '79cd7dad3cdb7a458fa58a0a77eb939c';
      id_WoRMS = '240765';
      id_Taxo = ''; % not present 2017/06/15         
      id_EoL = '451984';       
      id_molluscabase = '240765';
      
    case 'Clione_limacina'
      id_CoL = 'ccdf4eb106a21eed81a0df1e7d2ca725';
      id_WoRMS = '139178';
      id_Taxo = '38184';        
      id_EoL = '451920';       
      id_molluscabase = '139178';
      
    case 'Cuthona_nana'
      id_CoL = '49690556f98ee422c43965e6f9691394';
      id_WoRMS = '141627';
      id_Taxo = ''; % not present 2017/06/15          
      id_EoL = '451572';      
      id_molluscabase = '141627';
      
    case 'Lymnaea_stagnalis'
      id_CoL = 'ea77dedfde3d3bd9b1d45805c6cde119';
      id_WoRMS = ''; % not present 2017/06/15  
      id_Taxo = '38499';      
      id_EoL = '453306';       
      id_molluscabase = '181582';
      
    case 'Stagnicola_palustris'
      id_CoL = 'aa6c1e75fc6f19f056a2c6ca08a23218';
      id_WoRMS = ''; % not present 2017/06/15    
      id_Taxo = '';  % not present 2017/06/15 
      id_EoL = '3013056';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '594993';
      
    case 'Biomphalaria_glabrata'
      id_CoL = 'dda69fe8d4ca69ea96e9656a8f4ad747';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '125350';    
      id_EoL = '452452';       
      id_molluscabase = '848622';
      
    case 'Planorbis_planorbis'
      id_CoL = '18d8f8532b36c262662e2410d1847bd4';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '38526';    
      id_EoL = '2979529';
      id_ADW = 'Planorbis'; % only present at genus level
      id_molluscabase = '182693';
      
    case 'Achatina_achatina'
      id_CoL = '8dbb31a2c43f4fdceea9d8c5d3fcacce';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '38688'; 
      id_EoL = '4891973';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '820077';
      
    case 'Ambigolimax_valentianus'
      id_CoL = '48ae5a4fa1b68bfac1581bf9a1914065';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15
      id_EoL = '40043389';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '819990';
      
    case 'Cornu_aspersum'
      id_CoL = 'be1016122f1c597b37092a9c8b64aa6c';
      id_WoRMS = ''; % not present 2017/06/15  
      id_Taxo = '38975'; % present as  Helix aspersa M�ller, 1774           
      id_EoL = '449907'; % present as  Helix aspersa M�ller, 1774    
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '820000';
      
    case 'Helix_pomatia'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '168261'; 
      id_EoL = '46373408';      
      id_molluscabase = '1000986';
      
    case 'Cernuella_virgata'
      id_CoL = 'd41e57b1f4e04a94f51b47b212c3d36b';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '308419';  
      id_EoL = '592444';       
      id_molluscabase = '426375';
      
    case 'Nautilus_pompilius'
      id_CoL = '9623f8e059399835d352956174dc024b';
      id_WoRMS = '216384';
      id_Taxo = '40101';        
      id_EoL = '590944';       
      id_molluscabase = '216384';
      
    case 'Sepia_officinalis'
      id_CoL = '22353d7f2941918fea5661dde05d0321';
      id_WoRMS = '141444';
      id_Taxo = '169813';        
      id_EoL = '448836';       
      id_molluscabase = '141444';
      
    case 'Sepiola_atlantica'
      id_CoL = '44669098315cfbb641688d3fc48a8506';
      id_WoRMS = '141454';
      id_Taxo = '40221';        
      id_EoL = '448833';       
      id_molluscabase = '141454';
      
    case 'Sepietta_obscura'
      id_CoL = 'ff971eddd33e29318b793c02a46fe304';
      id_WoRMS = '141451';
      id_Taxo = ''; % not present 2017/06/15 
      id_Wiki = 'Sepietta_petersi'; % unaccepted, to Sepiola petersi Steenstrup, 1887
      id_EoL = '591176';
      id_ADW = ''; % not present at 2017/08/09
      id_molluscabase = '141451';
      
    case 'Euprymna_hyllebergi'
      id_CoL = '3fb01720b80e6677d2c8ff92d9908d60';
      id_WoRMS = '410361';
      id_Taxo = '157825';        
      id_EoL = '489601';       
      id_molluscabase = '410361';
      
    case 'Doryteuthis_pealeii'
      id_CoL = '71883eecc1e2f28199a9a79d82085fbf';
      id_WoRMS = '410354';
      id_Taxo = '157870'; % present as Loligo pealeii   
      id_EoL = '448839';
      id_ADW = 'Loligo_pealeii'; 
      id_molluscabase = '574541';
      
   case 'Octopus_cyanea'
      id_CoL = '8e622e1b7f9777d3f33c42f52836d21a';
      id_WoRMS = '210788';
      id_Taxo = '158218';        
      id_EoL = '593207';       
      id_molluscabase = '210788';
      
    case 'Octopus_maya'
      id_CoL = '01fe079c62706c970beb455711158713';
      id_WoRMS = '341996';
      id_Taxo = '158249';
      id_Wiki = 'Octopus';
      id_EoL = '492848';       
      id_molluscabase = '341996';
      
    case 'Octopus_vulgaris'
      id_CoL = '68dbab9ebc28639002befc34e2ffe516';
      id_WoRMS = '140605';
      id_Taxo = '40350';        
      id_EoL = '492280';       
      id_molluscabase = '140605';
      
    case 'Octopus_mimus'
      id_CoL = '1b66339c2aa57d497ce240b3401d2b30';
      id_WoRMS = '342001';
      id_Taxo = '158255';        
      id_EoL = '593211';       
      id_molluscabase = '342001';
      
    case 'Ferosagitta_hispida'
      id_CoL = '5fa5c1982af0297dfe25875928c2570c';
      id_WoRMS = '105454'; 
      id_Taxo = '40644';  
      id_Wiki = 'Chaetognatha';
      id_EoL = '512014'; 
      
    case 'Macrobiotus_hufelandii'
      id_CoL = 'cdf5e8f2aaf144fd5170f295c272c445'; % unaccepted, to Macrobiotus_hufelandi
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '15789'; % unaccepted, to Macrobiotus_hufelandi       
      id_Wiki = 'Tardigrada'; 
      id_EoL = '998986'; % present as Macrobiotus hufelandi C.A.S. Schultze, 1834 
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Hypsibius_convergens'
      id_CoL = '779e48ba14edf4787cd08b7e7401e63b';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '421894';        
      id_Wiki = 'Tardigrada';
      id_EoL = '12089749';
       
    case 'Ramazzottius_oberhaeuseri'
      id_CoL = '1bd832ac6d7bb295abbd24520dbf0798';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '104402'; %    
      id_Wiki = 'Tardigrada'; 
      id_EoL = '1023979';      
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Milnesium_tardigradum'
      id_CoL = '063fd91ca8ab9f5dd77628fc62aa3df3';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '104409';    
      id_EoL = '1053491';
       
    case 'Caenorhabditis_elegans'
      id_CoL = '64710e67cd5e7ae09722a643ba747af2';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '13102';   
      id_EoL = '403869';
       
    case 'Pycnogonum_litorale'
      id_CoL = '14c3dd8cde8bf89b963bc7436dc0ec59'; % present as Pycnogonum_littorale
      id_WoRMS = '239867';
      id_Taxo = '17077'; % present as Pycnogonum_littorale
      id_Wiki = 'Pycnogonum';
      id_EoL = '511865';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Smeringurus_mesaensis'
      id_CoL = '5ac22e6a79875de9dd358275269bf959';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '87088';  % only as genus 2017/06/15      
      id_Wiki = 'Vaejovidae';
      id_EoL = '3195557';
       
    case 'Rhizoglyphus_robini'
      id_CoL = 'a08d34f3fc91edcfd634888b64706f28';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '143153'; 
      id_Wiki = 'Rhizoglyphus';
      id_EoL = '10409051';
       
    case 'Aglaoctenus_lagotis'
      id_CoL = '4f7f7da06de383e86a5bfe76f10bb859';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '727868';   
      id_Wiki = 'Aglaoctenus';
      id_EoL = '1196373';
       
    case 'Tetragnatha_versicolor'
      id_CoL = '808c85d1f5cdea0a28d4e20a8db931ac';
      id_WoRMS = ''; % not present 2017/09/19
      id_Taxo = '958783';   
      id_Wiki = 'Tetragnatha';
      id_EoL = '1193770';
       
    case 'Cyprideis_torosa'
      id_CoL = 'fd7d758262a28756831f7f8614655d73';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33329';  
      id_Wiki = 'Podocopida';
      id_EoL = '339177';
       
    case 'Triops_longicaudatus'
      id_CoL = 'cd00dfd705355d80c95c024877f73428';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33078';  % present at genus level
      id_EoL = '338945';
       
    case 'Diaphanosoma_brachyurum'
      id_CoL = 'dd213856b4a492a6f01afd65e70991d4';
      id_WoRMS = '234063';
      id_Taxo = '33086';        
      id_Wiki = 'Cladocera';
      id_EoL = '338857';
       
    case 'Bosmina_longirostris'
      id_CoL = '869bccad902dfe087fefb3d7f87982d8';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33116';    
      id_EoL = '340964';
       
    case 'Eubosmina_coregoni'
      id_CoL = 'dfa6a62de551465c295c3a3279b152b6'; % present as Bosmina_coregoni
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33115'; % present as Bosmina_coregoni       
      id_Wiki = 'Bosmina';
      id_EoL = '1020250';
       
    case 'Chydorus_sphaericus'
      id_CoL = 'bf9a53b5d704a17c593c845f6e8d08cb';
      id_WoRMS = '148406';
      id_Taxo = '33122'; 
      id_Wiki = 'Cladocera';
      id_EoL = '1020238';
       
    case 'Pleuroxus_aduncus'
      id_CoL = '4ab9e9fd2808c0e605b8e794b9199627';
      id_WoRMS = '148397';
      id_Taxo = '156250';        
      id_Wiki = 'Cladocera';
      id_EoL = '338841';
       
    case 'Pleuroxus_striatus'
      id_CoL = '871ff4ce4fa9b1d8376330527902db45'; % present as Pleuroxus_striatoides, but the same?
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15
      id_Wiki = 'Cladocera';
      id_EoL = '1041337'; % unaccepted, to Picripleuroxus striatus
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Ceriodaphnia_pulchella'
      id_CoL = '8c950c5099d7368e2c5d026dc079a5e9';
      id_WoRMS = '148395';
      id_Taxo = '156175';        
      id_Wiki = 'Cladocera';
      id_EoL = '338938';
       
    case 'Ceriodaphnia_dubia'
      id_CoL = 'b7129a03be4a413d639f0bf4ade8d684';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '156172';        
      id_EoL = '338927';
       
    case 'Daphnia_cucullata'
      id_CoL = '3eb62cdbb1d096da9cfcabc1b19e18aa';
      id_WoRMS = '148371';
      id_Taxo = '33101';        
      id_Wiki = 'Daphnia_(subgenus)';
      id_EoL = '1020230'; 
       
    case 'Daphnia_longispina'
      id_CoL = '44a6d655825ccabe0b380c15cc884bc4';
      id_WoRMS = '148373';
      id_Taxo = '33104';        
      id_Wiki = 'Daphnia_(subgenus)';
      id_EoL = '338543'; 
      id_ADW = ''; % not present at 2017/08/23

    case 'Daphnia_hyalina'
      id_CoL = '29d9d22b0b26cf7307af8c0faaa8cf06';
      id_WoRMS = '148374';
      id_Taxo = '33101';        
      id_Wiki = 'Daphnia_(subgenus)';
      id_EoL = '1039288';
       
    case 'Daphnia_magna'
      id_CoL = 'e44e0a35c2cdb085859074a9fe73abdf';
      id_WoRMS = '148372';
      id_Taxo = '33105';        
      id_EoL = '1020231';
       
    case 'Daphnia_pulex'
      id_CoL = '1274b0b445ebb1c66cc1c92f024359f4';
      id_WoRMS = '148375';
      id_Taxo = '33106';        
      id_EoL = '338871';
       
    case 'Scapholeberis_mucronata'
      id_CoL = '986bcd982c77ba4c25548ad2906f3f49';
      id_WoRMS = '148398';
      id_Taxo = '33110';        
      id_Wiki = 'Cladocera';
      id_EoL = '128488';
       
    case 'Simocephalus_serrulatus'
      id_CoL = 'c80b9c7571c8f66720bdd1978b6df130';
      id_WoRMS = '412852';
      id_Taxo = '156184';        
      id_Wiki = 'Cladocera';
      id_EoL = '327098';
       
    case 'Moina_macrocopa'
      id_CoL = '64f7d7cf39f36560a5224e6faa2ecca8'; % present as Leptodora_kindti
      id_WoRMS = ''; % not present at 2017/09/18
      id_Taxo = '156186';        
      id_EoL = '1020228';
      id_Wiki = 'Moina';
       
    case 'Leptodora_kindtii'
      id_CoL = 'd8f23f51d85cb363bede2f3632517e87'; % present as Leptodora_kindti
      id_WoRMS = '247980';
      id_Taxo = '33097';        
      id_EoL = '327210';
      id_Wiki = 'Leptodora';
       
    case 'Nitokra_spinipes'
      id_CoL = '0747856e47615f0c02503a3612915bd8';
      id_WoRMS = '745852';
      id_Taxo = '203273';  % only present at genus level 2017/07/10    
      id_EoL = '1020994';
       
    case 'Acanthocyclops_robustus'
      id_CoL = 'd63a685097756b1c2cf45229db57cac0';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '107247';  % only present at genus level 2017/09/26   
      id_Wiki = 'Acanthocyclops';
      id_EoL = '1025087';
       
    case 'Cyclops_vicinus'
      id_CoL = '3665f193e29e67b5f91a61c8f72b79e8';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '125392';        
      id_Wiki = 'Cyclops_(genus)';
      id_EoL = '339864';
       
    case 'Mesocyclops_leukarti'
      id_CoL = 'eb76a8aa998d1b3614cbeef939cbe8a5';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '124982';        
      id_Wiki = 'Mesocyclops';
      id_EoL = '339717';
       
    case 'Calanus_sinicus'
      id_CoL = '522187c194196c1a2931e0e054be2ebe';
      id_WoRMS = '346214';
      id_Taxo = '33568'; % only present at genus level 2017/09/26      
      id_Wiki = 'Calanus';
      id_EoL = '1039703';
       
   case 'Eurytemora_affinis'
      id_CoL = 'b3cd8223fe63cbb356fab69438d3a23d';
      id_WoRMS = '104872';
      id_Taxo = '143915'; % only present at genus level 2017/09/26                   
      id_Wiki = 'Temoridae';
      id_EoL = '1020941';
       
   case 'Lepeophtheirus_salmonis'
      id_CoL = '6df2ffbaf945346ec014bded8680bb67';
      id_WoRMS = '135782';
      id_Taxo = '206162'; % only present at genus level 2017/09/26          
      id_EoL = '1020941';
       
    case 'Asellus_aquaticus'
      id_CoL = '4acab09868db831471b70493b88c5cc0';
      id_WoRMS = '148667';
      id_Taxo = '34250';        
      id_EoL = '343656';
       
    case 'Porcellio_scaber'
      id_CoL = 'f7f2e3aa63418de280d2441a2f50a353';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '34215';
      id_EoL = '128536';
       
    case 'Corophium_volutator'
      id_CoL = '3f0dd1ef46052e07709a147e7e701ed6';
      id_WoRMS = '102101';
      id_Taxo = '34324';        
      id_EoL = '343480';
       
    case 'Gammarus_fossarum'
      id_CoL = '';   % not present 2017/06/15
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15
      id_Wiki = 'Gammarus';
      id_EoL = '4248761';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Gammarus_pseudolimnaeus'
      id_CoL = '46665c47e08b50e65aa372a80c3e2436';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15    
      id_Wiki = 'Gammarus';
      id_EoL = '344046';
       
    case 'Gammarus_pulex'
      id_CoL = '7b6908ae7563c0d764397d8f1cbe6e04';
      id_WoRMS = '819836';
      id_Taxo = '34297';        
      id_EoL = '344717';
       
    case 'Gammarus_roeselii' 
      id_CoL = '';   % not present 2017/06/15
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15 
      id_EoL = '4248762';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Dikerogammarus_villosus' 
      id_CoL = '';   % not present 2017/10/27
      id_WoRMS = '148586'; 
      id_Taxo = '';  % not present 2017/06/15 
      id_EoL = '3033511';
      id_ADW = ''; % not present at 2017/10/27 
      
    case 'Leptomysis_lingvura'
      id_CoL = 'd9266defb43c8336539b6b24151e1ee1';
      id_WoRMS = '120054';
      id_Taxo = '33032';  % only present at genus level 2017/09/28              
      id_EoL = '1018151';
       
    case 'Hemimysis_speluncola'
      id_CoL = 'db7ac8c44d87726097820b9eac516128';
      id_WoRMS = '120030';
      id_Taxo = '34090'; % only present at genus level 2017/09/28             
      id_EoL = '128022';
       
    case 'Mysis_mixta'
      id_CoL = '75d47759bf7d4d79eaa4107c2c0423c0';
      id_WoRMS = '120113';
      id_Taxo = '34093';  % only present at genus level 2017/09/27            
      id_Wiki = 'Mysis';
      id_EoL = '318325';
       
    case 'Neomysis_integer'
      id_CoL = 'a266c337bd34e09b4734d6562dfc5cdc';
      id_WoRMS = '120136';
      id_Taxo = '34098';              
      id_EoL = '344079';
       
    case 'Praunus_flexuosus'
      id_CoL = '1071b4a0c4807ba65c09222da0ee64e5';
      id_WoRMS = '120177';
      id_Taxo = '34100';  % only present at genus level 2017/09/27            
      id_EoL = '318599';
       
    case 'Euphausia_superba'
      id_CoL = '9b5816e13fe1783d6d65f7075aba514f';
      id_WoRMS = '236217';
      id_Taxo = '33778';        
      id_EoL = '509426';
       
    case 'Meganyctiphanes_norvegica'
      id_CoL = '5f895dc8e3d3fb0271a3c2069716b463';
      id_WoRMS = '110690';
      id_Taxo = '33780';        
      id_EoL = '509431';
       
    case 'Pandalus_borealis'
      id_CoL = 'c5bbc49e17aa816caab84f54cfc001bc';
      id_WoRMS = '158370';
      id_Taxo = '33850';        
      id_EoL = '318602';
       
    case 'Dichelopandalus_bonnieri'
      id_CoL = '7befad821c474e8935f3f3f71bc4a865';
      id_WoRMS = '107643';
      id_Taxo = ''; % not present at 2017/09/01        
      id_EoL = '342557';
      id_Wiki = 'Pandalidae';
       
    case 'Palaemonetes_pugio'
      id_CoL = '56cf1eeaf3d2f8441b8c41906c4c1ab1';
      id_WoRMS = '158370';
      id_Taxo = '125153';
      id_EoL = '343938';
       
    case 'Palaemonetes_varians'
      id_CoL = 'a45817ffd94cf8158afac51a11b0b84e';
      id_WoRMS = '587704';
      id_Taxo = '33867'; % present only at genus level 2017/08/25
      id_EoL = '344117';
       
    case 'Palaemon_elegans'
      id_CoL = 'a86a4f3617fc9fe9b73cc7bde3f3df6a';
      id_WoRMS = '107614';
      id_Taxo = '33864';
      id_EoL = '1021076';
      id_ADW = ''; % not present at 2017/08/25
       
    case 'Crangon_crangon'
      id_CoL = '58d00d89008c1ec63431fabcc112c6bb';
      id_WoRMS = '107552';
      id_Taxo = '33878';        
      id_EoL = '1039673';
      id_ADW = 'Crangon'; % present as genus 2017/08/09
      
    case 'Astacus_astacus'
      id_CoL = '526387756aa5574c4879c6cc114248fd';
      id_WoRMS = ''; % not present at 2017/08/27
      id_Taxo = '33912';        
      id_EoL = '1021866';
      id_ADW = ''; % not present at 2017/08/27

    case 'Pacifastacus_leniusculus'
      id_CoL = '0246f355d08dd93b520e831bea02b11c';
      id_WoRMS = ''; % not present at 2017/08/27
      id_Taxo = '33799';        
      id_EoL = '1021882';

    case 'Homarus_gammarus'
      id_CoL = '53b26b75de1c86582f4b62a79890101b';
      id_WoRMS = '107253';
      id_Taxo = '33906';        
      id_EoL = '1039672';
      id_ADW = ''; % present as genus 2017/08/25

    case 'Homarus_americanus'
      id_CoL = '76584b6df172a0732db03a1a48747248';
      id_WoRMS = '156134';
      id_Taxo = '33905';
      id_EoL = '318853';

    case 'Paralithodes_camtschaticus'
      id_CoL = '4fe446d0accc8a50d042976741fae83e';
      id_WoRMS = '233889';
      id_Taxo = '33964';      
      id_EoL = '342038';

    case 'Pagurus_bernhardus'
      id_CoL = 'd502331f00b985acb856267f87a56af0';
      id_WoRMS = '107232';
      id_Taxo = '33949'; % unaccepted, to Eupagurus bernhardus       
      id_EoL = '1040177';

    case 'Birgus_latro'
      id_CoL = 'd773311cc66949c0a4c2afbcdc728d4c';
      id_WoRMS = '208668';
      id_Taxo = '33958';
      id_EoL = '2982586';

    case 'Macrocheira_kaempferi'
      id_CoL = '4d138f5a5efbda0727be8e513e08d460';
      id_WoRMS = '346131';
      id_Taxo = '34004'; 
      id_EoL = '2924326';
       
    case 'Hyas_coarctatus'
      id_CoL = 'a24ed7fc517569923cb827f0d60a01c5';
      id_WoRMS = '107323';
      id_Taxo = '34000';  % present only at genus level
      id_EoL = '981592';

    case 'Chionoecetes_opilio'
      id_CoL = 'e3de78753186013ed59ab3ac697413ea';
      id_WoRMS = '107315';
      id_Taxo = '75839'; % present only at genus level
      id_EoL = '1025204';

    case 'Carcinus_maenas'
      id_CoL = '182ab1e14f8181b51f406b97feedd219';
      id_WoRMS = '107381';
      id_Taxo = '34023';        
      id_EoL = '128502';
       
    case 'Charybdis_bimaculata'
      id_CoL = '6c1210383c25336b3951f1dec88beeb5';
      id_WoRMS = '442874';
      id_Taxo = '125153';
      id_Wiki = 'Charybdis_(genus)';
      id_EoL = '4267035';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Dissodactylus_primitivus'
      id_CoL = 'c65c93082d671b96cf11dc1f4313c98c';
      id_WoRMS = '422153';
      id_Taxo = ''; % not present at 2017/08/23      
      id_EoL = '342578';
      
    case 'Cancer_pagurus'
      id_CoL = 'f3183ce46e4cc2b2d00c3b4c026b9481';
      id_WoRMS = '107276';
      id_Taxo = '34019';        
      id_EoL = '1022230';

    case 'Eriphia_verrucosa'
      id_CoL = '528fd84a4773fb98b14863274a229cd7';
      id_WoRMS = '107409';
      id_Taxo = '228769'; % present as genus only 2017/07/18      
      id_EoL = '344746';
       
    case 'Isotoma_viridis'
      id_CoL = 'b8137b5e5d97114a5a4b331b9142f963';
      id_WoRMS = ''; % not present 2017/08/29
      id_Taxo = '17266';
      id_EoL = '203778';
      id_ADW = ''; % not present 2017/08/29
      id_Wiki = 'Isotoma_(springtail)';
       
    case 'Folsomia_candida'
      id_CoL = 'bec653e78eb0e5dd43f92cc01e7cbd73';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '1045058';
      id_EoL = '1025638';
       
    case 'Tomocerus_minor'
      id_CoL = 'dd9372bc363da71422ce5d9e7c1f793b';
      id_WoRMS = ''; % not present 2017/08/29
      id_Taxo = '102816';
      id_EoL = '1175608';
       
    case 'Entomobrya_nivalis'
      id_CoL = 'b1175f7c7a603611eac3c00d9cc7ec9a';
      id_WoRMS = ''; % not present 2017/08/29
      id_Taxo = '17270';
      id_EoL = '1022843';
      id_Wiki = 'Entomobryidae';
       
    case 'Orchesella_cincta'
      id_CoL = '4442b746517ac6f609b10c50dc13708a';
      id_WoRMS = ''; % not present 2017/08/29
      id_Taxo = '17272';
      id_EoL = '346716';
       
    case 'Lepidocyrtus_cyaneus'
      id_CoL = 'f386759431721ac00fb630b5b2d5dfdf';
      id_WoRMS = ''; % not present 2017/08/29
      id_Taxo = '102688';
      id_EoL = '346861';
       
    case 'Lepisma_saccharina'
      id_CoL = 'a5b311bccb146809dd1359c610f67f41';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17302';   
      id_EoL = '1022755';
       
    case 'Ecdyonurus_dispar'
      id_CoL = 'fd78ae082fb4e998ad66790ed51fc2b2';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17355'; 
      id_Wiki = 'Heptageniidae';
      id_EoL = '3684138';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Rhithrogena_semicolorata'
      id_CoL = '64430dafc52e724cf544be3fdd703f5a';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17355';        
      id_Wiki = 'Heptageniidae';
      id_EoL = '3684255';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Epeorus_assimilis'
      id_CoL = '43e4d8fe5d2f20a2aed705d41889c1e4';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = ''; % not present 2017/09/02      
      id_Wiki = 'Heptageniidae';
      id_EoL = '3684227';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Oligoneuriella_rhenana'
      id_CoL = '98265cc9272cbad448432d8f8db5f757';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17334';        
      id_Wiki = 'Ephemeroptera';
      id_EoL = '3684447';
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Baetis_rhodani'
      id_CoL = '27a250f72d86b0edd3d3ea324a9130f4';
      id_WoRMS = ''; % not present 2017/07/20
      id_Taxo = '17370';   
      id_EoL = '3683090';
      id_Wiki = 'Baetis';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Cloeon_dipterum'
      id_CoL = 'cb3fd2c1a361461205d2d68285a00177';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17374';   
      id_EoL = '2762484';
       
    case 'Habrophlebia_lauta'
      id_CoL = 'f2103bd7655a5018b3e09c7a4e5197fa';
      id_WoRMS = ''; % not present 2017/08/03
      id_Taxo = '17377';  % only at genus level
      id_EoL = '3683937';
      id_Wiki = 'Habrophlebia';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Locusta_migratoria'
      id_CoL = '9e147038cfb1f0aa33bcd94248a2d984';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '18150';
      id_EoL = '494417';
       
    case 'Acyrthosiphon_pisum'
      id_CoL = '56d87c2d5ce3acb4f039fbc181b69355';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '19482';   
      id_EoL = '588004';
       
    case 'Notonecta_maculata'
      id_CoL = 'bb4bd9d149acf9689ea1e0d64622d566';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '18437'; 
      id_EoL = '612774';
       
    case 'Aedes_aegypti'
      id_CoL = '659d82334ce06794ac14a699fe41bb4d';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '28492'; 
      id_EoL = '41592971';
       
    case 'Chironomus_riparius'
      id_CoL = '714831352ad94741e4321eccdeb29f58';
      id_WoRMS = ''; % not present 2017/09/27
      id_Taxo = '28529';  % only present at genus level 2017/09/27
      id_EoL = '44498235';
       
    case 'Chaoborus_americanus'
      id_CoL = '5dbeb214237206446fda16aaf06120cb';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15
      id_Wiki = 'Chaoborus';
      id_EoL = '741193';
       
    case 'Chaoborus_crystallinus'
      id_CoL = 'a8f2630a5f47ba1deca45e8d986dbcf7';
      id_WoRMS = ''; % not present 2017/07/11
      id_Taxo = '28524';
      id_Wiki = 'Chaoborus';
      id_EoL = '746432';
       
    case 'Plodia_interpunctella'
      id_CoL = '6b0d3d4ddb2f7b52424f8da510c91e10';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '29835';
      id_EoL = '952934';
       
    case 'Bombyx_mori'
      id_CoL = '672e63f0b0571acb1c4299a65a1d256a';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '30426'; 
      id_EoL = '391618';
       
    case 'Manduca_sexta'
      id_CoL = 'ed22ff1ba0332e482333ac955e210c42';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '114444';
      id_EoL = '506145';
       
    case 'Venturia_canescens'
      id_CoL = '25a05f2c5c8f5146d4b515c36d06e089';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '27808';
      id_Wiki = 'Ichneumonoidea';
      id_EoL = '3780488';
       
    case 'Onthophagus_taurus'
      id_CoL = 'a315e9096c5de1872377824cee709d24';
      id_WoRMS = ''; % not present 2017/06/21
      id_Taxo = '26390';
      id_EoL = '46325834';
       
    case 'Asterias_rubens'
      id_CoL = '6d91fa5c1a435bc2c9e5394e5b2478e1';
      id_WoRMS = '123776';
      id_Taxo = '40936'; 
      id_EoL = '598481';
       
    case 'Pisaster_ochraceus'
      id_CoL = '55af8fcb16861cd1292551807b9040ed';
      id_WoRMS = '123867';
      id_Taxo = '40954';        
      id_EoL = '598626';
       
    case 'Astropecten_aranciacus'
      id_CoL = '';
      id_WoRMS = '123856';
      id_Taxo = '40828';        
      id_EoL = '45327530';
      id_ADW = ''; % not present at 2017/09/29
 
    case 'Astropecten_irregularis'
      id_CoL = 'f71b9bd4f4e08ea1d32dcdc33f66a9fa';
      id_WoRMS = '240755';
      id_Taxo = '40829';        
      id_EoL = '598469';
      id_ADW = ''; % not present at 2017/09/25

    case 'Luidia_sarsii'
      id_CoL = 'f49bc17a4e12e74c3dc1095d8fff0654';
      id_WoRMS = '123922';
      id_Taxo = '40808';   % present as Luidia_sarsi       
      id_EoL = '46326605'; % present as Luidia_sarsi

    case 'Archaster_typicus'
      id_CoL = '144f27a0c1868bfa17681085c7e30b41';
      id_WoRMS = '213119';
      id_Taxo = '40840'; 
      id_EoL = '4704992';
      id_ADW = ''; % not present at 2017/10/02
       
    case 'Acanthaster_planci'
      id_CoL = '050716176957e3e3fbdd5a572cf33d1c';
      id_WoRMS = '213289';
      id_Taxo = '40898'; 
      id_EoL = '598484';
       
    case 'Protoreaster_nodosus'
      id_CoL = 'd2d4152c326c838986333c282bfc8473';
      id_WoRMS = '213285';
      id_Taxo = '40858'; % only present at genus level 2017/10/01      
      id_EoL = '4704956';
      id_ADW = ''; % not present at 2017/10/01
       
    case 'Crossaster_papposus'
      id_CoL = '0f28438ad5d2a06cbe0482880c08c2b0';
      id_WoRMS = '124154';
      id_Taxo = '40903';        
      id_EoL = '598562';
       
    case 'Asterina_gibbosa'
      id_CoL = '9bb47cd93065ef4d4f6c5761a3577c47';
      id_WoRMS = '123987';
      id_Taxo = '40883';        
      id_EoL = '45328038';
       
    case 'Odontaster_validus'
      id_CoL = '9da6a4806559abb475558069f7086367';
      id_WoRMS = '172775';
      id_Taxo = '40845';        
      id_EoL = '4704670';
       
    case 'Ophiura_ophiura'
      id_CoL = '51533cab6a045e41ca2485a45486d0f5';
      id_WoRMS = '124929';
      id_Taxo = '41021'; % present as Ophiura texturata 2017/09/23    
      id_EoL = '585896';
       
    case 'Ophiura_albida'
      id_CoL = 'eb0018e354a88294d9dc6f516edd801e';
      id_WoRMS = '124913';
      id_Taxo = '41020';        
      id_EoL = '24082075';
       
    case 'Amphiura_filiformis'
      id_CoL = '03fbc60f382ddfd275761a2c906123c5';
      id_WoRMS = '125080';
      id_Taxo = '40989';        
      id_EoL = '607601';
       
    case 'Clypeaster_subdepressus'
      id_CoL = 'a5e5fc38367a1168a3e799e37dd3de23'; 
      id_WoRMS = '422499'; 
      id_Taxo = '41172'; % only present at genus level 2017/09/03
      id_EoL = '598170';

    case 'Echinocardium_cordatum'
      id_CoL = 'cb42794c2d338d39d5715697f05cbc87'; 
      id_WoRMS = '124392'; 
      id_Taxo = '41169'; 
      id_EoL = '598133';

    case 'Lytechinus_variegatus'
      id_CoL = '59c591cbbdfa738cfe05d045af7cef14'; 
      id_WoRMS = '367850'; 
      id_Taxo = '41124'; 
      id_EoL = '599644';
      id_ADW = ''; % not present at 2017/09/03

    case 'Strongylocentrotus_purpuratus'
      id_CoL = '7b9f3ba064ef59fc81e6703ba245ce4a'; 
      id_WoRMS = '240747'; 
      id_Taxo = '41153'; 
      id_EoL = '598175';

    case 'Strongylocentrotus_droebachiensis'
      id_CoL = 'f994b037baacad64fd548bfb571f8eb2'; 
      id_WoRMS = '124321'; 
      id_Taxo = '41150'; % present at genus-level only
      id_EoL = '599668';

    case 'Echinus_esculentus'
      id_CoL = '76f5c7502b7d2106b49714daa8bcb73d'; 
      id_WoRMS = '124287'; 
      id_Taxo = '41134'; 
      id_EoL = '599659';
      id_ADW = ''; % not present at 2017/09/04
       
    case 'Gracilechinus_affinis'
      id_CoL = 'e7cf9012297aa33bdaa907a4e2545d53'; 
      id_WoRMS = '124279'; 
      id_Taxo = ''; % not present at 2017/09/02
      id_Wiki = 'Gracilechinus';
      id_EoL = '599662';
       
    case 'Sterechinus_neumayeri'
      id_CoL = 'd8fb71b73e11d1cdecfac8419e98fb50';
      id_WoRMS = '160831';
      id_Taxo = ''; % not present 2017/06/15       
      id_EoL = '3039430';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Mesocentrotus_franciscanus'
      id_CoL = '9b52c4f8f7d683de6fed25c64eaf63d2';
      id_WoRMS = '591102';
      id_Taxo = ''; % not present 2017/06/15       
      id_EoL = '40044955';
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Paracentrotus_lividus'
      id_CoL = 'd258688755c65d9fc78cb8b568dac26a';
      id_WoRMS = '124316';
      id_Taxo = '41136';        
      id_EoL = '599658';
       
    case 'Psammechinus_miliaris'
      id_CoL = '51494e9d786ca1490738fe95476f0561';
      id_WoRMS = '124319';
      id_Taxo = '41139';        
      id_EoL = '599663';
       
    case 'Holothuria_scabra'
      id_CoL = '814d1ea7cec08f5897ebe68e024442f4';
      id_WoRMS = '210813';
      id_Taxo = '41305'; % only present at genus level       
      id_EoL = '587665';
       
    case 'Stichopus_vastus'
      id_CoL = '64d59d7a644c49463a5770c937728801';
      id_WoRMS = '242062';
      id_Taxo = '41313'; % only present at genus level       
      id_EoL = '3067730';
      id_ADW = ''; % not present at 2017/09/21

    case 'Branchiostoma_floridae'
      id_CoL = '56b084fe5a8af1fb6b065bd2b921487b';
      id_WoRMS = '266208';
      id_Taxo = '114894';        
      id_EoL = '515519';
       
    case 'Oikopleura_dioica'
      id_CoL = 'a0baaf22d884c493e15b87b9e7df0393';
      id_WoRMS = '103407';
      id_Taxo = '114881';        
      id_EoL = '512477';
       
    case 'Oikopleura_longicauda'
      id_CoL = '96345fc075fb3f226692bc86808fced3';
      id_WoRMS = '103414';
      id_Taxo = ''; % not present 2017/06/15 
      id_Wiki = 'Oikopleura';
      id_EoL = '512485';
       
    case 'Thalia_democratica'
      id_CoL = 'f4ca44e873a0b0c5881b0a1645582cda';
      id_WoRMS = '137279';
      id_Taxo = '959814';   
      id_Wiki = 'Salpidae';
      id_EoL = '510612';
       
    case 'Ciona_intestinalis'
      id_CoL = 'eca285a07d80dda8bda2c2e91aa687f8';
      id_WoRMS = '103732';
      id_Taxo = '41508';        
      id_EoL = '46326967';
       
    case 'Myxine_glutinosa'
      id_CoL = '69d2953e9389f6ea17228c0d1331173d';
      id_WoRMS = '101170';
      id_Taxo = '41664';     
      id_EoL = '207930';
      id_fishbase = taxon_fish;
       
    case 'Eptatretus_stoutii'
      id_CoL = '8c8fa2e6d0664f3f877f783a64beb1c6';
      id_WoRMS = '279298';
      id_Taxo = '174002';        
      id_EoL = '994791';
      id_fishbase = taxon_fish;
       
    case 'Lampetra_planeri'
      id_CoL = '7849536da20a2a4d44365ac33b8c8b98';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '41687';      
      id_EoL = '206412';
      id_fishbase = taxon_fish;
       
    case 'Callorhinchus_capensis'
      id_CoL = '2b8e437a12e0cc1b19683fd7de7c7206';
      id_WoRMS = '221460';
      id_Taxo = '42191';        
      id_EoL = '225608';
      id_fishbase = taxon_fish;
       
    case 'Raja_brachyura'
      id_CoL = 'f1f36da016e9d4c15ed5f68aa88216ff';
      id_WoRMS = '367297';
      id_Taxo = '108278'; 
      id_Wiki = 'Raja_(genus)';
      id_EoL = '218668';
      id_fishbase = taxon_fish;
       
    case 'Raja_clavata'
      id_CoL = '8b941a6455f0abdb69f393eb6621a74d';
      id_WoRMS = '105883';
      id_Taxo = '108279';        
      id_EoL = '209174';
      id_fishbase = taxon_fish;
       
    case 'Raja_montagui'
      id_CoL = '0090fc80b381e800d07f72514dad1e22';
      id_WoRMS = '105887';
      id_Taxo = '108283';
      id_EoL = '211505';
      id_fishbase = taxon_fish;
      id_AnAge = 'taxon';
       
    case 'Raja_rhina'
      id_CoL = 'faa318af8e345d99ea7b6018126a2d6f';
      id_WoRMS = '271581';
      id_Taxo = '185729';
      id_EoL = '215132';
      id_fishbase = taxon_fish;
      id_AnAge = 'taxon';
      id_Wiki = 'Beringraja_rhina';
       
   case 'Beringraja_binoculata'
      id_CoL = 'acdb21137c63073015d27adcf86953db';
      id_WoRMS = '1021330';
      id_Taxo = '1802408';       
      id_EoL = '46410079';
      id_fishbase = taxon_fish;
      id_AnAge = 'taxon';
      id_ADW = 'Raja_binoculata';
      
    case 'Leucoraja_erinacea'
      id_CoL = '2b6c3cc7234a53cc6229a9883c9075af';
      id_WoRMS = '158551';
      id_Taxo = '178802';        
      id_EoL = '217228';
      id_fishbase = taxon_fish;
       
    case 'Leucoraja_naevus'
      id_CoL = 'a21b9ab9f84a192de65800fdc5964dac';
      id_WoRMS = '105876';
      id_Taxo = '108270';        
      id_EoL = '345058';
      id_fishbase = taxon_fish;
       
    case 'Rhinobatos_productus'
      id_CoL = '8691a825ec34f8adcda1539f3d0babc0';
      id_WoRMS = '271608';
      id_Taxo = '42033';        
      id_EoL = '216469';
      id_fishbase = taxon_fish;
       
    case 'Trygonoptera_personata'
      id_CoL = '739fdc4060e8c6a65d8025878bac5d8b';
      id_WoRMS = '283062';
      id_Taxo = '189636';        
      id_EoL = '582429';
      id_fishbase = taxon_fish;
       
    case 'Manta_birostris'
      id_CoL = 'a8df6db60161ecbce7691570e5ce3b33';
      id_WoRMS = '105857';
      id_Taxo = '42170';        
      id_EoL = '206970';
      id_fishbase = taxon_fish;
       
    case 'Torpedo_marmorata'
      id_CoL = '522a408cbb5e8f63207652bb703c9abb';
      id_WoRMS = '271684';
      id_Taxo = '42040';        
      id_EoL = '211731';
      id_fishbase = taxon_fish;
       
    case 'Pristis_pectinata'
      id_CoL = '25c479c1cdb81333995c06b8fdc78d6d';
      id_WoRMS = '105848';
      id_Taxo = '42016';        
      id_EoL = '223612';
      id_fishbase = taxon_fish;
       
    case 'Squatina_californica'
      id_CoL = '68e9753aed082e09ac4d4b4c348e920b';
      id_WoRMS = '271667';
      id_Taxo = '106304';        
      id_EoL = '206814';
      id_fishbase = taxon_fish;
       
    case 'Pristiophorus_cirratus'
      id_CoL = '791c66b1d7d17796ec389eefcf0e7cdb';
      id_WoRMS = '282352';
      id_Taxo = '106297';        
      id_EoL = '204500';
      id_fishbase = taxon_fish;
       
    case 'Squalus_acanthias'
      id_CoL = 'b141071e3edeab5432a46ce9d8dac40c';
      id_WoRMS = '105923';
      id_Taxo = '41840';        
      id_EoL = '206805';
      id_fishbase = taxon_fish;
       
    case 'Somniosus_microcephalus'
      id_CoL = '31935504b8da5b895f90bcf5c73f221c';
      id_WoRMS = '105919';
      id_Taxo = '41837';        
      id_EoL = '205932';
      id_fishbase = taxon_fish;
       
    case 'Etmopterus_perryi'
      id_CoL = '36a22def38a1931b3c9f9cb244396c01';
      id_WoRMS = '271637';
      id_Taxo = '106487';        
      id_EoL = '1157336';
      id_fishbase = taxon_fish;
       
    case 'Chlamydoselachus_anguineus'
      id_CoL = '3f01614da0c8edb62c6afbb190cfc9d7';
      id_WoRMS = '105831';
      id_Taxo = '106487';        
      id_EoL = '46325197';
      id_fishbase = taxon_fish;
       
    case 'Heptranchias_perlo'
      id_CoL = '5bbba314cd44233980889b7db2091025';
      id_WoRMS = '105832';
      id_Taxo = '41773';        
      id_EoL = '340134';
      id_fishbase = taxon_fish;
       
    case 'Heterodontus_portusjacksoni'
      id_CoL = 'ea78d30dbfede623a294ebd70f2efd83';
      id_WoRMS = '276699';
      id_Taxo = '106314';        
      id_EoL = '212023';
      id_fishbase = taxon_fish;
       
    case 'Chiloscyllium_plagiosum'
      id_CoL = '52239f24c95c370cbca53d5404f355a8';
      id_WoRMS = '277832';
      id_Taxo = '94273';        
      id_EoL = '212039';
      id_fishbase = taxon_fish;
       
    case 'Rhincodon_typus'
      id_CoL = 'b757ec97469df0ee764547b0911c66e6';
      id_WoRMS = '105847';
      id_Taxo = '41872';        
      id_EoL = '28519';
      id_fishbase = taxon_fish;
       
    case 'Sphyrna_lewini'
      id_CoL = '350243ccc762d3c4ac03d1b35bd6ff9d';
      id_WoRMS = '105816';
      id_Taxo = '42008';        
      id_EoL = '994497';
      id_fishbase = taxon_fish;
       
    case 'Scyliorhinus_canicula'
      id_CoL = '384ae8eb01a30b7118797dd65f7e4915';
      id_WoRMS = '105814';
      id_Taxo = '106399';        
      id_EoL = '994476';
      id_fishbase = taxon_fish;
       
    case 'Carcharhinus_leucas'
      id_CoL = '08712ee451c6216fdc23bf2ed1b8eb24';
      id_WoRMS = '105792';
      id_Taxo = '41977';        
      id_EoL = '224769';
      id_fishbase = taxon_fish;
       
    case 'Carcharhinus_plumbeus'
      id_CoL = 'c104e8012c5489acf8d94a5430d34752';
      id_WoRMS = '105797';
      id_Taxo = '41983';        
      id_EoL = '218733';
      id_fishbase = taxon_fish;
       
    case 'Galeocerdo_cuvier'
      id_CoL = 'a1d45c8bf2076f511f940b6317ddab6c';
      id_WoRMS = '105799';
      id_Taxo = '41989';        
      id_EoL = '206683';
      id_fishbase = taxon_fish;
      id_AnAge = taxon;
       
    case 'Rhizoprionodon_acutus'
      id_CoL = 'd7c076bc204bb11aa7e5d4e49ba7ffe9';
      id_WoRMS = '105802';
      id_Taxo = '41999';        
      id_EoL = '205713';
      id_fishbase = taxon_fish;
       
    case 'Prionace_glauca'
      id_CoL = '33d52a5325a633260d922de266c0ad0f';
      id_WoRMS = '105801';
      id_Taxo = '41997';        
      id_EoL = '206724';
      id_fishbase = taxon_fish;
       
    case 'Carcharias_taurus'
      id_CoL = '2d7e5479972d3735b029784cf7b2347a';
      id_WoRMS = '105843';
      id_Taxo = '41881';    
      id_EoL = '206680';
      id_fishbase = taxon_fish;
      id_AnAge = taxon;
       
    case 'Lamna_nasus'
      id_CoL = '6fbcbefe8c9bc1221a9859c6a240ff9a';
      id_WoRMS = '105841';
      id_Taxo = '41910';
      id_EoL = '205461';
      id_fishbase = taxon_fish;
       
    case 'Isurus_oxyrinchus'
      id_CoL = 'c956e1fa5b7f322689f4ab1de39635f2';
      id_WoRMS = '105839';
      id_Taxo = '41907';        
      id_EoL = '46322648';
      id_fishbase = taxon_fish;
      id_AnAge = taxon;
       
    case 'Carcharodon_carcharias'
      id_CoL = 'c5465928ea46eb759bbbf4d623c56bad';
      id_WoRMS = '105838';
      id_Taxo = '41903';        
      id_EoL = '213726';
      id_fishbase = taxon_fish;
       
    case 'Erpetoichthys_calabaricus'
      id_CoL = 'c89d648572722980801c621e154ae462';
      id_WoRMS = '280711';
      id_Taxo = '174040';        
      id_EoL = '211502';
      id_fishbase = taxon_fish;
       
    case 'Acipenser_ruthenus'
      id_CoL = '0b96730a682802ff925457b4832bce69';
      id_WoRMS = '233941';
      id_Taxo = '42441';
      id_EoL = '211359';
      id_fishbase = taxon_fish;
       
    case 'Acipenser_sturio'
      id_CoL = '91d2d822ff7160abb9b9e57817711028';
      id_WoRMS = '126279';
      id_Taxo = '42445';        
      id_EoL = '206890';
      id_fishbase = taxon_fish;
       
    case 'Amia_calva'
      id_CoL = 'd526fe4bb2cd5cf0d8edcbee9b0a07c4';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42482';   
      id_EoL = '223782';
      id_fishbase = taxon_fish;
       
    case 'Atractosteus_spatula'
      id_CoL = 'd3a4b7c1f41f1e5cc48d060d5ec1e28f';
      id_WoRMS = '279822';
      id_Taxo = '42476';        
      id_EoL = '584620';
      id_fishbase = taxon_fish;
       
    case 'Megalops_atlanticus'
      id_CoL = '17dc53c92491078c7b4c95be788a6908';
      id_WoRMS = '126430';
      id_Taxo = '92883';        
      id_EoL = '339927';
      id_fishbase = taxon_fish;
       
    case 'Albula_vulpes'
      id_CoL = '954d4564780d4574570377f3efae7a5f';
      id_WoRMS = '212256';
      id_Taxo = '42516';        
      id_EoL = '2776871';
      id_fishbase = taxon_fish;
       
    case 'Notacanthus_chemnitzii'
      id_CoL = '105a60ea1ee0ae9c444deb9ca6eb6ea6';
      id_WoRMS = '126643';
      id_Taxo = '181370';        
      id_EoL = '207980';
      id_fishbase = taxon_fish;
       
    case 'Anguilla_anguilla'
      id_CoL = 'b81dfd849eb83bca1705a2f0c0e671dd';
      id_WoRMS = '126281';
      id_Taxo = '42526';        
      id_EoL = '356349';
      id_fishbase = taxon_fish;
       
    case 'Hiodon_tergisus'
      id_CoL = '9847fa5ddb60890788abf8bc9ce686a5';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42725'; 
      id_EoL = '207393';
      id_fishbase = taxon_fish;
       
    case 'Osteoglossum_bicirrhosum'
      id_CoL = '72895daedd532e7e22d3cefc27328304';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42708';      
      id_EoL = '223395';
      id_fishbase = taxon_fish;
       
    case 'Notopterus_notopterus'
      id_CoL = '4fcb49f6bfd5870b3cfababf5e802016';
      id_WoRMS = '281795';
      id_Taxo = '42730';        
      id_EoL = '222969';
      id_fishbase = taxon_fish;
       
    case 'Arapaima_gigas'
      id_CoL = 'a8f83fea3aa2f1d343cc2b193eacfdcc';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42701'; 
      id_EoL = '204868';
      id_fishbase = taxon_fish;
       
    case 'Sardina_pilchardus'
      id_CoL = 'Sardina_pilchardus';
      id_WoRMS = '126421';
      id_Taxo = '42663';        
      id_EoL = '213922';
      id_fishbase = taxon_fish;
       
    case 'Sardinella_aurita'
      id_CoL = 'dbb523a3a5dd945fa9f9217e754a65db';
      id_WoRMS = '126422';
      id_Taxo = '42665';        
      id_EoL = '1000279';
      id_fishbase = taxon_fish;
       
    case 'Sprattus_sprattus'
      id_CoL = '8b704c8dd27132590681045b7a305644';
      id_WoRMS = '126425';
      id_Taxo = '42676';        
      id_EoL = '607993';
      id_fishbase = taxon_fish;
       
    case 'Clupea_harengus'
      id_CoL = '7adc35bdac2019989efa025ca00ccd5c';
      id_WoRMS = '126417';
      id_Taxo = '42634';        
      id_EoL = '847095';
      id_fishbase = taxon_fish;
       
    case 'Alosa_alosa'
      id_CoL = '85368f18336645854725c8f8210a151f';
      id_WoRMS = '126413';
      id_Taxo = '42627';        
      id_EoL = '225607';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/17
       
    case 'Alosa_sapidissima'
      id_CoL = '540d73069202e6462f72e6981a5d1e4c';
      id_WoRMS = '158670';
      id_Taxo = '42629';        
      id_EoL = '205467';
      id_fishbase = taxon_fish;

    case 'Engraulis_encrasicolus'
      id_CoL = '2abe41c8ee39bb550534f328bf4717a3';
      id_WoRMS = '126426';
      id_Taxo = '173703';        
      id_EoL = '223061';
      id_fishbase = taxon_fish;
       
    case 'Chirocentrus_dorab'
      id_CoL = 'e6e028c4da3f6801e1e7b01fa7098bf8';
      id_WoRMS = '212257';
      id_Taxo = '42695';        
      id_EoL = '994538';
      id_fishbase = taxon_fish;
       
    case 'Alepocephalus_bairdii'
      id_CoL = '216578ffdce872d0743b7ec726e4179b';
      id_WoRMS = '126682';
      id_Taxo = '160348';   
      id_Wiki = 'Alepocephalus';     
      id_EoL = '224139';
      id_fishbase = taxon_fish;
       
    case 'Chanos_chanos'
      id_CoL = '4d9c6e7dced48df2f32ab635d64864ea';
      id_WoRMS = '217625';
      id_Taxo = '43032';        
      id_EoL = '224731';
      id_fishbase = taxon_fish;

    case 'Cobitis_taenia'
      id_CoL = 'fabc08e8e5ea108ffa723983765f1eb5';
      id_WoRMS = '154373'; 
      id_Taxo = '43977';
      id_EoL = '212556';
      id_fishbase = taxon_fish;

    case 'Rhodeus_amarus'
      id_CoL = '383389bc215371c6bf7b0cf460aff92e';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '92917';
      id_EoL = '217578';
      id_fishbase = taxon_fish;
       
    case 'Barbus_barbus'
      id_CoL = '963f554b3482a7f3ea34bc8a5fdf4253';
      id_WoRMS = '154292'; 
      id_Taxo = '43752';
      id_EoL = '211593';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/12

    case 'Luciobarbus_sclateri'
      id_CoL = '9c12f86d9e0181905f22e2497dc4f741';
      id_WoRMS = '474116'; 
      id_Taxo = '1682769';
      id_EoL = '225284';
      id_fishbase = taxon_fish;

    case 'Gobio_gobio'
      id_CoL = '5f26c93dbec8e883890bf3f7e7624f4d';
      id_WoRMS = '293609'; 
      id_Taxo = '43733';
      id_EoL = '207392';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/15

    case 'Cyprinus_carpio'
      id_CoL = 'c6beac15d18bf1d88bab194fe597f1c7';
      id_WoRMS = '154582'; 
      id_Taxo = '43900';
      id_EoL = '985921';
      id_fishbase = taxon_fish;

    case 'Carassius_carassius'
      id_CoL = 'bee5791af5b67816a4310c3dc98c5397';
      id_WoRMS = '154297'; 
      id_Taxo = '43897';
      id_EoL = '46324948';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/14
      
    case 'Danio_rerio'
      id_CoL = 'ae6d1ad09071086da0498b39630b01f8';
      id_WoRMS = '172875';  % not present 2017/06/16
      id_Taxo = '172875';        
      id_EoL = '204011';
      id_fishbase = taxon_fish;
       
    case 'Abramis_brama'
      id_CoL = 'a0b8ed2779121cee709ec4b1b05b6a30';
      id_WoRMS = '154281'; 
      id_Taxo = '43605';
      id_EoL = '205715';
      id_fishbase = taxon_fish;

    case 'Pimephales_promelas'
      id_CoL = '63c01b172492dc6862ba657e613edec0';
      id_WoRMS = '';  % not present 2017/06/16
      id_Taxo = '43662';   
      id_EoL = '28754994';
      id_fishbase = taxon_fish;
       
    case 'Chondrostoma_nasus'
      id_CoL = '603cb21d9946407088321fa22f46ff2a';
      id_WoRMS = '154585'; 
      id_Taxo = '43623';
      id_EoL = '339806';
      id_fishbase = taxon_fish;

    case 'Tinca_tinca'
      id_CoL = 'c503c3c6a48018b9b1f5846f90a3ac4a';
      id_WoRMS = '154343'; 
      id_Taxo = '43684';
      id_EoL = '210300';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/15

    case 'Rutilus_rutilus'
      id_CoL = '260d8de49c41aebdae8b37501aa3d809';
      id_WoRMS = '154333'; 
      id_Taxo = '43677';
      id_EoL = '205274';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/13

    case 'Alburnoides_bipunctatus'
      id_CoL = '85a8443cf8643e8dc6c1083e0f3b734b';
      id_WoRMS = '154288'; 
      id_Taxo = '43608';
      id_EoL = '204016';
      id_fishbase = taxon_fish;

    case 'Blicca_bjoerkna'
      id_CoL = '3cb1fad6a7a0daf0c376aba3819a9b33';
      id_WoRMS = '154274'; 
      id_Taxo = '43617';
      id_EoL = '46324661';
      id_fishbase = taxon_fish;

    case 'Hydrocynus_vittatus'
      id_CoL = 'ed61d5b61ce91a6d34fbca8211ce5a9c';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '176952';  
      id_EoL = '206410';
      id_fishbase = taxon_fish;
       
    case 'Electrophorus_electricus'
      id_CoL = '3cef65beebb836d276014fb79322b074';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '43452';
      id_EoL = '206595';
      id_fishbase = taxon_fish;
       
    case 'Silurus_glanis'
      id_CoL = '0fca3a9e29d6704c3a68823c84b98198';
      id_WoRMS = '154677';
      id_Taxo = '44028'; 
      id_EoL = '224550';
      id_fishbase = taxon_fish;
       
    case 'Pangasianodon_hypophthalmus'
      id_CoL = '53d4229bacedae1311051e7cddd073d4';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '182534'; % present as Pangasius_hypophthalmus        
      id_EoL = '570181';
      id_fishbase = taxon_fish;
       
    case 'Ictalurus_punctatus'
      id_CoL = 'ec98ff956d24bbb1b4e243ad7e8abb12';
      id_WoRMS = ''; % not present 2017/07/10
      id_Taxo = '44004'; 
      id_EoL = '204762';
      id_fishbase = taxon_fish;
       
    case 'Corydoras_aeneus'
      id_CoL = '905ee3c3036f0147c9e3465986196a49';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '44138';
      id_EoL = '216685';
      id_fishbase = taxon_fish;
       
    case 'Lepidogalaxias_salamandroides'
      id_CoL = 'b975ffe011c7f6ea8044587c5b496b26';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '107055';
      id_EoL = '211145';
      id_fishbase = taxon_fish;
       
    case 'Argentina_silus'
      id_CoL = '3e22bc9aa5c827a1a28e27a30ebbce10';
      id_WoRMS = '126715';
      id_Taxo = '161604';        
      id_EoL = '994700';
      id_fishbase = taxon_fish;
       
    case 'Galaxias_paucispondylus'
      id_CoL = '97ac829e366aa23775953a31b00ae1e5';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '174652'; 
      id_EoL = '211834';
      id_fishbase = taxon_fish;
       
    case 'Galaxias_prognathus'
      id_CoL = 'da95676ab15b54eb5e4f65b620c80490';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '174655';        
      id_EoL = '224520';
      id_fishbase = taxon_fish;
       
    case 'Galaxias_maculatus'
      id_CoL = 'c2582550dc2965e0747776dea22d1aa4';
      id_WoRMS = '280811';
      id_Taxo = '42879';
      id_EoL = '205052';
      id_fishbase = taxon_fish;
       
    case 'Thymallus_thymallus'
      id_CoL = '70711497ab2addf810f979817f82f1e5';
      id_WoRMS = '154375';
      id_Taxo = '42856';        
      id_EoL = '204590';
      id_fishbase = taxon_fish;
       
    case 'Oncorhynchus_tshawytscha'
      id_CoL = '566c1a149d7757a7b5ba252a5186fbbf';
      id_WoRMS = '158075';
      id_Taxo = '125253';        
      id_EoL = '205252';
      id_fishbase = taxon_fish;
       
    case 'Oncorhynchus_mykiss'
      id_CoL = 'd11b35db644cc45d76ccd8ad31452045';
      id_WoRMS = '127185';
      id_Taxo = '42808'; 
      id_EoL = '205250';
      id_fishbase = taxon_fish;
       
    case 'Salmo_trutta'
      id_CoL = '0909d84d2750016742284669abf8341f';
      id_WoRMS = '223866';
      id_Taxo = '42823';        
      id_EoL = '206777';
      id_fishbase = taxon_fish;
       
    case 'Salvelinus_alpinus'
      id_CoL = '2b256e111056ab998c15402950cf0b1b';
      id_WoRMS = '293724';
      id_Taxo = '42831';        
      id_EoL = '1156463';
      id_fishbase = taxon_fish;
       
    case 'Coregonus_albula'
      id_CoL = 'cb380684d38085d21164d9d0327fb629';
      id_WoRMS = '127178';
      id_Taxo = '42840';        
      id_EoL = '223193';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/19
 
    case 'Coregonus_lavaretus'
      id_CoL = '165deb471da03a7f0547cf80906d35ce';
      id_WoRMS = '127180';
      id_Taxo = '42846';        
      id_EoL = '267571';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/19
 
    case 'Esox_lucius'
      id_CoL = 'c828ed0d18644bc9e3cfe4b9507f3247';
      id_WoRMS = '154210';
      id_Taxo = '42891'; 
      id_EoL = '206652';
      id_fishbase = taxon_fish;
       
    case 'Osmerus_mordax'
      id_CoL = 'a3b21f18440ced89a25d39ddfedd990a';
      id_WoRMS = '293649';
      id_Taxo = '502213';        
      id_EoL = '357054';
      id_fishbase = taxon_fish;
       
    case 'Mallotus_villosus'
      id_CoL = '6de343f6ed58029def4a6735f32b7771';
      id_WoRMS = '126735';
      id_Taxo = '42863';        
      id_EoL = '205084';
      id_fishbase = taxon_fish;
       
    case 'Maurolicus_muelleri'
      id_CoL = '287f6d8d5cad38947c4747789ae7694d';
      id_WoRMS = '127312';
      id_Taxo = '42941';        
      id_EoL = '994979';
      id_fishbase = taxon_fish;
       
    case 'Harpadon_nehereus'
      id_CoL = '20bdc080c3d6f6e9ec19d35a7a538828';
      id_WoRMS = '217661';
      id_Taxo = '42986';        
      id_EoL = '220324';
      id_fishbase = taxon_fish;
       
    case 'Saurida_undosquamis'
      id_CoL = '4325632d3f0d7f509ff89ff24c0995c4';
      id_WoRMS = '126371';
      id_Taxo = '154128';        
      id_EoL = '993261';
      id_fishbase = taxon_fish;
       
    case 'Lampanyctodes_hectoris'
      id_CoL = '1663743e8aa7e56da885a90acae52c58';
      id_WoRMS = '217704';
      id_Taxo = '153098';        
      id_EoL = '204765';
      id_fishbase = taxon_fish;
       
    case 'Percopsis_omiscomaycus'
      id_CoL = '9fb8728f4e0fc8a9cf1ddbfc6fd232d5';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '44208';     
      id_EoL = '212344';
      id_fishbase = taxon_fish;
       
    case 'Zeus_faber'
      id_CoL = 'bf90fcde968c06d7a7f8cfca8d697a6f';
      id_WoRMS = '127427';
      id_Taxo = '44763';        
      id_EoL = '210208';
      id_fishbase = taxon_fish;
       
    case 'Merluccius_merluccius'
      id_CoL = '39aec9c7ac734cd01b88dc2b5b09c28c';
      id_WoRMS = '126484';
      id_Taxo = '44371';        
      id_EoL = '208465';
      id_fishbase = taxon_fish;
       
    case 'Raniceps_raninus'
      id_CoL = 'bde2dc26759b5a5d568a3b000a7d0ed6';
      id_WoRMS = '126442';
      id_Taxo = '44353';        
      id_EoL = '223615';
      id_fishbase = taxon_fish;
       
    case 'Coryphaenoides_rupestris'
      id_CoL = '5c129aaf328e6c2c681bbdd241f31865';
      id_WoRMS = '158960';
      id_Taxo = '44412';        
      id_EoL = '224289';
      id_fishbase = taxon_fish;
       
    case 'Coryphaenoides_acrolepis'
      id_CoL = '6016bf6098518f7e8e1948a86bf68866';
      id_WoRMS = '272313';
      id_Taxo = '171920';  
      id_Wiki = 'Coryphaenoides';
      id_EoL = '218274';
      id_fishbase = taxon_fish;
       
    case 'Trachyrincus_scabrus'
      id_CoL = 'd00f2ecf91149861613bf860026db2f5';
      id_WoRMS = '126482';
      id_Taxo = '189278';        
      id_Wiki = 'Trachyrincus';
      id_EoL = '203950';
      id_fishbase = taxon_fish;
       
    case 'Gaidropsarus_guttatus'
      id_CoL = 'ee90fb4c4e49bf9664559762da7b707e';
      id_WoRMS = '126455';
      id_Taxo = '174631';        
      id_Wiki = 'Gaidropsarus';
      id_EoL = '43651741';
      id_fishbase = taxon_fish;
       
    case 'Lota_lota'
      id_CoL = 'f2994eaf34e74ea6bd789bfdb4684b89';
      id_WoRMS = '154388';
      id_Taxo = '44325';        
      id_EoL = '204768';
      id_fishbase = taxon_fish;
       
    case 'Brosme_brosme'
      id_CoL = '10373959a98b1e40a905b724dad4a42c';
      id_WoRMS = '126447';
      id_Taxo = '44299';        
      id_EoL = '205187';
      id_fishbase = taxon_fish;
       
    case 'Molva_molva'
      id_CoL = '3fee41097816c75ec9b5a5ef34cb99dd';
      id_WoRMS = '126461';
      id_Taxo = '44342';        
      id_EoL = '211405';
      id_fishbase = taxon_fish;
       
    case 'Molva_dypterygia'
      id_CoL = '269c0de4e92dcc0e57972a40b5e4e002';
      id_WoRMS = '154806';
      id_Taxo = '180273';        
      id_EoL = '215832';
      id_fishbase = taxon_fish;
       
    case 'Trisopterus_luscus'
      id_CoL = 'cd5e7b2693846a253c3422d6fe98ae1a';
      id_WoRMS = '126445';
      id_Taxo = '44358';        
      id_EoL = '206051';
      id_fishbase = taxon_fish;
       
    case 'Trisopterus_minutus'
      id_CoL = '98b19a0e8841f79eb026a4ffb91a2bc5';
      id_WoRMS = '126446'; 
      id_Taxo = '44359';        
      id_EoL = '225598';
      id_fishbase = taxon_fish;
       
    case 'Gadiculus_argenteus'
      id_CoL = 'a78ad69172f3ea581adb41e10070cc7c';
      id_WoRMS = '126435';
      id_Taxo = '44309';        
      id_EoL = '224213';
      id_fishbase = taxon_fish;
       
    case 'Micromesistius_poutassou'
      id_CoL = 'ba1a5fff001217fb7146d999d35734f3';
      id_WoRMS = '126439';
      id_Taxo = '44338';        
      id_EoL = '211404';
      id_fishbase = taxon_fish;
       
    case 'Pollachius_virens'
      id_CoL = '60c99285fb5a4e824031a17adb22b495';
      id_WoRMS = '126441';
      id_Taxo = '92961';        
      id_EoL = '994633';
      id_fishbase = taxon_fish;
       
    case 'Melanogrammus_aeglefinus'
      id_CoL = '69087f937e2e4b18916f8bd300a4ca41';
      id_WoRMS = '126437';
      id_Taxo = '92958';        
      id_EoL = '212899';
      id_fishbase = taxon_fish;
       
    case 'Merlangius_merlangus'
      id_CoL = 'ab575c19c518950c34e2773154585474';
      id_WoRMS = '126438';
      id_Taxo = '92959';        
      id_EoL = '216882';
      id_fishbase = taxon_fish;
       
    case 'Gadus_morhua'
      id_CoL = '472b9bc88fb647e974a0f06caed3dd44';
      id_WoRMS = '126436';
      id_Taxo = '92960';        
      id_EoL = '206692';
      id_fishbase = taxon_fish;
       
    case 'Boreogadus_saida'
      id_CoL = '74b88f2be1326b10f683981eb180ba11';
      id_WoRMS = '126433';
      id_Taxo = '44297';
      id_EoL = '203867';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/09/02
       
    case 'Polymixia_nobilis'
      id_CoL = '70e2266b2d2a3c0706512274d0d36766';
      id_WoRMS = '127163';
      id_Taxo = '184375';        
      id_EoL = '213443';
      id_fishbase = taxon_fish;
       
    case 'Hoplostethus_atlanticus'
      id_CoL = '1e050a7b0ef409254f1412f5eda0c21f';
      id_WoRMS = '126402';
      id_Taxo = '153363';        
      id_EoL = '206716';
      id_fishbase = taxon_fish;
       
    case 'Holocentrus_adscensionis'
      id_CoL = '09be05d2d25f1e7254c0380f441b7fa3';
      id_WoRMS = '159378';
      id_Taxo = '176795';        
      id_EoL = '203800';
      id_fishbase = taxon_fish;
       
    case 'Carapus_bermudensis'
      id_CoL = '2dd6e3f10c0d08bcb17089579df4c5d0';
      id_WoRMS = '158995';
      id_Taxo = '165436';
      id_Wiki = 'Carapus';
      id_EoL = '205819';
      id_fishbase = taxon_fish;
       
    case 'Genypterus_blacodes'
      id_CoL = '660b829aafcd7d46e774e3638a8d7a29';
      id_WoRMS = '278702';
      id_Taxo = '174838';        
      id_EoL = '218108';
      id_fishbase = taxon_fish;
       
    case 'Opsanus_tau'
      id_CoL = 'eabf208a108044b4e9b995e267e3cbed';
      id_WoRMS = '158782';
      id_Taxo = '44212';        
      id_EoL = '225201';
      id_fishbase = taxon_fish;
       
    case 'Halobatrachus_didactylus'
      id_CoL = '179d2ac7f27322ede597a170364b80a9';
      id_WoRMS = '126374';
      id_Taxo = '175875';        
      id_EoL = '204343';
      id_fishbase = taxon_fish;
       
    case 'Kurtus_gulliveri'
      id_CoL = '38cb814c35df32492fc8a30488ce5b03';
      id_WoRMS = '281236';
      id_Taxo = '46650';        
      id_EoL = '356410';
      id_fishbase = taxon_fish;
       
    case 'Pomatoschistus_minutus'
      id_CoL = '04913a0b4d8937a43ce71ec46207ba90';
      id_WoRMS = '126928';
      id_Taxo = '46609';        
      id_EoL = '994642';
      id_fishbase = taxon_fish;
       
    case 'Hippocampus_whitei'
      id_CoL = '34e00e147e87daed81ad04fe6747aa6f';
      id_WoRMS = '212235';
      id_Taxo = '176713';        
      id_EoL = '224695';
      id_fishbase = taxon_fish;
       
    case 'Macroramphosus_scolopax'
      id_CoL = '770932aafd5b74016b79ed7295764b9b';
      id_WoRMS = '127378';
      id_Taxo = '179479';        
      id_EoL = '205113';
      id_fishbase = taxon_fish;
       
    case 'Macroramphosus_gracilis'
      id_CoL = '437607dcae3e3f6957d73c4d031e8d38';
      id_WoRMS = '275181';
      id_Taxo = '179478';        
      id_EoL = '995152';
      id_fishbase = taxon_fish;
       
    case 'Thunnus_orientalis'
      id_CoL = '243ba5718af1ebd2306782107e21e150';
      id_WoRMS = '273823';
      id_Taxo = '189037';   
      id_EoL = '214754';
      id_fishbase = taxon_fish;
       
    case 'Thunnus_thynnus'
      id_CoL = 'cd171d7f8b99d3cfddfe023e5f82480c';
      id_WoRMS = '127029';
      id_Taxo = '46703';        
      id_EoL = '223943';
      id_fishbase = taxon_fish;
       
    case 'Scomber_scombrus'
      id_CoL = 'f656631fc42068100e2330c40c8fda18';
      id_WoRMS = '127023';
      id_Taxo = '46695';        
      id_EoL = '46324676';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Trichiurus_nanhaiensis'
      id_CoL = '555222cee2c6984ba598f0c688c28475';
      id_WoRMS = '274024';
      id_Taxo = '189326';  
      id_Wiki = 'Trichiurus';
      id_EoL = '221078';
      id_fishbase = taxon_fish;
       
    case 'Mastacembelus_erythrotaenia'
      id_CoL = '9f4397e88523d3980ca643eb8822e6fc';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '46876';   
      id_EoL = '224257';
      id_fishbase = taxon_fish;
       
    case 'Channa_punctata'
      id_CoL = '19bb192b10caf3ea97ac557fd3b99edb';
      id_WoRMS = '280129';
      id_Taxo = '189326';        
      id_EoL = '204174';
      id_fishbase = taxon_fish;
       
    case 'Leptomelanosoma_indicum'
      id_CoL = '004a64a588dad591b93043d7e1ba587e';
      id_WoRMS = '281323';
      id_Taxo = '691213';        
      id_EoL = '208264';
      id_fishbase = taxon_fish;
       
    case 'Coryphaena_hippurus'
      id_CoL = 'c1a7f3fb0a8ad67293953bcc7595b9b1';
      id_WoRMS = '126846';
      id_Taxo = '45259';        
      id_EoL = '356300';
      id_fishbase = taxon_fish;
       
    case 'Trachurus_trachurus'
      id_CoL = '02ba3ac0351955e01ae15aada30ecaf3';
      id_WoRMS = '126822';
      id_Taxo = '45255';        
      id_EoL = '206048';
      id_fishbase = taxon_fish;
       
    case 'Seriola_dumerili'
      id_CoL = 'c41257061380fbac21c3ece5c9f31c25';
      id_WoRMS = '126816';
      id_Taxo = '45249';        
      id_EoL = '993271';
      id_fishbase = taxon_fish;
       
    case 'Sphyraena_barracuda'
      id_CoL = '15ca7deef951e4af6ad43248c2ba9525';
      id_WoRMS = '345843';
      id_Taxo = '46311';        
      id_EoL = '205286';
      id_fishbase = taxon_fish;
       
    case 'Xiphias_gladius'
      id_CoL = '099117b58af9f608aac8375fee1b49f9';
      id_WoRMS = '127094';
      id_Taxo = '46706';        
      id_EoL = '206878';
      id_fishbase = taxon_fish;
       
    case 'Makaira_nigricans'
      id_CoL = '088c42e166682f624c0dcf29b3eb37b1';
      id_WoRMS = '126950';
      id_Taxo = '179502';        
      id_EoL = '338211';
      id_fishbase = taxon_fish;
       
    case 'Centropomus_undecimalis'
      id_CoL = '3301ce508f4609a51e8f9e149960e264';
      id_WoRMS = '280068';
      id_Taxo = '45046';        
      id_EoL = '205157';
      id_fishbase = taxon_fish;
       
    case 'Solea_solea'
      id_CoL = 'deff55d108d1dce0aa4a4f4b9838e198';
      id_WoRMS = '127160';
      id_Taxo = '46991';        
      id_EoL = '994496';
      id_fishbase = taxon_fish;
       
    case 'Psetta_maxima'
      id_CoL = '614b30fcca5c61b82a3d7b6cbad26210';
      id_WoRMS = '154473'; % unaccepted, to Scophthalmus maximus (Linnaeus, 1758)
      id_Taxo = '549389';        
      id_EoL = '46324769';
      id_fishbase = taxon_fish;
       
    case 'Bothus_podas'
      id_CoL = 'bdfad96d05a57e67153ca800c8dcbbb2';
      id_WoRMS = '127129';
      id_Taxo = '46911';        
      id_EoL = '46410277';
      id_fishbase = taxon_fish;
       
    case 'Arnoglossus_laterna'
      id_CoL = '51d6d7169fa6c8452a674c217df73fed';
      id_WoRMS = '127126';
      id_Taxo = '46908';        
      id_EoL = '212566';
      id_fishbase = taxon_fish;
       
    case 'Paralichthys_californicus'
      id_CoL = '792306f69c45f40c290b03b5508d0145';
      id_WoRMS = '275809';
      id_Taxo = '46919';        
      id_EoL = '217375';
      id_fishbase = taxon_fish;
       
    case 'Hippoglossus_hippoglossus'
      id_CoL = 'dc36286e5ce7fb2b3f8ea20980cf01a7';
      id_WoRMS = '127138';
      id_Taxo = '46945';        
      id_EoL = '206587';
      id_fishbase = taxon_fish;
       
    case 'Hippoglossus_stenolepis'
      id_CoL = '91569817d395ea9dfbc24b5cb9c1ea2d';
      id_WoRMS = '274290';
      id_Taxo = '46948';        
      id_EoL = '206715';
      id_fishbase = taxon_fish;
       
    case 'Reinhardtius_hippoglossoides'
      id_CoL = 'c4292d462182240f592370e0ef60a08f';
      id_WoRMS = '127144';
      id_Taxo = '46967';        
      id_EoL = '223542';
      id_fishbase = taxon_fish;
       
    case 'Glyptocephalus_cynoglossus'
      id_CoL = 'bdb069c61c221a0f307446fb7b95af91';
      id_WoRMS = '127136';
      id_Taxo = '46938';        
      id_EoL = '216879';
      id_fishbase = taxon_fish;
       
    case 'Microstomus_kitt'
      id_CoL = '7203eb81dc39b374d6e2833224b87bab';
      id_WoRMS = '127140';
      id_Taxo = '46954';        
      id_EoL = '208740';
      id_fishbase = taxon_fish;
       
    case 'Hypsopsetta_guttulata'
      id_CoL = '00ca06e298143557d74785c5ebe41ca5';
      id_WoRMS = '281128';
      id_Taxo = '421966';        
      id_EoL = '995096';
      id_fishbase = taxon_fish;
       
    case 'Pleuronectes_platessa'
      id_CoL = '27a6782add287c044111388cc4996f04';
      id_WoRMS = '127143';
      id_Taxo = '46963';        
      id_EoL = '208483';
      id_fishbase = taxon_fish;
       
    case 'Limanda_limanda'
      id_CoL = '56f0252000b66dd5b8afb1db11ea325e';
      id_WoRMS = '127139';
      id_Taxo = '46950';        
      id_EoL = '993992';
      id_fishbase = taxon_fish;
       
    case 'Limanda_ferruginea'
      id_CoL = '04db571e4e47c5e9caa0a788e21cb419';
      id_WoRMS = '158879';
      id_Taxo = '178824';        
      id_EoL = '205418';
      id_fishbase = taxon_fish;
       
    case 'Platichthys_stellatus'
      id_CoL = '053a76755a17dcb950ac3c94f3b8ea0c';
      id_WoRMS = '154781';
      id_Taxo = '46959';        
      id_EoL = '214641';
      id_fishbase = taxon_fish;
       
    case 'Oreochromis_niloticus'
      id_CoL = '9ddda31044c5b5e86eca800592b8473f';
      id_WoRMS = '293639';
      id_Taxo = '46085';        
      id_EoL = '356343';
      id_fishbase = taxon_fish;
       
    case 'Belone_belone'
      id_CoL = '6b4ff497ef77437ec9fad307c08c99a6';
      id_WoRMS = '126375';
      id_Taxo = '44420';        
      id_EoL = '212567';
      id_fishbase = taxon_fish;
       
    case 'Hirundichthys_affinis'
      id_CoL = 'dcc59c1ff44e5086c007ead8f39618f7';
      id_WoRMS = '159265';
      id_Taxo = '176743';   
      id_EoL = '205173';
      id_Wiki = 'Hirundichthys';
      id_fishbase = taxon_fish;
       
    case 'Oryzias_latipes'
      id_CoL = '481dc2e4f470b63f53970ca5815f9c4e';
      id_WoRMS = '281941';
      id_Taxo = '44560';   
      id_EoL = '211215';
      id_ADW = ''; % not present 2017/09/22
      id_fishbase = taxon_fish;
       
    case 'Kryptolebias_marmoratus'
      id_CoL = '8c24a2a18bf61d804420086edc99c306';
      id_WoRMS = '314719';
      id_EoL = '209382';
      id_Taxo = '691145';        
      id_fishbase = taxon_fish;
       
    case 'Poecilia_reticulata'
      id_CoL = '1a2112979142994cc7c0ac7710256715';
      id_WoRMS = '154400';
      id_EoL = '208520';
      id_Taxo = '44613';        
      id_fishbase = taxon_fish;
       
    case 'Aphanius_fasciatus'
      id_CoL = 'ca3b317c12ad025398bec05b234d8a98';
      id_WoRMS = '126428';
      id_Taxo = '44467';        
      id_EoL = '223483';
      id_fishbase = taxon_fish;
       
    case 'Nothobranchius_furzeri'
      id_CoL = '122b5c294fd8d0d77e50831f6c089e15';
      id_WoRMS = '1013134'; 
      id_Taxo = '181385';        
      id_EoL = '218173';
      id_fishbase = taxon_fish;
       
    case 'Nothobranchius_kadleci'
      id_CoL = '3badcb4c79813f005161513d913413a5';
      id_WoRMS = '1008133'; 
      id_Taxo = '44522'; % only present at genus level 2017/10/13      
      id_EoL = '23931';  % only present at genus level 2017/10/13
      id_fishbase = taxon_fish;
      id_Wiki = 'Nothobranchius';
      id_ADW = ''; % not present at 2017/10/13
       
    case 'Fundulopanchax_gardneri'
      id_CoL = '9a7a5e7cb389be07278cf6ebc8e3bcb5';
      id_WoRMS = '1013634';
      id_Taxo = ''; % not working at 2017/10/19      
      id_EoL = '216582';  
      id_fishbase = taxon_fish;
       
    case 'Atherina_presbyter'
      id_CoL = '8aa69a96e25e63f574382883df9016f5';
      id_WoRMS = '272030';
      id_Taxo = '44697';        
      id_EoL = '46324757';
      id_fishbase = taxon_fish;
       
    case 'Chromis_chromis'
      id_CoL = '3ea36d06fa4400de11f0f6fbaf5c7bde';
      id_WoRMS = '127000';
      id_Taxo = '46264';        
      id_EoL = '1012133';
      id_fishbase = taxon_fish;
       
    case 'Chelon_labrosus'
      id_CoL = '78be26413dd8d85e73278dd3188eab9f';
      id_WoRMS = '126977';
      id_Taxo = '46293';        
      id_EoL = '994736';
      id_fishbase = taxon_fish;
       
    case 'Pseudochromis_flavivertex'
      id_CoL = 'b697a0538b3401dbaae2a64b561eb983';
      id_WoRMS = '218331';
      id_Taxo = '105954';        
      id_EoL = '210814';
      id_fishbase = taxon_fish;
       
    case 'Lepadogaster_lepadogaster'
      id_CoL = 'e51f4ae6bb47355df4b30132303ea92b';
      id_WoRMS = '126518';
      id_Taxo = '435688';        
      id_EoL = '219610';
      id_fishbase = taxon_fish;
       
    case 'Parablennius_ruber'
      id_CoL = '9386eb92555dee139dce61caa84022e8';
      id_WoRMS = '126774';
      id_Taxo = '182612';        
      id_EoL = '988226';
      id_fishbase = taxon_fish;
       
    case 'Gerres_equulus'
      id_CoL = '23cd92cc305ff9a3bf3649785c8e464b';
      id_WoRMS = '276956';
      id_Taxo = '174882';        
      id_EoL = '215866';
      id_fishbase = taxon_fish;
       
    case 'Uranoscopus_scaber'
      id_CoL = '441e78c3a3b763923fda47d897dae3f2';
      id_WoRMS = '127093';
      id_Taxo = '46399';        
      id_EoL = '210202';
      id_fishbase = taxon_fish;
       
    case 'Achoerodus_viridis'
      id_CoL = '1004ac3c0d8d6bd825bbe8058bc5c012';
      id_WoRMS = '279498';
      id_Taxo = '160085';        
      id_EoL = '208164';
      id_fishbase = taxon_fish;
       
    case 'Semicossyphus_pulcher'
      id_CoL = '69686c930aaba39a3bdb90083af535ad';
      id_WoRMS = '282753';
      id_Taxo = '187392';        
      id_EoL = '218416';
      id_fishbase = taxon_fish;
       
    case 'Dicentrarchus_labrax'
      id_CoL = '9d082a4d12bd05ee5b2050d56a4d052d';
      id_WoRMS = '126975';
      id_Taxo = '173131';        
      id_EoL = '224729';
      id_fishbase = taxon_fish;
       
    case 'Platax_orbicularis'
      id_CoL = 'f28ff72a2191ac0ee807ce87547e057b';
      id_WoRMS = '218711';
      id_Taxo = '45379';        
      id_EoL = '204387';
      id_fishbase = taxon_fish;
       
    case 'Chaetodon_larvatus'
      id_CoL = '6f795a109a33b29662c4c42498b46600';
      id_WoRMS = '218716';
      id_Taxo = '45422';        
      id_EoL = '222088';
      id_fishbase = taxon_fish;
       
    case 'Sciaena_umbra'
      id_CoL = '27622ae481976a389f0364896073477f';
      id_WoRMS = '127010';
      id_Taxo = '187003';        
      id_EoL = '1000297';
      id_fishbase = taxon_fish;
       
    case 'Argyrosomus_regius'
      id_CoL = '27622ae481976a389f0364896073477f';
      id_WoRMS = '127007';
      id_Taxo = '161639';        
      id_EoL = '203937';
      id_fishbase = taxon_fish;
       
    case 'Acanthurus_lineatus'
      id_CoL = '72076057c0ddd13f26566ef47ca0f806';
      id_WoRMS = '159582';
      id_Taxo = '159956';        
      id_EoL = '208629';
      id_fishbase = taxon_fish;
       
    case 'Acanthurus_olivaceus'
      id_CoL = '184220753935633dfd76a44124f9eb9f';
      id_WoRMS = '219625';
      id_Taxo = '159966';        
      id_EoL = '211479';
      id_fishbase = taxon_fish;
       
    case 'Ctenochaetus_striatus'
      id_CoL = 'd0a5c174287d9a41401d44fd76ea47a9';
      id_WoRMS = '219659';
      id_Taxo = '172382';        
      id_EoL = '208556';
      id_fishbase = taxon_fish;
       
    case 'Zebrasoma_scopas'
      id_CoL = '4120d1be7736b044565798994f885c30';
      id_WoRMS = '219679';
      id_Taxo = '190229';        
      id_EoL = '204517';
      id_fishbase = taxon_fish;
       
    case 'Naso_brevirostris'
      id_CoL = '14f067280f37ccc47cfca4d4c77d78e9';
      id_WoRMS = '219671';
      id_Taxo = '180806';        
      id_EoL = '213852';
      id_fishbase = taxon_fish;
       
    case 'Naso_hexacanthus'
      id_CoL = '0c44bef6df412078dc9d79bf4aea957c';
      id_WoRMS = '219667';
      id_Taxo = '180811';        
      id_EoL = '213496';
      id_fishbase = taxon_fish;
       
    case 'Naso_tuberosus'
      id_CoL = 'f9f4b124898fab8fa2a035aa2c88606c';
      id_WoRMS = '219675';
      id_Taxo = '180820';        
      id_EoL = '212381';
      id_fishbase = taxon_fish;
       
    case 'Naso_unicornis'
      id_CoL = 'b0550abec0ef9ad62702f1b462928cf3';
      id_WoRMS = '219668';
      id_Taxo = '46736';        
      id_EoL = '213498';
      id_fishbase = taxon_fish;
       
    case 'Naso_vlamingii'
      id_CoL = '93cc53b4d96f8af60aaaf9b672c98b6f';
      id_WoRMS = '219672';
      id_Taxo = '180821';        
      id_EoL = '213847';
      id_fishbase = taxon_fish;
       
    case 'Prionurus_maculatus'
      id_CoL = '8e93ea02a76329aafcf142608f63878c';
      id_WoRMS = '282347';
      id_Taxo = '184744';        
      id_EoL = '209570';
      id_fishbase = taxon_fish;
       
    case 'Pomacanthus_imperator'
      id_CoL = 'a6e16382a753b4b86e9662ada4e78f14';
      id_WoRMS = '220001';
      id_Taxo = '45410';        
      id_EoL = '205824';
      id_fishbase = taxon_fish;
       
    case 'Lutjanus_fulviflamma'
      id_CoL = '4014e54315e91f4329bbdd5601dd1b9f';
      id_WoRMS = '218490';
      id_Taxo = '106193';        
      id_EoL = '211149';
      id_fishbase = taxon_fish;
       
    case 'Lutjanus_guttatus'
      id_CoL = '6d5cc9613dc89d594af6927ac562202c';
      id_WoRMS = '276539';
      id_Taxo = '179225'; 
      id_Wiki = 'Lutjanus';
      id_EoL = '212586';
      id_fishbase = taxon_fish;
       
    case 'Lobotes_surinamensis'
      id_CoL = '4d5106709e150cd3aa658259a8fd12b6';
      id_WoRMS = '126973';
      id_Taxo = '45277';        
      id_EoL = '210336';
      id_fishbase = taxon_fish;
       
    case 'Dentex_dentex'
      id_CoL = '470a9807241f414f99aaed0d85d65ec6';
      id_WoRMS = '273962';
      id_Taxo = '172982';        
      id_EoL = '205454';
      id_fishbase = taxon_fish;
       
    case 'Pagellus_erythrinus'
      id_CoL = 'cf65e6afffa559b72e5b5b8afebdae91';
      id_WoRMS = '127060';
      id_Taxo = '45317';        
      id_EoL = '223570';
      id_fishbase = taxon_fish;
       
    case 'Sparus_aurata'
      id_CoL = '0ef59679adc50c75a369c2b291f7e32f';
      id_WoRMS = '151523';
      id_Taxo = '159658';        
      id_EoL = '587825';
      id_fishbase = taxon_fish;
       
    case 'Diplodus_puntazzo'
      id_CoL = '7be95da2081d27bd05a0d13a5a9ba2f2';
      id_WoRMS = '127052';
      id_Taxo = '173233';  
      id_EoL = '205144';
      id_Wiki = 'Diplodus';
      id_fishbase = taxon_fish;
       
    case 'Boops_boops'
      id_CoL = 'fb99b92f46db65d7f8a22d33ee501f04';
      id_WoRMS = '127047';
      id_Taxo = '164378';        
      id_EoL = '203866';
      id_fishbase = taxon_fish;
       
    case 'Acanthopagrus_berda'
      id_CoL = '743fc93b06d76f028c95835e6bd733e0';
      id_WoRMS = '218588';
      id_Taxo = '159910';        
      id_EoL = '220571';
      id_fishbase = taxon_fish;
       
    case 'Siganus_sutor'
      id_CoL = 'b95005208d28f9fbdc4c90a74e502fae';
      id_WoRMS = '219688';
      id_Taxo = '187610';   
      id_Wiki = 'Siganus';
      id_EoL = '214690';
      id_fishbase = taxon_fish;
       
    case 'Scatophagus_argus'
      id_CoL = 'ff1b84d7b315c0069609d5e1b7d2b37c';
      id_WoRMS = '276970';
      id_Taxo = '45387';        
      id_EoL = '206741';
      id_fishbase = taxon_fish;
       
    case 'Priacanthus_macracanthus'
      id_CoL = '464de607d945097ad6b06e525e70a826';
      id_WoRMS = '273765';
      id_Taxo = '45154'; 
      id_Wiki = 'Priacanthus';
      id_EoL = '223361';
      id_fishbase = taxon_fish;
       
    case 'Capros_aper'
      id_CoL = '2b3383c0bc271b4255f444abc942ded1';
      id_WoRMS = '127419';
      id_Taxo = '44767';        
      id_EoL = '205190';
      id_fishbase = taxon_fish;
       
    case 'Lophius_piscatorius'
      id_CoL = 'df7f154bea778d0e8d2947f93d849f53';
      id_WoRMS = '126555';
      id_Taxo = '44235';        
      id_EoL = '206728';
      id_fishbase = taxon_fish;
       
    case 'Balistes_vetula'
      id_CoL = '1887ebe145aef2774c5d77da4fd412ee';
      id_WoRMS = '127397';
      id_Taxo = '47004';        
      id_EoL = '217410';
      id_fishbase = taxon_fish;
       
    case 'Mola_mola'
      id_CoL = 'ad52cc37a5ce66e98b9ba0195b9d8cb7';
      id_WoRMS = '127405';
      id_Taxo = '47097';        
      id_EoL = '213810';
      id_fishbase = taxon_fish;
       
    case 'Pempheris_adusta'
      id_CoL = 'c50e0567968f7bba0e705a8a7b5a6cc5'; % unaccepted, to Pempheris malabarica
      id_WoRMS = '218704';
      id_Taxo = '183399';
      id_Wiki = 'Pempheris';
      id_EoL = '992582';
      id_fishbase = taxon_fish;
       
    case 'Pempheris_schwenkii'
      id_CoL = 'c0a9eb122361f992e57b9d586d79a8f7';
      id_WoRMS = '218699';
      id_Taxo = '183415';        
      id_Wiki = 'Pempheris';
      id_EoL = '213029';
      id_fishbase = taxon_fish;
       
    case 'Lepomis_cyanellus'
      id_CoL = 'cc83144368365e74204374b9f7db5de9';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '45132';   
      id_EoL = '207660';
      id_fishbase = taxon_fish;
       
    case 'Epinephelus_marginatus'
      id_CoL = 'b19367bf6c4b12ca0ea001ea9953c9c9';
      id_WoRMS = '127036';
      id_Taxo = '173912';        
      id_EoL = '206618';
      id_fishbase = taxon_fish;
       
    case 'Serranus_scriba'
      id_CoL = '477173bdd7c8e27ad4631a347f8fd45b';
      id_WoRMS = '127043';
      id_Taxo = '187467';        
      id_EoL = '215470';
      id_fishbase = taxon_fish;
       
    case 'Perca_fluviatilis'
      id_CoL = '593aaa7c79677b093fe94582a14d3f94';
      id_WoRMS = '151353';
      id_Taxo = '45191';        
      id_EoL = '223357';
      id_fishbase = taxon_fish;
       
    case 'Sander_lucioperca'
      id_CoL = '04b433fe83af06d454d86967fc42368f';
      id_WoRMS = '151308';
      id_Taxo = '186511';        
      id_EoL = '222787';
      id_fishbase = taxon_fish;

    case 'Gymnocephalus_cernuus'
      id_CoL = '349c65df03755f01c50de8bc74868fd5';
      id_WoRMS = '151302';
      id_Taxo = '45187';        
      id_EoL = '46328762';
      id_fishbase = taxon_fish;
      id_ADW = ''; % not present 2017/08/17

    case 'Notothenia_coriiceps'
      id_CoL = '0d2d14ff0bfeed9cef3cd477df4e2afd';
      id_WoRMS = '234679';
      id_Taxo = '181460'; 
      id_Wiki = 'Notothenia';
      id_EoL = '204661';
      id_fishbase = taxon_fish;
       
    case 'Chaenocephalus_aceratus'
      id_CoL = '3fec63b8bf6a49d4f179180b00a183bc';
      id_WoRMS = '234725';
      id_Taxo = '170312';        
      id_EoL = '205520';
      id_fishbase = taxon_fish;
       
    case 'Platycephalus_fuscus'
      id_CoL = '4c534963503ef6fcc744f3b7e012ee86';
      id_WoRMS = '274658';
      id_Taxo = '183991';        
      id_EoL = '1157162';
      id_fishbase = taxon_fish;
       
    case 'Chelidonichthys_lucerna'
      id_CoL = '092eeb046b250e0e6525afb90ea84c57';
      id_WoRMS = '127262';
      id_Taxo = '170737'; % unaccepted, to Chelidonichthys lucernus (C. Linnaeus, 1758)       
      id_EoL = '221983';
      id_fishbase = taxon_fish;
       
    case 'Eutrigla_gurnardus'
      id_CoL = 'b5170e5381219be1eddc144a73d3ac91';
      id_WoRMS = '150637';
      id_Taxo = '380822';        
      id_EoL = '204772';
      id_fishbase = taxon_fish;
       
    case 'Helicolenus_dactylopterus'
      id_CoL = '803335b098e8e3e44e3878928804ab16';
      id_WoRMS = '127251';
      id_Taxo = '192869';        
      id_EoL = '581139';
      id_fishbase = taxon_fish;
       
    case 'Anarhichas_denticulatus'
      id_CoL = '82231bb18c0352f531625d3a170c6d25';
      id_WoRMS = '126757';
      id_Taxo = '160816';        
      id_EoL = '224968';
      id_fishbase = taxon_fish;
       
    case 'Anarhichas_lupus'
      id_CoL = '1b5a06078230b478e2aac29ce38c6cea';
      id_WoRMS = '126758';
      id_Taxo = '46468';        
      id_EoL = '222376';
      id_fishbase = taxon_fish;
       
    case 'Zoarces_viviparus'
      id_CoL = 'b17c8f2af4a90b649ca031af1d8ae0fa';
      id_WoRMS = '127123';
      id_Taxo = '44406';        
      id_EoL = '220012';
      id_fishbase = taxon_fish;
       
    case 'Gasterosteus_aculeatus'
      id_CoL = 'fd99ac97713444a54871ba5ae6555109';
      id_WoRMS = '126505';
      id_Taxo = '44801';        
      id_EoL = '223856';
      id_fishbase = taxon_fish;
       
    case 'Pungitius_pungitius'
      id_CoL = '43d5e58d4d2708e8963ec274963f607d';
      id_WoRMS = '126507';
      id_Taxo = '44805';        
      id_EoL = '206423';
      id_fishbase = taxon_fish;
       
    case 'Cyclopterus_lumpus'
      id_CoL = '4445e08822e2ce4fad71ae776c543830';
      id_WoRMS = '127214';
      id_Taxo = '45013';        
      id_EoL = '1011820';
      id_fishbase = taxon_fish;
       
    case 'Scorpaenichthys_marmoratus'
      id_CoL = '397958a0d9074889461f137e4f7e7afc';
      id_WoRMS = '282726';
      id_Taxo = '153452';        
      id_EoL = '212214';
      id_fishbase = taxon_fish;
       
    case 'Myoxocephalus_scorpius'
      id_CoL = 'ea0a01317e2536d0439b2698488001d6';
      id_WoRMS = '127203';
      id_Taxo = '44979';        
      id_EoL = '207351';
      id_fishbase = taxon_fish;
       
    case 'Latimeria_chalumnae'
      id_CoL = '46ffe2e071c4d553d33e36794a179846';
      id_WoRMS = '217438';
      id_Taxo = '42378';        
      id_EoL = '225251';
      id_fishbase = taxon_fish;
       
    case 'Neoceratodus_forsteri'
      id_CoL = 'f3f583180b1b6979f36e97c7c6a5a23c';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42340';    
      id_EoL = '339109';
      id_fishbase = taxon_fish;
       
    case 'Ichthyophis_kohtaoensis'
      id_CoL = '897f721335748e93117c84bae4a39427';
      id_Taxo = '48031';        
      id_EoL = '330408';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Andrias_japonicus'
      id_CoL = '41349267f4b608eff2affa9111ed15de';
      id_Taxo = '47271';        
      id_EoL = '319982';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Cryptobranchus_alleganiensis'
      id_CoL = '0b437ecc1a60d46a1627791f64c9b9db';
      id_Taxo = '47250';        
      id_EoL = '331124';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Hynobius_nebulosus'
      id_CoL = '574b291971ce90bf962848d15095707e';
      id_Taxo = '47250';        
      id_EoL = '1048033';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Plethodon_cinereus'
      id_CoL = 'a2743c12f96b3492a8352ada6b54703d';
      id_Taxo = '47446';
      id_EoL = '333692';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Amphiuma_means'
      id_CoL = '0d414109bff9293787d947877ee0de85';
      id_Taxo = '47352';        
      id_EoL = '332599';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
      id_ADW = ''; % not present at 2017/10/15

    case 'Rhyacotriton_olympicus'
      id_CoL = 'd9dd7cc82382b49509dd444cee24311e';
      id_Taxo = '47363';
      id_EoL = '1018900';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Ambystoma_mexicanum'
      id_CoL = 'bf23a5a83215eb7cd6a5eaae8c5f587b';
      id_Taxo = '93027';        
      id_EoL = '1019571';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Dicamptodon_tenebrosus'
      id_CoL = '22616372b9bc8beb8bd6fe5bb4940fcc';
      id_Taxo = '137953';
      id_EoL = '330494';
      id_AnAge = 'Dicamptodon_ensatus';
      id_amphweb = taxon_amph;
       
    case 'Lissotriton_vulgaris'
      id_CoL = '8eb8ecd651629c0276ce18bb308d38e8';
      id_Taxo = '985978';        
      id_EoL = '10194926';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Salamandra_salamandra'
      id_CoL = '2da5d094f1f3b4d8bd13a461c5054291';
      id_Taxo = '47311';        
      id_EoL = '333311';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Salamandra_lanzai'
      id_CoL = 'f9f9ebdeed31ebf8acabb85230936380';
      id_Taxo = '151422';        
      id_EoL = '331870';
      id_AnAge = ''; % not present at 2017/10/17
      id_amphweb = taxon_amph;
       
    case 'Proteus_anguinus'
      id_CoL = '902f579a3013675de3ac2a27821e4433';
      id_Taxo = '985978';        
      id_EoL = '331216';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Siren_lacertina'
      id_CoL = '585fee795ef444b7901ead9c4f560f9d';
      id_Taxo = '985994';        
      id_EoL = '331129';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Hoplobatrachus_tigerinus'
      id_CoL = 'f271d6261ffd34918ddec16dd1ec4078';
      id_Taxo = '143092';        
      id_EoL = '331125';
      id_AnAge = 'Hoplobatrachus_occipitalis'; % species not present 2017/10/24
      id_amphweb = taxon_amph;
      id_ADW = ''; % species not present 2017/10/24
       
    case 'Bombina_bombina'
      id_CoL = 'a1fdfb7bbd135e748b7570d4c0a9f6f6';
      id_Taxo = '47532';        
      id_EoL = '333308';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
      id_ADW = ''; % species not present 2017/10/30
       
    case 'Alytes_muletensis'
      id_CoL = 'fd3165ed5e32b8049775bb31500ea9e8';
      id_Taxo = '107488';        
      id_EoL = '1039071';
      id_amphweb = taxon_amph;
      id_AnAge = ''; % species not present 2017/10/24
      id_ADW = '';   % species not present 2017/10/27
       
    case 'Xenopus_laevis'
      id_CoL = '42c96d87bc825c54d3d4ad99dabc5985';
      id_Taxo = '47520'; 
      id_EoL = '1038993';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Pelobates_fuscus'
      id_CoL = 'c497f2612f8241eb783e9e1c3296b0d8';
      id_Taxo = '47555'; 
      id_EoL = '330757';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
      id_ADW = ''; % not present 2017/10/29
       
    case 'Pelobates_syriacus'
      id_CoL = 'b9d61eae367e75d567ede17c15f9d0c8';
      id_Taxo = '47558'; 
      id_EoL = '1048335';
      id_AnAge = ''; % not present 2017/10/29
      id_amphweb = taxon_amph;
      id_ADW = ''; % not present 2017/10/29
       
    case 'Crinia_nimbus'
      id_CoL = '7653067dbfb18458578b1e698667cacc';
      id_Taxo = '781013';        
      id_EoL = '332826';
      id_AnAge = ''; % not present 2017/06/18
      id_amphweb = taxon_amph;
       
    case 'Crinia_georgiana'
      id_CoL = '66b8883b16bfdf95aad4fa2a2d29f8d8';
      id_Taxo = '79098';        
      id_EoL = '330825';
      id_AnAge = ''; % not present 2017/06/18
      id_amphweb = taxon_amph;
       
    case 'Geocrinia_vitellina'
      id_CoL = '12f5c1d4ba0f3475b80be1a3f53d8269';
      id_Taxo = '78940';        
      id_EoL = '1019811';
      id_AnAge = ''; % not present 2017/06/18
      id_amphweb = taxon_amph;
       
    case 'Pseudophryne_bibronii'
      id_CoL = '30e9b7c92c5bc6dc80518b2c9ec2d126';
      id_Taxo = '88189';        
      id_EoL = '1025125';
      id_AnAge = ''; % not present 2017/06/18
      id_amphweb = taxon_amph;
       
    case 'Bufo_bufo'
      id_CoL = 'e53ae9ac85ef2c141a509f6405bc98f7';
      id_Taxo = '47784';        
      id_EoL = '333310';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Rana_temporaria'
      id_CoL = '2722b8314c6250b8a73cbe019f621cd2';
      id_Taxo = '47660';        
      id_EoL = '331133';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Rana_arvalis'
      id_CoL = 'a887de6c09178f428a46e18dbb9fe0aa';
      id_Taxo = '47623';        
      id_EoL = '333000';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Pelophylax_ridibundus'
      id_CoL = '48ee82c4a8e4451d6efa47ab666fcc33';
      id_Taxo = '996613';        
      id_EoL = '320013';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Pelophylax_lessonae'
      id_CoL = 'c1c8455fa1dc78c3bdc5df2de48cc696';
      id_Taxo = '996607';        
      id_EoL = '332998';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Pelophylax_esculentus' % hybrid
      id_CoL = ''; % not present 2017/10/29
      id_Taxo = '1000640';        
      id_EoL = '46326676';
      id_AnAge = ''; % not present 2017/10/29
      id_amphweb = taxon_amph;
       
    case 'Pyxicephalus_adspersus'
      id_CoL = '82c1ed4b7da83deee8b6617f3b4b05c3';
      id_Taxo = '47618';        
      id_EoL = '330829';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Hyla_arborea'
      id_CoL = '74e4ee9fad1d658f40e22a5d856e6a11';
      id_Taxo = '47847';        
      id_EoL = '332925';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
      id_ADW = ''; % not present at 2017/10/31
       
    case 'Hyperolius_viridiflavus'
      id_CoL = 'daf7eb17c19199b157dd5dd8c6f4d26b';
      id_Taxo = '138972';        
      id_EoL = '130067';
      id_AnAge = taxon;
      id_amphweb = taxon_amph;
       
    case 'Sphenodon_punctatus'
      id_CoL = '25b1757fa601bfa9d01e3e9460c93b06';
      id_Taxo = '48794';        
      id_EoL = '460890';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case {'Heteronotia_binoei','Heteronotia_binoei_3N1A','Heteronotia_binoei_3N1B','Heteronotia_binoei_EA6','Heteronotia_binoei_SM6'}
      id_CoL = '9d3714402a1d195c7d861c0b1f840bd8';
      id_Taxo = '90870';
      id_Wiki = 'Heteronotia_binoei';
      id_EoL = '456690';
      id_AnAge = 'Heteronotia_binoei';
      id_ReptileDB = 'genus=Heteronotia&species=binoei';
      id_ADW = 'Heteronotia_binoei'; 
      
    case 'Eulamprus_quoyii'
      id_CoL = 'b7368b27759d92dfd69b19ba70fe7f0e';
      id_Taxo = '91157';        
      id_EoL = '794708';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Tiliqua_rugosa'
      id_CoL = '03bd821efb1cfb6c36d9b5037df77a69';
      id_Taxo = '49387';        
      id_EoL = '790460';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Egernia_cunninghami'
      id_CoL = '91fe397b8044dd1066106e58c5e37c52';
      id_Taxo = '91117';        
      id_EoL = '794968';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Egernia_striolata'
      id_CoL = 'db22a3ef5da7fd52f483b3ee884a0351';
      id_Taxo = '91138';
      id_Wiki = 'Egernia';
      id_EoL = '794945';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Liopholis_striata'
      id_CoL = '3b1f6e151cff0f8f6971c525f21a1c11';
      id_Taxo = '1685441';
      id_Wiki = 'Liopholis';
      id_EoL = '794944'; % unaccepted, to Egernia striata
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Liopholis_inornata'
      id_CoL = '080dc164b56f544895192ee52cb97f02';
      id_Taxo = '1685439';        
      id_Wiki = 'Liopholis';
      id_EoL = '794963'; % unaccepted, to Egernia inornata
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Amphisbaena_alba'
      id_CoL = 'e9c5fca6f18472b4bdb1059cc9b179d0';
      id_Taxo = '50424';        
      id_EoL = '1055991';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Lacerta_agilis'
      id_CoL = '7e1a059719ca73323daa52f23a19a64d';
      id_Taxo = '642580';        
      id_EoL = '791768';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Lacerta_strigata'
      id_CoL = '13b6f7649bd9cb39390aa38518fca717';
      id_Taxo = '49578';    
      id_Wiki = 'Lacerta_(genus)';
      id_EoL = '792774';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Takydromus_hsuehshanensis'
      id_CoL = '0a29f929f99e543ced935005d9f39302';
      id_Taxo = '642687';    
      id_Wiki = 'Takydromus';
      id_EoL = '290159';
      id_AnAge = ''; % not present 2017/07/17
      id_ReptileDB = taxon_rep;
       
    case 'Varanus_komodoensis'
      id_CoL = '9734ef854130b3011fb9ec9be37afed1';
      id_Taxo = '170215';        
      id_EoL = '790179';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Anguis_fragilis'
      id_CoL = '9d72c2c8f700a5af8c9c3265f68859c7';
      id_Taxo = '49698';        
      id_EoL = '453239';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Furcifer_labordi'
      id_CoL = '2d8fe0c4795645592bb8c62369df1cd0';
      id_Taxo = '641166';        
      id_EoL = '1056897';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Ctenophorus_ornatus'
      id_CoL = '1784a51b08f5dec6219f9eb686c036f8';
      id_Taxo = '90658';        
      id_EoL = '795255';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Sceloporus_undulatus'
      id_CoL = '9152ab6db407dca4866fc5bb234b62a6';
      id_Taxo = '49023';        
      id_EoL = '793971';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Python_regius'
      id_CoL = '6d0035229236a4c7583a934a4b310b15';
      id_Taxo = '49851';        
      id_EoL = '1055460';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Eunectes_murinus'
      id_CoL = 'a97cd0d051262be8ea1c9b162f28b25f';
      id_Taxo = '49883';        
      id_EoL = '794661';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Eunectes_notaeus'
      id_CoL = '4ee2063f7571ac7a26a80209578b79fa';
      id_Taxo = '49884';        
      id_EoL = '794660';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Boa_constrictor'
      id_CoL = '253bb4ac5026b77a3adf9b78516913b9';
      id_Taxo = '49860';        
      id_EoL = '795595';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Vipera_berus'
      id_CoL = '2c91a42f205ad78e94e75be5dc844684';
      id_Taxo = '50340';        
      id_EoL = '289378';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Crotalus_horridus'
      id_CoL = 'e9f8350bf5f3e9c9dc286e5c54a9807d';
      id_Taxo = '50384';        
      id_EoL = '963777';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Coronella_austriaca'
      id_CoL = '7449215b10f0b0e3d3b66b04beff2d3d';
      id_Taxo = '49966';        
      id_EoL = '1287053';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Natrix_natrix'
      id_CoL = '27ec70b00734b68213ff0972f7360650';
      id_Taxo = '50029';        
      id_EoL = '791395';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Pelomedusa_subrufa'
      id_CoL = '70fb9207dac7da2ac75ad41d468fbe12';
      id_WoRMS = ''; % not present 2017/10/06
      id_Taxo = '48191';
      id_EoL = '791177';
      id_AnAge = taxon; 
      id_ReptileDB = taxon_rep;
       
    case 'Podocnemis_unifilis'
      id_CoL = 'a007f06fbc0c0dbcecd1fd883f03e4bd';
      id_WoRMS = ''; % not present 2017/10/06
      id_Taxo = '48187';
      id_EoL = '790997';
      id_AnAge = taxon; 
      id_ReptileDB = taxon_rep;
       
    case 'Pseudemydura_umbrina'
      id_CoL = '02201b34a72c0285ab6719ce051efc2f';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '48233';
      id_EoL = '793828';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;

     case 'Chelodina_oblonga'
      id_CoL = '49268c6c328437171ef67863c2cb96f2';
      id_WoRMS = ''; % not present 2017/10/09
      id_Taxo = '48245';
      id_EoL = '795413';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;

    case 'Elseya_dentata'
      id_CoL = '4257c55ec5c83ecd201337d03cb3b597';
      id_WoRMS = ''; % not present 2017/10/09
      id_Taxo = '48255';
      id_EoL = '794869';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
      id_ADW = ''; % not present 2017/10/09

    case 'Emydura_macquarii'
      id_CoL = '3fd3f782ce264d9b03ccae31e613ea25';
      id_WoRMS = ''; % not present 2017/10/09
      id_Taxo = '93062';
      id_EoL = '794804';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Hydromedusa_maximiliani'
      id_CoL = 'e99db52a9453446ed652e4389cab0a12';
      id_WoRMS = ''; % not present 2017/10/07
      id_Taxo = '48268';
      id_EoL = '2815879';
      id_AnAge = ''; % not present 2017/10/07
      id_ReptileDB = taxon_rep;
       
    case 'Chelus_fimbriata'
      id_CoL = '';   % not present 2017/10/07
      id_WoRMS = ''; % not present 2017/10/07
      id_Taxo = '4196212';
      id_EoL = '795410';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Carettochelys_insculpta'
      id_CoL = 'd9122d373653b2515fe81b26d31f1da9';
      id_WoRMS = ''; % not present 2017/10/06
      id_Taxo = '48380';
      id_EoL = '1056984';
      id_AnAge = taxon; 
      id_ReptileDB = taxon_rep;
       
    case 'Apalone_spinifera'
      id_CoL = 'e69205efb61d6d64105a38b2adf5d72a';
      id_WoRMS = ''; % not present 2017/10/05
      id_Taxo = '48407';
      id_EoL = '795751';
      id_AnAge = taxon; 
      id_ReptileDB = taxon_rep;

    case 'Chelydra_serpentina'
      id_CoL = 'be461ad353cdc36aa5c5432f715565c0';
      id_WoRMS = ''; % not present 2017/10/05
      id_Taxo = '48499';
      id_EoL = '795409';
      id_AnAge = taxon; 
      id_ReptileDB = taxon_rep;
       
    case 'Dermatemys_mawii'
      id_CoL = 'c3b908ded6324cd2ebd49df19414851b';
      id_WoRMS = ''; % not present 2017/10/07
      id_Taxo = '48377';
      id_EoL = '815713';
      id_AnAge = taxon; 
      id_ReptileDB = taxon_rep;
       
    case 'Dermochelys_coriacea'
      id_CoL = 'dd8153b49c7daf4582b11583525bc26c';
      id_WoRMS = '137209';
      id_Taxo = '48459';        
      id_EoL = '815711';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Claudius_angustatus'
      id_CoL = '00d089296bf70b151bc6848f3c21392c';
      id_WoRMS = ''; % not present at 2017/10/07
      id_Taxo = '48323';        
      id_EoL = '795375';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case {'Caretta_caretta','Caretta_caretta_MED'}
      id_CoL = '5667c31e110f65b6f24658fa8d7f650f';
      id_WoRMS = '137205';
      id_Taxo = '48469';
      id_EoL = '1275929';
      id_AnAge = 'Caretta_caretta';
      id_ReptileDB = 'genus=Caretta&species=caretta';
      id_ADW = 'Caretta_caretta'; 
      
    case 'Lepidochelys_kempii'
      id_CoL = '54e9e281f6d060b3f03a3d1295107826';
      id_WoRMS = '137208';
      id_Taxo = '48486'; 
      id_EoL = '1056176';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Natator_depressus'
      id_CoL = '912bfcb48046a727508637ce96085aa7';
      id_WoRMS = ''; % not present at 2017/06/14
      id_Taxo = '93064';        
      id_EoL = '791397';
      id_AnAge = ''; % not present at 2017/06/14
      id_ReptileDB = taxon_rep;
       
    case 'Chelonia_mydas'
      id_CoL = 'bd036a3edaf9c6342bc3984210d1ae5f';
      id_WoRMS = '137206';
      id_Taxo = '48475'; 
      id_EoL = '454546';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Platysternon_megacephalum'
      id_CoL = '9e3d4546e9f1e79be8b7e03d1ec7752a';
      id_WoRMS = ''; % not present 2017/10/08
      id_Taxo = '48515'; 
      id_EoL = '791024';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Emys_orbicularis'
      id_CoL = 'ba71bd298d244353522becf4be071d6c';
      id_WoRMS = ''; % not present 2017/10/04
      id_Taxo = '48623'; 
      id_EoL = '1056912';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Gopherus_agassizii'
      id_CoL = 'c5e9526e98a713152334a74e1311d2a1';
      id_WoRMS = ''; % not present 2017/10/10
      id_Taxo = '398391'; 
      id_EoL = '456478';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Gopherus_polyphemus'
      id_CoL = '2c470b11270cf44f3d69dd022e6ac6e9';
      id_WoRMS = ''; % not present 2017/10/10
      id_Taxo = '48663'; 
      id_EoL = '456481';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Testudo_graeca'
      id_CoL = '2fa6a5c48b6ff1ea7b518aa3d37d1503';
      id_WoRMS = ''; % not present 2017/10/04
      id_Taxo = '607890'; 
      id_EoL = '1055221';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Testudo_hermanni'
      id_CoL = 'de344232dec0a18f04e689df114abb38';
      id_WoRMS = ''; % not present 2017/10/04
      id_Taxo = '607892'; 
      id_EoL = '1055218';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Aldabrachelys_gigantea'
      id_CoL = 'c7ac6533a2e27e88c22624b9780bf004';
      id_WoRMS = ''; % not present 2017/10/10
      id_Taxo = '3806202'; 
      id_EoL = '795005'; % present as Dipsochelys dussumieri
      id_AnAge = 'Geochelone_gigantea';
      id_ReptileDB = taxon_rep;
      id_ADW = 'Dipsochelys_dussumieri';

    case 'Chelonoidis_niger'
      id_CoL = 'd70e55f5c72310311d5bd52089200292';
      id_WoRMS = ''; % not present 2017/10/11
      id_Taxo = '4682952'; 
      id_EoL = '794300'; % present as Chelonoidis nigra 2017/10/11
      id_AnAge = 'Geochelone_nigra';
      id_ReptileDB = taxon_rep;
      id_ADW = 'Chelonoidis_nigra';

    case 'Stigmochelys_pardalis'
      id_CoL = 'f4a53caae2df0db7d89765b274570efa';
      id_WoRMS = ''; % not present 2017/10/11
      id_Taxo = '3818344'; 
      id_EoL = '794299'; % present as Psammobates pardalis 2017/10/11
      id_AnAge = 'Geochelone_pardalis';
      id_ReptileDB = taxon_rep;
      id_ADW = 'Psammobates_pardalis';

    case 'Mauremys_japonica'
      id_CoL = 'ea5748c10a4bfa12e5ecdc6b36c7d993';
      id_WoRMS = ''; % not present 2017/10/05
      id_Taxo = '48581'; 
      id_EoL = '1055873';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Mauremys_sinensis'
      id_CoL = 'e1cfc2c8463ee0f1befcd8d223257b31';
      id_WoRMS = ''; % not present 2017/10/10
      id_Taxo = '1685684'; 
      id_EoL = '458849'; % present as Ocadia sinensis
      id_AnAge = ''; % not present 2017/10/10
      id_ReptileDB = taxon_rep;

    case 'Cuora_flavomarginata'
      id_CoL = 'd96fb3f9f1cba27ef6ee7875c24059ae';
      id_WoRMS = ''; % not present 2017/10/11
      id_Taxo = '48541'; 
      id_EoL = '1056709';
      id_AnAge = taxon; 
      id_ReptileDB = taxon_rep;

    case 'Deinosuchus_rugosus'
      id_CoL = ''; % not present 2010/06/16
      id_Taxo = '50639'; % present as genus 2010/06/16      
      id_EoL = '4472734';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Alligator_mississippiensis'
      id_CoL = '258a54f64c1a663997eb9cca0549f840';
      id_Taxo = '50616';        
      id_EoL = '796029';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Caiman_crocodilus'
      id_CoL = '2169464fbc24236e32ec1d7b81a59a45';
      id_Taxo = '50619';        
      id_EoL = '46325161';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Gavialis_gangeticus'
      id_CoL = '6bef8e5a76defdae652840a7b3416c9b';
      id_Taxo = '50652';        
      id_EoL = '794627';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Crocodylus_johnsoni'
      id_CoL = 'fcfe74af99e90cc51fee08e046d3aef2';
      id_Taxo = '50631'; 
      id_EoL = '795282';
      id_AnAge = ''; % not present 2017/06/18
      id_ReptileDB = taxon_rep;
       
    case 'Crocodylus_niloticus'
      id_CoL = '1a3211cb8764f54db424f9a4646c0075';
      id_Taxo = '50633';        
      id_EoL = '1280661';
      id_AnAge = taxon;
      id_ReptileDB = taxon_rep;
       
    case 'Pterodaustro_guinazui'
      id_CoL = '7241febd761e916d77b5d64f223534f0';
      id_Taxo = '50713'; % present as genus        
      id_EoL = '4532321';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Plateosaurus_engelhardti'
      id_CoL = 'ae30514b08e4a9102ed0953d4e849809';
      id_Taxo = '50866'; % present as genus         
      id_EoL = '4531220';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Camerasaurus_spec'
      id_CoL = 'f507a35be496f4aa1295ce637ec4d07c'; % C. supremus
      id_Taxo = ''; % not present at 2017/06/16       
      id_Wiki = 'Camerasaurus';
      id_EoL = '4531400';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Apatosaurus_spec'
      id_CoL = '901ec65eb9b9c783b00e6a2b21cde5d3'; % A. ajax
      id_Taxo = '50887'; % present as genus
      id_Wiki = 'Apatosaurus';
      id_EoL = '46370379';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Mamenchisaurus_spec'
      id_CoL = 'e65e3cac15fd4c7da196864957452e52'; % M. anyuensis
      id_Taxo = '50894'; % present as genus
      id_Wiki = 'Mamenchisaurus';
      id_EoL = '46370693';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09
      
    case 'Psittacosaurus_mongoliensis'
      id_CoL = '53bc6644c4a20fc8606d32a8104206c0';
      id_Taxo = '51062'; % present as genus           
      id_EoL = '4532055';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Maiasaura_peeblesorum'
      id_CoL = 'a8a49429384c6e0baa7d523cfa760e16';
      id_Taxo = '50959'; % present as genus              
      id_EoL = '4530718';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Daspletosaurus_torosus'
      id_CoL = 'd220ef2c6ad58b7d730719f5ad838bf8';
      id_Taxo = '50838'; % present as genus       
      id_EoL = '4433652';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Gorgosaurus_libratus'
      id_CoL = '54cd15bf2e0366e56b694ffd4318a821';
      id_Taxo = '1674440';        
      id_EoL = '13386365';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Tyrannosaurus_rex'
      id_CoL = '5b355e6aa28cdfd9bed3c5ed8f4a828d';
      id_Taxo = '50842';        
      id_EoL = '4433638';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      
    case 'Archaeopteryx_lithographica'
      id_CoL = 'b9239f5c1ac241577326804d5d856bf6';
      id_Taxo = '51227';        
      id_EoL = '42332498';
      id_AnAge = ''; % not present 2017/06/18
      id_ADW = ''; % not present at 2017/08/09 
      id_avibase = '76B6FC8B4372AA35';
      
   case 'Apteryx_mantelli'
      id_CoL = 'a2d2e28e381809c970138675ba310656';
      id_Taxo = '51310'; % unaccepted, to  Apteryx australis mantelli Bartlett, 1852      
      id_EoL = '130161';
      id_AnAge = ''; % not present at 2017/06/18 
      id_ADW = 'Apteryx_australis_mantelli';
      id_avibase = 'DB55CB8CC8C20EA5';
      
    case 'Dromaius_novaehollandiae'
      id_CoL = 'e211d1636655d7a1b1f48fdb2c584dae';
      id_Taxo = '51279';        
      id_EoL = '1178369';
      id_AnAge = taxon;       
      id_avibase = '2DB5A9703C6D4D91';
      
    case 'Struthio_camelus'
      id_CoL = 'e763abecc4e6a356b9764fe1904c045a';
      id_Taxo = '51245';        
      id_EoL = '1178371';
      id_AnAge = taxon;       
      id_avibase = '2247CB050A76CF8E';
      
    case 'Rhea_americana'
      id_CoL = 'e97ede28aa4346a1972c1fd2e7d24740';
      id_Taxo = '51258';        
      id_EoL = '1178370';
      id_AnAge = taxon;      
      id_avibase = '00986B2456382647';
      
    case 'Rhynchotus_rufescens'
      id_CoL = 'f4c7658ba36fc777a545f8cdc47d11f9';
      id_Taxo = '51378';        
      id_EoL = '1178398';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = 'C141F60AC7A92F11';
      
    case 'Alectura_lathami'
      id_CoL = '0af00c8374b5551a726a6d761528a5a8';
      id_Taxo = '52879';        
      id_EoL = '1050123';
      id_AnAge = taxon;       
      id_avibase = 'C141F60AC7A92F11';
      
    case 'Tetrastes_bonasia'
      id_CoL = '48797b9cd84c84166eca6c1bc4a3b01f';
      id_Taxo = '52966';        
      id_EoL = '892334';
      id_AnAge = taxon;       
      id_avibase = 'B8CA2EEB4E7E0CA3';
      
    case {'Gallus_gallus','Gallus_gallus_IR','Gallus_gallus_WL'}
      id_CoL = 'e9bd1de9ad04b90064cf96a24cf98310';
      id_Taxo = '53136';    
      id_Wiki = 'Gallus_gallus';
      id_EoL = '1049263';
      id_AnAge = 'Gallus_gallus';
      id_ADW = 'Gallus_gallus'; 
      id_avibase = '3749777E14C923E9';
      
    case 'Coturnix_japonica'
      id_CoL = 'f3b9c1a1a8e00ce2b6750a8db1424b32';
      id_Taxo = '70044';    
      id_EoL = '1049255';
      id_AnAge = taxon;       
      id_avibase = '110CF4251A857B0D';
      
    case 'Colinus_virginianus'
      id_CoL = '724211a845f6689a43faca49e240b73a';
      id_Taxo = '5';    
      id_EoL = '1049187';
      id_AnAge = taxon;      
      id_avibase = '91CCBC719C97AE19';
      
    case 'Anas_platyrhynchos'
      id_CoL = 'd5d9d6e502eb4c9f10b094dfdd935e65';
      id_WoRMS = '148791';
      id_Taxo = '52161';
      id_EoL = '1047918';
      id_AnAge = taxon;       
      id_avibase = '85625D75F2524457';
      
    case 'Aythya_fuligula'
      id_CoL = '7d788c57f99de05c3d37b04ee6dd1918';
      id_WoRMS = '159164';
      id_Taxo = '52214';
      id_EoL = '1048974';
      id_AnAge = taxon;       
      id_avibase = '67CEA1C1FC88F1DB';
      
    case 'Aythya_americana'
      id_CoL = '5dc5a9e15a584ee7a4459f572546bd32';
      id_WoRMS = '159162';
      id_Taxo = '52209';
      id_EoL = '1048964';
      id_AnAge = taxon;       
      id_avibase = '3072CC168280168B';
      
    case 'Mergus_merganser'
      id_CoL = 'dd005d87ee7a39a731b69942401091df';
      id_WoRMS = '159097';
      id_Taxo = '52280';        
      id_EoL = '1049001';
      id_AnAge = taxon;      
      id_avibase = '407E2CA886367DBB';
      
    case 'Mergus_serrator'
      id_CoL = 'cbe66f861f86562456b2d7e1ef5de373';
      id_WoRMS = '159098';
      id_Taxo = '52282';        
      id_EoL = '1049002';
      id_AnAge = taxon;       
      id_avibase = '8DB64266A42FC19B';
      
    case 'Melanitta_perspicillata'
      id_CoL = 'f9894443879efbdfd2b1b84dddc7b32a';
      id_WoRMS = '159095';
      id_Taxo = '52275';        
      id_EoL = '1048997';
      id_AnAge = taxon;       
      id_avibase = '624078BAC17F8111';
      
    case 'Somateria_mollissima'
      id_CoL = 'e999b4ec3f0ee05bcd43a62b67baaf64';
      id_WoRMS = '137074';
      id_Taxo = '52255';        
      id_EoL = '1048993';
      id_AnAge = taxon;       
      id_avibase = 'B77377EEB852D0AF';
      
    case 'Podilymbus_podiceps'
      id_CoL = 'efd1147e3604cc229f2e7dcafb95ca0b';
      id_WoRMS = '159062';
      id_Taxo = '51455';        
      id_EoL = '1047342';
      id_AnAge = taxon;       
      id_avibase = '9A8E55D00554A088';
      
    case 'Phoeniconaias_minor'
      id_CoL = '8b96caa363071f1641f8a492c77d2cb8';
      id_WoRMS = '212710';
      id_Taxo = '169341';        
      id_EoL = '1049437';
      id_AnAge = taxon;       
      id_avibase = 'B06A9079584A8D53';
      
    case 'Columba_oenas'
      id_CoL = 'ed30f61f67a50dfc7efd082e23ec61b9';
      id_Taxo = '53977'; 
      id_EoL = '1049690';
      id_AnAge = taxon;       
      id_avibase = '68E4C0D1404A46D8';
      
    case 'Columba_livia'
      id_CoL = '625498c7f0f49724cd81aae39db4e1e5';
      id_Taxo = '53973';        
      id_EoL = '1276446';
      id_AnAge = taxon;       
      id_avibase = 'BBA263C235B15B88';
      
    case 'Mesitornis_variegatus'
      id_CoL = 'a990bffed92b9b55d3f6cfb8572597e8';
      id_Taxo = '1122776';        
      id_EoL = '892225';
      id_AnAge = ''; % not present at 2017/06/18        
      id_avibase = 'ABDA1FE517C51198';
      
    case 'Pterocles_alchata'
      id_CoL = '470ed15824f0e16f12532abcfa8feb54';
      id_Taxo = '53935';        
      id_EoL = '1049523';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '493C4CF8D0200AB4';
      
    case 'Apus_apus'
      id_CoL = '9623ca15e5c36c273a9e571b97ba8107';
      id_Taxo = '54867';        
      id_EoL = '1046068';
      id_AnAge = taxon;      
      id_avibase = '4E6EF3F983079D73';
      
    case 'Archilochus_alexandri'
      id_CoL = '6b01e05030a20cc0e9fb9e44afb24ea0';
      id_Taxo = '72515';        
      id_EoL = '916375';
      id_AnAge = taxon;      
      id_avibase = '4BB4F25726A8B123';
      
    case 'Aegotheles_cristatus'
      id_CoL = 'e77dc5c18f2a229366e15a70c599332f';
      id_Taxo = '54805';        
      id_EoL = '1178113';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '175A7534149FDC90';
      
    case 'Podargus_strigoides'
      id_CoL = '77210dd21b917f4baf425d753ad78f02';
      id_Taxo = '54798';        
      id_EoL = '1178209';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '8500F1302409AD32';
      
    case 'Cuculus_canorus'
      id_CoL = '01a48abb4f3aba76b904ac4c7a32f20a';
      id_Taxo = '54514';        
      id_EoL = '913266';
      id_AnAge = taxon;      
      id_avibase = 'B3D2C3C5B73EC8E8';
      
    case 'Clamator_glandarius'
      id_CoL = '02135d597ace84d87208d04918b1beba';
      id_Taxo = '54509';        
      id_EoL = '914624';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '3D67C56A490A60AE';
      
    case 'Tauraco_erythrolophus'
      id_CoL = '4044ed76e392318b4727c7de43ddb7a5';
      id_Taxo = '54466';        
      id_EoL = '915606';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '91187A5248462828';
      
    case 'Ardeotis_kori'
      id_CoL = '185f3057c97c4f10fd7a1c483282d5a1';
      id_Taxo = '53450';        
      id_EoL = '915382';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '4FC41CA0DC1B12AF';
      
    case 'Opisthocomus_hoazin'
      id_CoL = 'ad3bcef887f4c268792c37f0d373faff';
      id_Taxo = '54479';        
      id_EoL = '914698';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '7E83A1B3DC1F8644';
      
    case 'Calidris_ferruginea'
      id_CoL = '9b0c2d95deffed6fa89cdb208c187026';
      id_WoRMS = '159049';
      id_Taxo = '53737'; 
      id_EoL = '1049496';
      id_AnAge = taxon;      
      id_avibase = '143A681C9BCE9A20';
      
    case 'Calidris_alpina'
      id_CoL = '3573e87083ded2fb1ffc96183f7def79';
      id_WoRMS = '159047';
      id_Taxo = '53732';        
      id_EoL = '1049497';
      id_AnAge = taxon;       
      id_avibase = '15369E8EB4CBD064';
      
    case 'Calidris_bairdii'
      id_CoL = 'b332bce93951f2c8b34f237074c8b5bc';
      id_WoRMS = '159048';
      id_Taxo = '53735';        
      id_EoL = '1049483';
      id_AnAge = ''; % not present at 2017/06/18        
      id_avibase = '1F1AD154DAE2E070';
      
    case 'Calidris_minuta'
      id_CoL = '9690a93b47b604e28ac765c2345ba29c';
      id_WoRMS = '212600';
      id_Taxo = '53742';        
      id_EoL = '1049519';
      id_AnAge = taxon;       
      id_avibase = '9936FF4AFB430504';
      
    case 'Calidris_minutilla'
      id_CoL = '81a637f1ff6e3f1fda7a976824ba5adc';
      id_WoRMS = '159054';
      id_Taxo = '53743';        
      id_EoL = '1049484';
      id_AnAge = taxon;      
      id_avibase = 'A47B0BD448AA34E0';
      
    case 'Calidris_maritima'
      id_CoL = 'a35342e9335b7725fa58bc1da7787203';
      id_WoRMS = '159052';
      id_Taxo = '53739';        
      id_EoL = '1049471';
      id_AnAge = taxon;      
      id_avibase = '0A0B84313ACFFB2F';
      
    case 'Philomachus_pugnax'
      id_CoL = '7b48212a290510deccad5344b1d61986';
      id_WoRMS = '159046';
      id_Taxo = '53753';        
      id_EoL = '1049551';
      id_AnAge = taxon;      
      id_avibase = '2DABF98FBEEAB7BB'; % present as Calidris pugnax
      
    case 'Tringa_flavipes'
      id_CoL = 'dfc3b9462212b04edcb721a3db10791e';
      id_WoRMS = '159030';
      id_Taxo = '53669';        
      id_EoL = '1049439';
      id_AnAge = taxon;       
      id_avibase = '2C7A2673444BECF0';
      
    case 'Tringa_totanus'
      id_CoL = '962fa82c8b0d12d96bfcc94a9fe3fe01';
      id_WoRMS = '158970';
      id_Taxo = '53680';        
      id_EoL = '1049441';
      id_AnAge = taxon;       
      id_avibase = 'D6BFC73A3E067711';
      
    case 'Limnodromus_griseus'
      id_CoL = 'e45c6cab6f6609688ad3f1f3fcd1ff3f';
      id_WoRMS = '158955';
      id_Taxo = '53721';        
      id_EoL = '1049540';
      id_AnAge = taxon;       
      id_avibase = '4A3B2CFF53868550';
      
    case 'Limosa_haemastica'
      id_CoL = '33c1fb3078fbaabe8a5b2112bece7d67';
      id_WoRMS = '159033';
      id_Taxo = '53654';        
      id_EoL = '1049549';
      id_AnAge = ''; % not present at 2017/06/18        
      id_avibase = '930139644308C7B7';
      
    case 'Limosa_limosa'
      id_CoL = '762df0cf6ff275514b2c06b5e5c8bf98';
      id_WoRMS = ''; % not present at 2017/07/16
      id_Taxo = '53656';        
      id_EoL = '1049550';
      id_AnAge = taxon;       
      id_avibase = '454B5CD5F5285B77';
      
    case 'Numenius_phaeopus'
      id_CoL = '19bd674744e8fd0eda79a3b09a47568d';
      id_WoRMS = '159040';
      id_Taxo = '53662';        
      id_EoL = '1049394';
      id_AnAge = taxon;       
      id_avibase = '082F3A63A99AEDD4';
      
    case 'Fratercula_arctica'
      id_CoL = '80c12642c3ab7cc036ee3749463ca606';
      id_WoRMS = '137131';
      id_Taxo = '53907';        
      id_EoL = '1049938';
      id_AnAge = taxon;       
      id_avibase = '2771624B64AD7F2C';
      
    case 'Ptychoramphus_aleuticus'
      id_CoL = '1b8b9f4a86353758c7ff85c17a850ab4';
      id_WoRMS = '344115';
      id_Taxo = '53917';        
      id_EoL = '1049882';
      id_AnAge = taxon;      
      id_avibase = '2CF6D6F60FAD0DE9';
      
    case 'Aethia_pusilla'
      id_CoL = 'eedd1a360668ef531a40b98d4493618e';
      id_WoRMS = '344016';
      id_Taxo = '53928';        
      id_EoL = '1049894';
      id_AnAge = taxon;      
      id_avibase = '044509DAF1E58241';
      
    case 'Aethia_cristatella'
      id_CoL = '7048c7929886b0410e3501585b00d8a9';
      id_WoRMS = '344015';
      id_Taxo = '53927';        
      id_EoL = '1049883';
      id_AnAge = taxon;
      id_avibase = '3DC4EBB85AB96A2A';
      
    case 'Cepphus_grylle'
      id_CoL = 'f56cecae9c9629f9bcc610161d9b483e';
      id_WoRMS = '137130';
      id_Taxo = '53898';        
      id_EoL = '1049817';
      id_AnAge = taxon;       
      id_avibase = 'B5AA5952E13FE5F3';
      
    case 'Uria_aalge'
      id_CoL = '1f21d6d69cb8c09be9a27485d68bc4d1';
      id_WoRMS = '137133';
      id_Taxo = '53922';        
      id_EoL = '1049761';
      id_AnAge = taxon;       
      id_avibase = '39F29B55EF9A542F';
      
    case 'Uria_lomvia'
      id_CoL = '4a4b216694d920384c31bd8854e0f1d8';
      id_WoRMS = '137134';
      id_Taxo = '53924';        
      id_EoL = '1049762';
      id_AnAge = taxon;       
      id_avibase = 'B70B5840ABCD5CFC';
      
    case 'Alle_alle'
      id_CoL = 'd04ac5333679e22045b58982006bcc2d';
      id_WoRMS = '137129';
      id_Taxo = '53890';        
      id_EoL = '1049773';
      id_AnAge = taxon;       
      id_avibase = 'B0932D89F1F74318';
      
    case 'Pinguinus_impennis'
      id_CoL = 'caf3fab41ba54462fe586a8bcdcdb54b';
      id_WoRMS = '137132';
      id_Taxo = '53912';        
      id_EoL = '1050026';
      id_AnAge = ''; % not present at 2017/06/18        
      id_avibase = '57D2F32E062CB366';
      
    case 'Alca_torda'
      id_CoL = '7524d7f8f9a7aff80ccb4cbb4d31501b';
      id_WoRMS = '137128';
      id_Taxo = '53888';        
      id_EoL = '1049760';
      id_AnAge = taxon;       
      id_avibase = '64F4DD81371B269F';
      
    case 'Chlidonias_leucopterus'
      id_CoL = 'a666e4b62baba1a7edf044f52f7eefd5';
      id_WoRMS = '137136';
      id_Taxo = '93234';        
      id_EoL = '1049371';
      id_AnAge = ''; % not present at 2017/06/18       
      id_avibase = '43CAAEE3B0D305D9';
      
    case 'Sterna_paradisaea'
      id_CoL = 'b20a894252b52f4c191ef168d1a7aaad';
      id_WoRMS = '137165';
      id_Taxo = '53874';        
      id_EoL = '1049640';
      id_AnAge = taxon;       
      id_avibase = 'BDC5CF80BE6CFC21';
      
    case 'Sterna_hirundo'
      id_CoL = 'c83b9db3064841202e4e59eb103b5847';
      id_WoRMS = '137162';
      id_Taxo = '53869';        
      id_EoL = '1049639';
      id_AnAge = taxon;       
      id_avibase = '4D2FF6F13790ED7E';
      
    case 'Thalasseus_sandvicensis'
      id_CoL = 'fd712ba9ea195d3cc049c283c6ba3caa';
      id_WoRMS = '413044'; % unaccepted, to Sterna sandvicensis Latham, 1787
      id_Taxo = '610055';        
      id_EoL = '45895702';
      id_AnAge = taxon;
      id_ADW = 'Sterna_sandvicensis'; 
      id_avibase = '04B49AE78FFF9B68';
      
    case 'Chroicocephalus_ridibundus'
      id_CoL = '619c28ecb10081c76f0926710fdc982a';
      id_WoRMS = '465358';
      id_Taxo = '53823'; % present as Larus ridibundus Linnaeus, 1766       
      id_EoL = '1049595';
      id_AnAge = taxon;
      id_ADW = 'Larus_ridibundus'; 
      id_avibase = 'FB02DD9658CC1EC6';

    case 'Larus_argentatus'
      id_CoL = '6d0b384ca6c3c1ec2eb97706da11eae8';
      id_WoRMS = '137138';
      id_Taxo = '53781';        
      id_EoL = '1049581';
      id_AnAge = taxon;      
      id_avibase = 'F002188E226DF09C';
      
    case 'Rissa_tridactyla'
      id_CoL = 'bab5d031b01e7f12e85e1bdcf9726828';
      id_WoRMS = '137156';
      id_Taxo = '53831';        
      id_EoL = '1049628';
      id_AnAge = taxon;      
      id_avibase = 'FB4D08F0837D4683';
      
    case 'Rissa_brevirostris'
      id_CoL = 'bab5d031b01e7f12e85e1bdcf9726828';
      id_WoRMS = '343923';
      id_Taxo = '53830';        
      id_EoL = '1049624';
      id_AnAge = taxon;       
      id_avibase = '58B576ED088D10F9';
      
    case 'Stercorarius_longicaudus'
      id_CoL = '7463b0f804c2d9ab6acd1e21194c690a';
      id_WoRMS = '137171';
      id_Taxo = '53772';        
      id_EoL = '1049570';
      id_AnAge = taxon;       
      id_avibase = '1D4464402EC9FD21';
      
    case 'Stercorarius_skua'
      id_CoL = '0a044c4812738721275215f803d29c25';
      id_WoRMS = '137174';
      id_Taxo = '53775';        
      id_EoL = '1064979';
      id_AnAge = taxon;       
      id_avibase = 'BB041C6E5DB73FC7';
      
    case 'Stercorarius_maccormicki'
      id_CoL = '15e1f2d9818ba3046dff1e228d1587b6';
      id_WoRMS = '422607';
      id_Taxo = '947074';        
      id_EoL = '1064976';
      id_AnAge = taxon;      
      id_avibase = '7D1A9D5CCCDC597C';
      
    case 'Himantopus_mexicanus'
      id_CoL = '1f5847657f78653cd8be6e4f828a1c0d';
      id_WoRMS = '159131';
      id_Taxo = '1122806'; % present as Himantopus himantopus mexicanus (Statius M�ller, 1776)        
      id_EoL = '1049561';
      id_AnAge = taxon;
      id_ADW = 'Himantopus_himantopus_mexicanus'; 
      id_avibase = 'C1D4E1DD9ABDEF3C';
      
    case 'Haematopus_moquini'
      id_CoL = '35a448e347c4bb7b28695e9fcb3c744b';
      id_WoRMS = '212720';
      id_Taxo = '70245';        
      id_EoL = '1049058';
      id_AnAge = ''; % not present at 2017/06/18        
      id_avibase = 'C078081EB45D895F';
      
    case 'Vanellus_vanellus'
      id_CoL = 'a72664542a6c3a33c679530309994536';
      id_WoRMS = '159142'; 
      id_Taxo = '53579';     
      id_EoL = '1049340';
      id_AnAge = taxon;      
      id_avibase = 'F029489ABD9D1334';
      
     case 'Vanellus_armatus'
      id_CoL = '6034cc9bf59a797ca53b2e50c0241a25';
      id_WoRMS = ''; % not present 2017/06/17
      id_Taxo = '70262';     
      id_EoL = '1049061';
      id_AnAge = taxon;       
      id_avibase = '2F23EDC6558D31B3';
      
    case 'Vanellus_coronatus'
      id_CoL = '6b2bf7e07f766050de717c4a411774c2';
      id_WoRMS = '366837';
      id_Taxo = '70269'; 
      id_EoL = '1049064';
      id_AnAge = ''; % not present at 2017/06/18        
      id_avibase = 'D0FA8EBE3808F1D8';
      
    case 'Charadrius_pecuarius'
      id_CoL = '7649077c28e6d6a042e8f6a197b55be5';
      id_WoRMS = '366846';
      id_Taxo = '53603';        
      id_EoL = '1049103';
      id_AnAge = ''; % not present at 2017/06/18        
      id_avibase = '0F0DCC2F28E4E83B';
      
    case 'Pluvialis_dominica'
      id_CoL = 'aa24423d09987a0d571d2e28180b1960';
      id_WoRMS = '159136';
      id_Taxo = '53625';        
      id_EoL = '1049365';
      id_AnAge = taxon;       
      id_avibase = '2143A8526CA7C809';
      
    case 'Gallinula_chloropus'
      id_CoL = '8c1a4e2718730f2ad6171f96fb6c6fa3';
      id_Taxo = '53395';      
      id_EoL = '1049299';
      id_AnAge = taxon;       
      id_avibase = '8F82FF8C30667D90';
      
    case 'Grus_japonensis'
      id_CoL = '6fde6b82ab0ac42b5d8bbd69e9433010';
      id_Taxo = '53270';        
      id_EoL = '915325';
      id_AnAge = taxon;       
      id_avibase = 'E196D6F9AB1DFF7E';
      
    case 'Grus_monacha'
      id_CoL = '0e419445ddc878e375c38fa9d9515969';
      id_Taxo = '53272';        
      id_EoL = '915329';
      id_AnAge = taxon;      
      id_avibase = '38F36091DBC85095';
      
    case 'Grus_americana'
      id_CoL = '1a22f8fb4ebe8e382b8685b187aafa18';
      id_Taxo = '53263';        
      id_EoL = '1049271';
      id_AnAge = taxon;       
      id_avibase = 'B87D744DCD48ECC9';

    case 'Grus_virgo'
      id_CoL = '987b70eac098e65fbf96b62c25c06f86';  % unaccepted, to Anthropoides virgo (Linnaeus, 1758)       
      id_Taxo = '167356'; % unaccepted, to Anthropoides virgo (Linnaeus, 1758)       
      id_EoL = '915336';  % unaccepted, to Anthropoides virgo (Linnaeus, 1758)       
      id_AnAge = 'Anthropoides_virgo';
      id_ADW = 'Anthropoides_virgo';
      id_avibase = '64DDD14DF2EB9B39';

    case 'Antigone_antigone'
      id_CoL = '2f827f37dafa3abedcb078144d0cd10f'; % unaccepted, to Grus antigone
      id_Taxo = '53264'; % unaccepted, to Grus antigone       
      id_EoL = '915318'; % unaccepted, to Grus antigone
      id_AnAge = taxon;  % unaccepted, to Grus antigone      
      id_avibase = '8D891DB7520688E0'; 
      id_Wiki = 'Grus_antigone';
      id_ADW = 'Grus_antigone';
                  
    case 'Antigone_vipio'
      id_CoL = '28717f30fbb5ef2ba20f85bb587a54d5'; % unaccepted, to Grus vipio
      id_Taxo = '53275';  % unaccepted, to Grus vipio
      id_EoL = '915332';  % unaccepted, to Grus vipio
      id_AnAge = 'Grus_vipio';     
      id_avibase = '1125F89DE2FF4F98'; 
      id_ADW = 'Grus_vipio';
      id_Wiki = 'Grus_vipio';
      
    case 'Antigone_canadensis'
      id_CoL = 'b5fb32b609572d52ede7b7748943dc51'; % unaccepted, to Grus canadensis
      id_Taxo = '53265';   % unaccepted, to Grus canadensis     
      id_EoL = '1049272';  % unaccepted, to Grus canadensis
      id_AnAge = 'Grus_canadensis';       
      id_avibase = 'E196D6F9AB1DFF7E'; 
      id_Wiki = 'Grus_canadensis';       
      id_ADW = 'Grus_canadensis';             
      
    case 'Antigone_rubicunda'
      id_CoL = '91e043fbcde2082b7347fce518462e0e'; % unaccepted, to Grus rubicunda
      id_Taxo = '83116';   % unaccepted, to Grus rubicunda     
      id_EoL = '915331';   % unaccepted, to Grus rubicunda
      id_AnAge = 'Grus_rubicunda';       
      id_avibase = 'A4480D0279EA1C38';
      id_Wiki = 'Grus_rubicunda';       
      id_ADW = 'Grus_rubicunda';             
      
    case 'Leucogeranus_leucogeranus'
      id_CoL = '0ae95f5329e0e7fe075c002169e60746'; % unaccepted, to Grus leucogeranus
      id_Taxo = '53271';   % unaccepted, to Grus leucogeranus     
      id_EoL = '915328';   % unaccepted, to Grus leucogeranus
      id_AnAge = 'Grus_leucogeranus';       
      id_avibase = '77845DAD1C49E8F1';
      id_Wiki = 'Grus_leucogeranus';
      id_ADW = 'Grus_leucogeranus';
      
    case 'Phaethon_lepturus'
      id_CoL = '9c0e9cb143508bda222bd0adec5383db';
      id_WoRMS = '212594';
      id_Taxo = '51638';
      id_EoL = '1048567';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = '1D07B501FEAF0840';
      
    case 'Phaethon_rubricauda'
      id_CoL = 'a2644bbf86d31681747084a3cf98311e';
      id_WoRMS = '212595';
      id_Taxo = '51639';
      id_EoL = '1048589';
      id_AnAge = taxon;       
      id_avibase = 'C412CD623EDA1B28';
      
    case 'Rhynochetos_jubatus'
      id_CoL = '7a9792a8c9f4eb22d6d286d64456516c';
      id_Taxo = '53431';        
      id_EoL = '1045974';
      id_AnAge = ''; % not present 2017/06/18      
      id_avibase = '227D77FBFA6E408A';
      
    case 'Gavia_stellata'
      id_CoL = '82657d3390f0a0d5bc1349a48394f8d0';
      id_WoRMS = '137188';
      id_Taxo = '51433'; 
      id_EoL = '1047332';
      id_AnAge = taxon;       
      id_avibase = '6C50988A5445ED76';
      
    case 'Gavia_immer'
      id_CoL = '30f86b5fc760b8d8023db2b2c4e7a20f';
      id_WoRMS = '137187';
      id_Taxo = '51431';        
      id_EoL = '1047329';
      id_AnAge = taxon;       
      id_avibase = '7E02237895784E9A';
      
    case 'Eudyptula_minor'
      id_CoL = 'e838f924c9d3a989c346b7b3b54d9f33';
      id_WoRMS = '225932';
      id_Taxo = '51413';        
      id_EoL = '1049616';
      id_AnAge = taxon;       
      id_avibase = '151738D51BE6DDA4';
      
    case 'Pygoscelis_adeliae'
      id_CoL = '1b57a7bf98db087e0a1a8d9757cbf688';
      id_WoRMS = '225757';
      id_Taxo = '51406';        
      id_EoL = '1049602';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = '4A947BE7A06E046E';
      
    case 'Pygoscelis_antarcticus'
      id_CoL = '347ec66a28df5a6e5ed91745e84774ab';
      id_WoRMS = '225783';
      id_Taxo = '1014811';        
      id_EoL = '1064980';
      id_AnAge = ''; % not present 2017/09/03       
      id_avibase = '75B943A302F2CC67';
      
    case 'Pygoscelis_papua'
      id_CoL = '5c2aa01f0d9ab0f0a4f7f058629039f7';
      id_WoRMS = '225777';
      id_Taxo = '51415';        
      id_EoL = '1049603';
      id_AnAge = taxon;   
      id_avibase = 'F2B3BF2A1B6D05F6';
      
    case 'Fulmarus_glacialis'
      id_CoL = 'a6e247adc3755e7607c4862ae639f9c3';
      id_WoRMS = '137195';
      id_Taxo = '51494';        
      id_EoL = '1047350';
      id_AnAge = taxon;       
      id_avibase = '049D9AEA4AFBFDFA';
      
    case 'Diomedea_exulans'
      id_CoL = '9cf46c5413e6bef61c029d6cef69ff57';
      id_WoRMS = '212583';
      id_Taxo = '167927';        
      id_EoL = '1047348';
      id_AnAge = taxon;       
      id_avibase = '049D9AEA4AFBFDFA';
      
    case 'Thalassarche_melanophrys'
      id_CoL = '9fad68b95fb3aebcce48f0d9fae66787';
      id_WoRMS = '225756'; % unaccepted, to Thalassarche melanophris (Temminck, 1828)
      id_Taxo = '959767';        
      id_EoL = '1178556'; % unaccepted, to Thalassarche melanophris (Temminck, 1828)
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = 'F9CBC9EB6CE43281'; % present as Thalassarche melanophris 
      
    case 'Ciconia_ciconia'
      id_CoL = '1f8d320bdebfb912da9ef2433da92a85';
      id_Taxo = '51849'; 
      id_EoL = '1228800';
      id_AnAge = taxon;       
      id_avibase = '28825494A08AFE5A';
      
    case 'Phalacrocorax_auritus'
      id_CoL = '0db1d944fd592b2e7d18ed5aec730aca';
      id_WoRMS = '159059';
      id_Taxo = '51681'; 
      id_EoL = '1048642';
      id_AnAge = taxon;      
      id_avibase = '3AC46C54EE4A6251';
      
    case 'Sula_bassana'
      id_CoL = '4dc3e535a6a6253e4adceb72157431fe'; % unaccepted, to Morus bassanus (Linnaeus, 1758)
      id_WoRMS = '137180';  % unaccepted, to Morus bassanus (Linnaeus, 1758)
      id_Taxo = '51654';    % unaccepted, to Morus bassanus (Linnaeus, 1758)       
      id_EoL = '1048640';   % unaccepted, to Morus bassanus (Linnaeus, 1758)       
      id_AnAge = 'Morus_bassanus';
      id_ADW = 'Morus_bassanus';
      id_avibase = '534FB490884C6D33'; % present as Morus bassanus
      
    case 'Sula_nebouxii'
      id_CoL = 'ea3be33231335317a364427a5bcc38f3';
      id_WoRMS = '343959';
      id_Taxo = '51663';        
      id_EoL = '1048610';
      id_AnAge = taxon;       
      id_avibase = '649F85B5CED953D5';
      
    case 'Balaeniceps_rex'
      id_CoL = '16bde12b82a99c26cf61f1229cd3f41a';
      id_Taxo = '51842';  
      id_EoL = '1049385';
      id_AnAge = taxon;      
      id_avibase = '47C7FDFD96162AC1';
      
    case 'Pelecanus_onocrotalus'
      id_CoL = '93042a2bf3d8f48f27fe9b410ac0d62a';
      id_WoRMS = '137176';
      id_Taxo = '51649'; 
      id_EoL = '1049382';
      id_AnAge = taxon;
      id_avibase = '8BAFB01E85D7AF4B';
      
    case 'Aquila_chrysaetos'
      id_CoL = '5b68758c108a10b7c6be9f990d3ad0a3';
      id_Taxo = '52605'; 
      id_EoL = '1049119';
      id_AnAge = taxon;      
      id_avibase = '5F8E7CA845BD413F';
      
    case 'Circus_aeruginosus'
      id_CoL = '86e884dce0543b20ad3f399fc9ce5198';
      id_Taxo = '52508';        
      id_EoL = '1047915';
      id_AnAge = taxon;       
      id_avibase = 'E2A19474E62F83E1';
      
    case 'Vultur_gryphus'
      id_CoL = 'e012d92f1ab45b81706d72e36c5512e0';
      id_Taxo = '52316';        
      id_EoL = '1049160';
      id_AnAge = taxon;       
      id_avibase = '659E8F5C0AEA27F2';
      
    case 'Tyto_alba'
      id_CoL = '6fcd23e9a266d2ec77f69e02b75fbead';
      id_Taxo = '54626';        
      id_EoL = '914939';
      id_AnAge = taxon;      
      id_avibase = '96B91A6873827284';
      
    case 'Bubo_scandiacus'
      id_CoL = '1347e0b2597b16465cd5674f305fafd4';
      id_Taxo = '54708'; % present as Nyctea scandiaca (C. Linnaeus, 1758)       
      id_EoL = '1036388';
      id_AnAge = taxon;
      id_ADW = 'Nyctea_scandiaca';
      id_avibase = '5B23B360E7DEC4A9';
      
    case 'Bubo_virginianus'
      id_CoL = '657c70b3ce45f54079dabb6949fb5ac2';
      id_Taxo = '54659';        
      id_EoL = '914958';
      id_AnAge = taxon;       
      id_avibase = 'FC366114BD3B51A0';
      
    case 'Urocolius_macrourus'
      id_CoL = 'e563e083718e4eb3a35fbcbde6fcaadd';
      id_Taxo = '55152';        
      id_EoL = '1049674';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = 'E45D9EB2FE2364EE';
      
    case 'Leptosomus_discolor'
      id_CoL = 'fb7bb155923268f8cec398b5e34a27b5';
      id_Taxo = '55345';        
      id_EoL = '1050030';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = 'BCC6CD0D279E592A';
      
    case 'Euptilotis_neoxenus'
      id_CoL = '9e2e1359f85b411a7a1c34b7aa1151b5';
      id_Taxo = '55161';        
      id_EoL = '917143';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = 'BCC6CD0D279E592A';
      
    case 'Bucorvus_leadbeateri'
      id_CoL = 'c37431d15839c9b467569ad3045869be';
      id_Taxo = '105636';        
      id_EoL = '1048004';
      id_AnAge = taxon;       
      id_avibase = '4192DE77F2F73998';
      
    case 'Todiramphus_cinnamominus'
      id_CoL = '1c50b024147aadb63f1f128e5afa7e79';
      id_Taxo = '1125446';        
      id_EoL = '1064917';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = '3FD21E0406D6A736';
      
    case 'Ramphastos_toco'
      id_CoL = '5cf6207f05c77e03bcbcd85733db072f';
      id_Taxo = '55573';        
      id_EoL = '1177788';
      id_AnAge = taxon;       
      id_avibase = 'D42641C0E83A2C10';
      
    case 'Jynx_torquilla'
      id_CoL = '3a38254e7d541ce65f7befae820a116a';
      id_Taxo = '55583';        
      id_EoL = '917141';
      id_AnAge = taxon;       
      id_avibase = 'B2E6AB9FC2608DFA';
      
    case 'Cariama_cristata'
      id_CoL = '51010aa3e16c9d55c093b195102bac97';
      id_Taxo = '53437';        
      id_EoL = '915312';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = '5817C5F7C841C6DE';
      
    case 'Falco_naumanni'
      id_CoL = 'bc99d387d3a7b447bf1d951ef8111cc2';
      id_Taxo = '52830';        
      id_EoL = '1049201';
      id_AnAge = taxon;       
      id_avibase = 'BECA271F14F77BEE';
      
    case 'Falco_tinnunculus'
      id_CoL = 'f30a471764fb219cde0a6bdaed72dca7';
      id_Taxo = '52853';        
      id_EoL = '1049167';
      id_AnAge = taxon;       
      id_avibase = 'DCDDC20BDA55E5D3';
      
    case 'Melopsittacus_undulatus'
      id_CoL = 'f683faf1a057f5da3a1c30c0bbaf51fd';
      id_Taxo = '54299';        
      id_EoL = '914969';
      id_AnAge = taxon;       
      id_avibase = 'D17D101A132D3FB2';
      
    case 'Forpus_passerinus'
      id_CoL = '9dde78344c3ce809f5af4d35947c6ae0';
      id_Taxo = '54427';        
      id_EoL = '1178014';
      id_AnAge = taxon;       
      id_avibase = 'E43CCCA642160851';
      
    case 'Myiopsitta_monachus'
      id_CoL = '66379bf2092e6d5ed3e6728d671bc89f';
      id_Taxo = '54433';        
      id_EoL = '915945';
      id_AnAge = taxon;       
      id_avibase = '35810386DDA72E08';
      
    case 'Aphrastura_spinicauda'
      id_CoL = 'fc5861eec01a70a052c61fd549cbe59c';
      id_Taxo = '74811';        
      id_EoL = '917985';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = '42F16BDC71348982';
      
    case 'Tyrannus_tyrannus'
      id_CoL = 'e2f3ff2fc877b9322dbd4fbe6a87f5f7';
      id_Taxo = '56162';        
      id_EoL = '917490';
      id_AnAge = taxon;       
      id_avibase = '082D833CF61D6360';
      
    case 'Sayornis_phoebe'
      id_CoL = 'a15591a5779bfc04754d9082dbfc27dd';
      id_Taxo = '56141';        
      id_EoL = '1046715';
      id_AnAge = taxon;       
      id_avibase = '62CA2AF81AF5B68D';
      
    case 'Lanius_senator'
      id_CoL = '2f89fd5f925b02ec2152336e3e270879';
      id_Taxo = '56645';        
      id_EoL = '1050932';
      id_AnAge = taxon;       
      id_avibase = '7E70D490A6476D16';
      
    case 'Pica_pica'
      id_CoL = '15edda20e5f20f4e97c324d80eb1cf6f';
      id_Taxo = '59494';        
      id_EoL = '1177362';
      id_AnAge = taxon;       
      id_avibase = '1EB2E3C72A6B688A';
      
    case 'Corvus_monedula'
      id_CoL = '8b1d7741c6b8ad881d4f28e0bbe0bdeb';
      id_Taxo = '59548';        
      id_EoL = '1177485';
      id_AnAge = ''; % not present 2017/06/18 
      id_avibase = 'D4C32F8E792B65BA';
      
    case 'Remiz_pendulinus'
      id_CoL = '3970051da664fb71a70190918d8739e8';
      id_Taxo = '57690';        
      id_EoL = '1051179';
      id_AnAge = taxon;       
      id_avibase = 'F81EB04951AA84BB';
      
    case 'Lophophanes_cristatus'
      id_CoL = 'cd1512991114f0bcfd9c50282ed817d7';
      id_Taxo = '57703'; % present as Parus cristatus Linnaeus, 1758     
      id_EoL = '1052002';
      id_AnAge = taxon;
      id_ADW = 'Parus cristatus'; 
      id_avibase = 'E553193354C74B21';
      
    case 'Poecile_atricapillus'
      id_CoL = 'aed95c6ec867d5d04bbab05d19687d73';
      id_Taxo = '57697';   % present as Parus atricapillus     
      id_EoL = '1178539';
      id_AnAge = taxon;    
      id_avibase = 'B1F0CC82E34E4541'; 
      id_ADW = 'Parus_atricapillus';
      
    case 'Parus_major'
      id_CoL = '9a3033c7cf62b8a01f58d9a946e06126';
      id_Taxo = '57713';        
      id_EoL = '1051974';
      id_AnAge = taxon;       
      id_avibase = '7296BC772F2643AD';
      
    case 'Cyanistes_caeruleus'
      id_CoL = 'df55272f9bdde6d18cd7f4942fe59ad9';
      id_Taxo = '57700'; % present as Parus caeruleus       
      id_EoL = '1051997';
      id_AnAge = taxon;       
      id_avibase = '9BE53D340F9A4305';
      id_ADW = 'Parus_caeruleus';
      
    case 'Periparus_ater'
      id_CoL = 'a1536cbd36af848c4cfb9234fad2e1e0';
      id_Taxo = '57696'; % present as Parus ater Linnaeus, 1758       
      id_EoL = '1052006';
      id_AnAge = taxon;
      id_ADW = 'Parus_ater'; 
      id_avibase = 'A4EBA919FCAFED5E';
      
    case 'Sylvia_atricapilla'
      id_CoL = '4134d00c993b71067bfeb807a0d09c4b';
      id_Taxo = '57368';        
      id_EoL = '1052362';
      id_AnAge = taxon;       
      id_avibase = '61F9065BE0965E1A';
      
    case 'Phylloscopus_trochilus'
      id_CoL = '9f7d79f2f0a042ef0e8368239dfb1cb3';
      id_Taxo = '57343';        
      id_EoL = '1052636';
      id_AnAge = taxon;       
      id_avibase = '88F4B969622B8268';
      
    case 'Regulus_regulus'
      id_CoL = '39de64eea659b04cfd67c5d4ff5633f4';
      id_Taxo = '57355';        
      id_EoL = '1051232';
      id_AnAge = taxon;      
      id_avibase = 'A7CC62D6BD333F25';
      
    case 'Regulus_ignicapillus'
      id_CoL = '8480c26fe2dde898a777686976e2e1e4';
      id_Taxo = '1126234'; % unaccepted, to Regulus ignicapilla (Temminck, 1820)       
      id_EoL = '1051231';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = '85B03849153146D8';
      
    case 'Tichodroma_muraria'
      id_CoL = '1c8d1f126dda2f5330c60f85fcfb30c4';
      id_Taxo = '57768';        
      id_EoL = '1051060';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = '89C425901C5B5343';
      
    case 'Troglodytes_aedon'
      id_CoL = '844d88011fccf9fc3ebd08155e87483b';
      id_Taxo = '56758';        
      id_EoL = '1050659';
      id_AnAge = taxon;      
      id_avibase = '51E937020E0F3B99';
      
    case 'Sitta_europaea'
      id_CoL = '9ba4a95ae5651cb91dbeca2e404f662d';
      id_Taxo = '57744';        
      id_EoL = '1051081';
      id_AnAge = taxon;      
      id_avibase = '9C2B53A087F44E10';
      
    case 'Cinclus_cinclus'
      id_CoL = 'fcb3f9f786fe924fe49d1c502504a864';
      id_Taxo = '56716';        
      id_EoL = '916125';
      id_AnAge = taxon;
      id_avibase = '9C2B53A087F44E10';
      
    case 'Turdus_merula'
      id_CoL = '8539f68b2f729827c29dc81a2b30763a';
      id_Taxo = '57002';        
      id_EoL = '1177498';
      id_AnAge = taxon;
      id_avibase = '6D7A9C93AD1830EB';
      
    case 'Turdus_philomelos'
      id_CoL = '9015bb30c0dcb8d6b26e8fd46c70d8ac';
      id_Taxo = '57011';        
      id_EoL = '1052742';
      id_AnAge = taxon;       
      id_avibase = 'D929EB214A698282';
      
    case 'Sturnus_vulgaris'
      id_CoL = 'cbb6ad24ade1b086f9f6ad89fe92ac3d';
      id_Taxo = '59258';        
      id_EoL = '922253';
      id_AnAge = taxon;       
      id_avibase = '94A4403295E2D9BE';

    case 'Toxostoma_curvirostre'
      id_CoL = '004ebe47b553114eda7f8ccc707f1348';
      id_Taxo = '83018';        
      id_EoL = '1050711';
      id_AnAge = taxon;       
      id_avibase = '2B37C1B59B70D72B';
      
    case 'Cinnyris_jugularis'
      id_CoL = 'd7ff4b36e31373ca9a0d3b401e370436';
      id_Taxo = '1126557';        
      id_EoL = '1051761';
      id_AnAge = ''; % not present 2017/06/18       
      id_avibase = 'CBE7EC407BB927CB';
      
    case 'Passer_domesticus'
      id_CoL = '9cd9581803902beb26aee9ddcc6e4575';
      id_Taxo = '59109';        
      id_EoL = '922241';
      id_AnAge = taxon;       
      id_avibase = '240E33900CE34D44';
      
    case 'Anthus_pratensis'
      id_CoL = 'eb78a0bc492c93711d4c1ca8426d71d9';
      id_Taxo = '56453';        
      id_EoL = '1051319';
      id_AnAge = taxon;       
      id_avibase = '14873249B607CEB1';
      
    case 'Motacilla_flava'
      id_CoL = 'eca91fcd14896fe760fc1c8eef9774bf';
      id_Taxo = '56477';        
      id_EoL = '4405334';
      id_AnAge = taxon;    
      id_avibase = '5983D6776C4C4F85';
      
    case 'Passerculus_sandwichensis'
      id_CoL = 'a40e57e0efe04426fca93156aee1edf4';
      id_Taxo = '58100';        
      id_EoL = '1052592';
      id_AnAge = taxon;       
      id_avibase = '26EB95E7DDA0BFEB';
      
    case 'Carduelis_carduelis'
      id_CoL = '8388549b54689013a002e39459658043';
      id_Taxo = '58514';        
      id_EoL = '1051079';
      id_AnAge = taxon;       
      id_avibase = '1B235E0052ACC519';
      
    case 'Ornithorhynchus_anatinus'
      id_CoL = '3bc186304963c8d2e15564c630a7021e';
      id_Taxo = '59646';        
      id_EoL = '323858';
      id_AnAge = taxon;
      id_MSW3 = '10300020';
       
    case 'Tachyglossus_aculeatus'
      id_CoL = 'db1edc1588907fc51323d4829f25036a';
      id_Taxo = '59632';        
      id_EoL = '323859';
      id_AnAge = taxon;
      id_MSW3 = '10300004';
       
    case 'Caluromys_philander'
      id_CoL = '25a051d8684830574aa21163f5c0217c';
      id_Taxo = '59811';        
      id_EoL = '133312';
      id_AnAge = taxon;
      id_MSW3 = '10400021';
       
    case 'Didelphis_virginiana'
      id_CoL = '5e9ae59ab0006f520ea05758db530df8';
      id_Taxo = '59824';        
      id_EoL = '328501';
      id_AnAge = taxon;
      id_MSW3 = '10400045';
       
    case 'Sarcophilus_harrisii'
      id_CoL = '5ce2db014e2fa02fef465ca6c68f66b3';
      id_Taxo = '60018';        
      id_EoL = '311781';
      id_AnAge = taxon;
      id_MSW3 = '10800047';
       
    case 'Dasyurus_viverrinus'
      id_CoL = '8ff9da85871d400b6a4cc78e9c208645';
      id_Taxo = '60002';        
      id_EoL = '323728';
      id_AnAge = taxon;
      id_MSW3 = '10800025';
       
    case 'Perameles_nasuta'
      id_CoL = '42469df66a2b4861d91637f73b420616';
      id_Taxo = '60062';        
      id_EoL = '323870';
      id_AnAge = taxon;
      id_MSW3 = '10900026';
       
    case 'Phascolarctos_cinereus'
      id_CoL = '4d7e8acef0e44fe001cc83caff8712ae';
      id_Taxo = '60425';        
      id_EoL = '128425';
      id_AnAge = taxon;
      id_MSW3 = '11000005';
       
    case 'Tarsipes_rostratus'
      id_CoL = '6aca15b06107dd17949dd6cfdb40d63b';
      id_Taxo = '60483';        
      id_EoL = '323836';
      id_AnAge = taxon;
      id_MSW3 = '11000166';
       
    case 'Lagostrophus_fasciatus'
      id_CoL = '37ca2270c6d654da367c38945787f398';
      id_Taxo = '60319';        
      id_EoL = '1038585';
      id_AnAge = taxon;
      id_MSW3 = '11000196';
       
    case 'Lagorchestes_conspicillatus'
      id_CoL = '68f725633c4212acffbfa1a59952cdd4';
      id_Taxo = '60310';        
      id_EoL = '127000';
      id_AnAge = taxon;
      id_MSW3 = '11000236';
       
    case 'Lagorchestes_hirsutus'
      id_CoL = 'e886ae8ef2084c39d3da70956b52cf31';
      id_Taxo = '60313';        
      id_EoL = '127004';
      id_AnAge = taxon;
      id_MSW3 = '11000237';
       
    case 'Macropus_agilis'
      id_CoL = '836cb084ad966ce1b076f68c8ee96cde';
      id_Taxo = '168613';        
      id_EoL = '133201';
      id_AnAge = taxon;
      id_MSW3 = '11000243'; 
       
    case 'Macropus_antilopinus'
      id_CoL = 'a3ad146035807271d4c927c78c191a41';
      id_Taxo = '168614';        
      id_EoL = '133167';
      id_AnAge = taxon;
      id_MSW3 = '11000248';
       
    case 'Macropus_eugenii'
      id_CoL = '3122737d84947ba114ffb6f396b21872';
      id_Taxo = '168617';        
      id_EoL = '46322993';
      id_AnAge = taxon;
      id_MSW3 = '';
       
    case 'Macropus_fuliginosus'
      id_CoL = 'c71786cbfbff0f76624c73efcca4cdf1';
      id_Taxo = '168618';        
      id_EoL = '351020';
      id_AnAge = taxon;
      id_MSW3 = '11000251';
       
    case 'Macropus_giganteus'
      id_CoL = '9e81e89d48f74c749a1895f37ed33f1b';
      id_Taxo = '168619';        
      id_EoL = '777872';
      id_AnAge = taxon;
      id_MSW3 = '11000256';
       
    case 'Macropus_parma'
      id_CoL = '562a352c8d1a274b7d6167186f2afc49';
      id_Taxo = '168624';        
      id_EoL = '122570';
      id_AnAge = taxon;
      id_MSW3 = '11000261';
       
    case 'Macropus_rufogriseus'
      id_CoL = '6adcb8c69536b16f12dbd411354abec2';
      id_Taxo = '168627';        
      id_EoL = '133321';
      id_AnAge = taxon;
      id_MSW3 = '11000268';
       
    case 'Macropus_rufus'
      id_CoL = '3029b1dda9dc6bbc86de28d511e30b9c';
      id_Taxo = '168628';        
      id_EoL = '122672';
      id_AnAge = taxon;
      id_MSW3 = '11000272';
       
    case 'Onychogalea_fraenata'
      id_CoL = '38206e3877fe578667a6fa6a3996e930';
      id_Taxo = '60360';        
      id_EoL = '999120';
      id_AnAge = taxon;
      id_MSW3 = '11000274';
       
    case 'Petrogale_xanthopus'
      id_CoL = 'd82664b4636348f01da6058c4ab2aa04';
      id_Taxo = '60376';        
      id_EoL = '325810';
      id_AnAge = taxon;
      id_MSW3 = '11000296';
       
    case 'Setonix_brachyurus'
      id_CoL = '5566abe065e293ca9524aa2d42679bbb';
      id_Taxo = '60383';        
      id_EoL = '127458';
      id_AnAge = taxon;
      id_MSW3 = '11000300';
       
    case 'Wallabia_bicolor'
      id_CoL = '933f2699e0a7dd8d84cefe693500fc89';
      id_Taxo = '60392';        
      id_EoL = '310755';
      id_AnAge = taxon;
      id_MSW3 = '11000314';
       
    case 'Myrmecophaga_tridactyla'
      id_CoL = '99e9905aadb48ff76d1717ea7020ecb7';
      id_Taxo = '60511';        
      id_EoL = '328523';
      id_AnAge = taxon;
      id_MSW3 = '11800038';
       
    case 'Dasypus_novemcinctus'
      id_CoL = 'f4765b154fabeda6821bb372a27914fa';
      id_Taxo = '60596';        
      id_EoL = '328482';
      id_AnAge = taxon;
      id_MSW3 = '11700009';
       
    case 'Orycteropus_afer'
      id_CoL = 'fa01640674c52e1bc9664c729beebce7';
      id_Taxo = '69227';        
      id_EoL = '327830';
      id_AnAge = taxon;
      id_MSW3 = '11300004';
       
    case 'Macroscelides_proboscideus'
      id_CoL = 'a7c9d1f954a2b7ad2ab9a93e86028ced';
      id_Taxo = '61602';        
      id_EoL = '326395';
      id_AnAge = taxon;
      id_MSW3 = '11200023';
       
    case 'Hemicentetes_semispinosus'
      id_CoL = '2a69b74156efdf595db62090e21e94f5';
      id_Taxo = '60681';        
      id_EoL = '1178674';
      id_AnAge = taxon;
      id_MSW3 = '11100045';
       
    case 'Loxodonta_africana'
      id_CoL = '7b498777d8b86d615d26fb2555362a5d';
      id_Taxo = '69361';        
      id_EoL = '289808';
      id_AnAge = taxon;
      id_MSW3 = '11500009';
       
    case 'Elephas_maximus'
      id_CoL = '6fb47237753f0901b5bb779c6e9e1369';
      id_Taxo = '69348';        
      id_EoL = '997407';
      id_AnAge = taxon;
      id_MSW3 = '11500004';
       
    case 'Trichechus_inunguis'
      id_CoL = '42e827c36ce872e11d6f6b1db7aee2fa';
      id_Taxo = '69439';        
      id_EoL = '328646';
      id_AnAge = taxon;
      id_MSW3 = '11600011';
       
    case 'Procavia_capensis'
      id_CoL = '2385d7456a495dac2061e5db25291a9a';
      id_Taxo = '69207';        
      id_EoL = '326384';
      id_AnAge = taxon;
      id_MSW3 = '11400040';
       
    case 'Sorex_araneus'
      id_CoL = '246f61356ae2711049eb21ec5abafa02';
      id_Taxo = '169834';        
      id_EoL = '124497';
      id_AnAge = taxon;
      id_MSW3 = '13700459';
       
    case 'Talpa_europaea'
      id_CoL = '3f6d0f42542751148164e4e7a2a67132';
      id_Taxo = '61343';        
      id_EoL = '1241324';
      id_AnAge = taxon;
      id_MSW3 = '13700730';
       
    case 'Talpa_occidentalis'
      id_CoL = '792cc7348dec4c6b13c672504d67fbfc';
      id_Taxo = '61356';        
      id_EoL = '1178990';
      id_AnAge = ''; % not present 2017/06/18
      id_MSW3 = '13700740';
       
    case 'Erinaceus_europaeus'
      id_CoL = 'cdc488ce6cf0ecb5a02221ef40111c12';
      id_Taxo = '60805';        
      id_EoL = '1178684';
      id_AnAge = taxon;
      id_MSW3 = '13600020';
       
    case 'Camelus_dromedarius'
      id_CoL = '2ce3845d28d43f30229bf4bcad752a19';
      id_Taxo = '67767';        
      id_EoL = '309019';
      id_AnAge = taxon;
      id_MSW3 = '14200115';
       
    case 'Sus_scrofa'
      id_CoL = '7f9608b34955e65ca451e980dec66dba';
      id_Taxo = '67678';        
      id_EoL = '328663';
      id_AnAge = taxon;
      id_MSW3 = '14200054';
       
    case 'Monodon_monoceros'
      id_CoL = 'ac12a283ac3c3ecb7c86d02da8dfaacc';
      id_WoRMS = '137116';
      id_Taxo = '68813';
      id_EoL = '328542';
      id_AnAge = taxon;
      id_MSW3 = '14300107';
       
    case 'Delphinapterus_leucas'
      id_CoL = 'd9b93553f1483a53529684b92f3e0872';
      id_WoRMS = '137115';
      id_Taxo = '68811';        
      id_EoL = '328541';
      id_AnAge = taxon;
      id_MSW3 = '14300105';
       
    case 'Phocoena_phocoena'
      id_CoL = '5a744a2d5381acb09097283fddd6095a';
      id_WoRMS = '137117';
      id_Taxo = '68799';        
      id_EoL = '328536';
      id_AnAge = taxon;
      id_MSW3 = '14300116';
       
    case 'Delphinus_delphis'
      id_CoL = '53f82736e0e55a75583156a10dc0770e';
      id_WoRMS = '137094';
      id_Taxo = '68711';        
      id_EoL = '314276';
      id_AnAge = taxon;
      id_MSW3 = '14300045';
       
    case 'Tursiops_truncatus'
      id_CoL = '5a97cc1e1ac71d45d276e12d8cdfd97d';
      id_WoRMS = '137111';
      id_Taxo = '68750';        
      id_EoL = '129548';
      id_AnAge = taxon;
      id_MSW3 = '14300099';
       
    case 'Pseudorca_crassidens'
      id_CoL = '4d6423dbe228ecfca77db98f22b38979';
      id_WoRMS = '137104';
      id_Taxo = '68779';        
      id_EoL = '328532';
      id_AnAge = taxon;
      id_MSW3 = '14300078';
       
    case 'Orcinus_orca'
      id_CoL = '0d0c95b9ba62095a56695f520e3a09ce';
      id_WoRMS = '137102';
      id_Taxo = '68777';        
      id_EoL = '328534';
      id_AnAge = taxon;
      id_MSW3 = '14300074';
       
    case 'Pontoporia_blainvillei'
      id_CoL = '09ab20bd544602a13231f4895df42ae3';
      id_WoRMS = '254964';
      id_Taxo = '68677';        
      id_EoL = '328476';
      id_AnAge = taxon;
      id_MSW3 = '14300145';
       
    case 'Physeter_macrocephalus'
      id_CoL = 'b3ea740b176c587935272fe4f127db73';
      id_WoRMS = '137119';
      id_Taxo = '68820'; % unaccepted, to Physeter catodon Linnaeus, 1758       
      id_EoL = '328547';
      id_AnAge = taxon;
      id_MSW3 = '14300131'; % present as Physeter catodon
      id_ADW = 'Physeter_catodon'; 
      
    case 'Hyperoodon_ampullatus'
      id_CoL = '1f318418ad1c5ff2abf8d3376f196f45';
      id_WoRMS = '343899';
      id_Taxo = '68827';        
      id_EoL = '328556';
      id_AnAge = taxon;
      id_MSW3 = '14300153';
       
    case 'Balaenoptera_acutorostrata'
      id_CoL = '03989edf0baedd8ab5478fca2ad3b410';
      id_WoRMS = '137087';
      id_Taxo = '68885';        
      id_EoL = '328570';
      id_AnAge = taxon;
      id_MSW3 = '14300012';
       
    case 'Balaenoptera_musculus'
      id_CoL = '64d8253f41d376fdd1f902527ed187c7';
      id_WoRMS = '137090';
      id_Taxo = '68889';        
      id_EoL = '328574';
      id_AnAge = taxon;
      id_MSW3 = '14300018';
       
    case 'Eschrichtius_robustus'
      id_CoL = 'b4385cf8dc677811a74fa6ae3cb43adc';
      id_WoRMS = '137112';
      id_Taxo = '68881';        
      id_EoL = '328569';
      id_AnAge = taxon;
      id_MSW3 = '14300030';
       
    case 'Eubalaena_glacialis'
      id_CoL = 'e45c4cf3665144ef83bb225e971a91e6';
      id_WoRMS = '159023';
      id_Taxo = '68901'; % unaccpeted, to Balaena glacialis M�ller, 1776       
      id_EoL = '328579';
      id_AnAge = taxon;
      id_MSW3 = '14300008';
       
    case 'Balaena_mysticetus'
      id_CoL = '3ea1bf0273d2013ad96eb6afa9ceb890';
      id_WoRMS = '137086';
      id_Taxo = '68905';        
      id_EoL = '328577';
      id_AnAge = taxon;
      id_MSW3 = '14300005';
       
    case 'Hippopotamus_amphibius'
      id_CoL = 'd122689ccde0015d1426a4f7af9fa1be';
      id_Taxo = '67738';   
      id_EoL = '311532';
      id_AnAge = taxon;
      id_MSW3 = '14200106';
       
    case 'Giraffa_camelopardalis'
      id_CoL = '36ea034537a75e8ac153b4089c6d5646';
      id_Taxo = '68119';        
      id_EoL = '308378';
      id_AnAge = taxon;
      id_MSW3 = '14200476';
       
    case 'Odocoileus_virginianus'
      id_CoL = '49c19661f2a48ff49d60d571f9f827ca';
      id_Taxo = '68077';        
      id_EoL = '328652';
      id_AnAge = taxon;
      id_MSW3 = '14200278';
       
    case 'Cervus_canadensis'
      id_CoL = 'd116839109ff1e816c69b6ab69deb181';
      id_Taxo = '67943'; % unaccepeted, to Cervus elaphus canadensis Erxleben, 1777        
      id_EoL = '4446404';
      id_AnAge = 'Cervus_elaphus'; 
      id_MSW3 = '14200358'; % present as Cervus elaphus canadensis
      id_ADW = 'Cervus_elaphus'; 
      
    case 'Rangifer_tarandus'
      id_CoL = '26f5c11255f895a632fd2c2df42e0f60';
      id_Taxo = '68031';        
      id_EoL = '328653';
      id_AnAge = taxon;
      id_MSW3 = '';
       
    case 'Alces_alces'
      id_CoL = 'Alces_alces';
      id_Taxo = '68020';        
      id_EoL = '328654';
      id_AnAge = taxon;
      id_MSW3 = '14200328';
       
    case 'Aepyceros_melampus'
      id_CoL = '0747c465edaff4d5301bd9f9baab8e52';
      id_Taxo = '68440';        
      id_EoL = '308540';
      id_AnAge = taxon;
      id_MSW3 = '14200488';
       
    case {'Bos_primigenius_Angus','Bos_primigenius_Holstein','Bos_primigenius_Brahman'}
      id_CoL = '40e81482006c210a43ef64609163278e';
      id_Taxo = '167484'; % unaccepted, to Bos taurus primigenius Bojanus, 1827        
      id_Wiki = 'Bos_primigenius';
      id_EoL = '10408207'; % unaccepted, to Bos taurus primigenius Bojanus, 1827 
      id_AnAge = 'Bos_taurus'; 
      id_MSW3 = '14200690'; % unaccepted, to Bos taurus primigenius
      id_ADW = 'Bos_taurus'; 
      
    case 'Rupicapra_rupicapra'
      id_CoL = 'd25ccfd780ea763f039935faa9b1f3c7';
      id_Taxo = '68532';        
      id_EoL = '331073';
      id_AnAge = taxon;
      id_MSW3 = '14200687'; % present as Bos taurus
       
    case 'Ovibos_moschatus'
      id_CoL = 'e4475739e4b72bc21e5596c1e24de11e';
      id_Taxo = '68543';        
      id_EoL = '328656';
      id_AnAge = taxon;
      id_MSW3 = '14200813';
       
    case 'Pipistrellus_pipistrellus'
      id_CoL = 'cb943ad6e446a67c750a5ad39aa8e911';
      id_Taxo = '169449';        
      id_EoL = '127390';
      id_AnAge = taxon;
      id_MSW3 = '13802094';
       
    case 'Desmodus_rotundus'
      id_CoL = '5ed68b3442894a2a01c67ec56d5bc32a';
      id_Taxo = '64537';        
      id_EoL = '289588';
      id_AnAge = taxon;
      id_MSW3 = '13801094';
       
    case 'Carollia_perspicillata'
      id_CoL = 'b3658b2f62ac063825c67f88f1b3db18';
      id_Taxo = '64417';        
      id_EoL = '327438';
      id_AnAge = taxon;
      id_MSW3 = '13801300';
       
    case 'Manis_crassicaudata'
      id_CoL = '736a2ea04e95eb28f95226cc77b01c98';
      id_Taxo = '168633';        
      id_EoL = '982442';
      id_AnAge = taxon;
      id_MSW3 = '13900009';
       
    case 'Crocuta_crocuta'
      id_CoL = '93b93fda51bb5cdc6f82fe48dadab8b6';
      id_Taxo = '67062';        
      id_EoL = '311569';
      id_AnAge = taxon;
      id_MSW3 = '14000684';
       
    case 'Panthera_leo'
      id_CoL = 'c67c449dc0cc8bf14732d7fabf8f2b10';
      id_Taxo = '67265';        
      id_EoL = '328672';
      id_AnAge = taxon;
      id_MSW3 = '14000228';
       
    case 'Vulpes_lagopus'
      id_CoL = '74f649c50206103b78005228c898e177';
      id_WoRMS = '404130';
      id_Taxo = '112284';        
      id_EoL = '1053894';
      id_AnAge = taxon;
      id_MSW3 = '14000873';
       
    case 'Vulpes_vulpes'
      id_CoL = 'f76554e91aa357dd527f70ed534fa52c';
      id_Taxo = '66456';        
      id_EoL = '328609';
      id_AnAge = taxon;
      id_MSW3 = '14000892';
       
    case 'Canis_lupus'
      id_CoL = 'bcd6035778291a7feaad52cb7ac167cb';
      id_Taxo = '66415';        
      id_EoL = '328607';
      id_AnAge = taxon;
      id_MSW3 = '14000738';
       
    case 'Meles_meles'
      id_CoL = '423f1dbd6d3e388a3382399597913189';
      id_Taxo = '66751';        
      id_EoL = '328046';
      id_AnAge = taxon;
      id_MSW3 = '14001283';
       
    case 'Enhydra_lutris'
      id_CoL = 'f16ca52d25de7fb367832b86dac2e970';
      id_WoRMS = '242598';
      id_Taxo = '66804';        
      id_EoL = '328583';
      id_AnAge = taxon;
      id_MSW3 = '14001090';
       
    case 'Lutra_lutra'
      id_CoL = 'bb5ed0ac46e6bd2037497c639615f07e';
      id_WoRMS = '137076';
      id_Taxo = '66811';        
      id_EoL = '328044';
      id_AnAge = taxon;
      id_MSW3 = '14001112';
       
    case 'Ursus_arctos'
      id_CoL = '3620a6afc683c9cb9e66e3bc9d143133';
      id_Taxo = '170192';        
      id_EoL = '328581';
      id_AnAge = taxon;
      id_MSW3 = '14000970';
       
    case 'Ursus_maritimus'
      id_CoL = 'ecf9a73302aa9be16e68c89fb524feb8';
      id_WoRMS = '137085';
      id_Taxo = '170194';        
      id_EoL = '328580';
      id_AnAge = taxon;
      id_MSW3 = '14000987';
       
    case 'Ailuropoda_melanoleuca'
      id_CoL = 'e2e3653c631047a2e41328c4dc46151e';
      id_Taxo = '66575';        
      id_EoL = '328070';
      id_AnAge = taxon;
      id_MSW3 = '14000941';
       
    case 'Callorhinus_ursinus'
      id_CoL = '4a75190e7f56b556cca2e56212dc703f';
      id_WoRMS = '254997';
      id_Taxo = '67400';        
      id_EoL = '328618';
      id_AnAge = taxon;
      id_MSW3 = '14001009';
       
    case 'Zalophus_californianus'
      id_CoL = 'd91b293e80e050a2fb51c2a464d52fc3';
      id_WoRMS = '255003';
      id_Taxo = '67414';        
      id_EoL = '328615';
      id_AnAge = taxon;
      id_MSW3 = '14001019';
       
    case 'Arctocephalus_australis'
      id_CoL = '5199b20a3dd0d2c55fd089253d5c1e08';
      id_WoRMS = '231435';
      id_Taxo = '67382';        
      id_EoL = '328623';
      id_AnAge = taxon;
      id_MSW3 = '14000998';
       
    case 'Otaria_flavescens'
      id_CoL = 'f2a4b03712694cd124d8fd6b81c0da0e';
      id_WoRMS = '231425';
      id_Taxo = '67409';        
      id_EoL = '328614';
      id_AnAge = taxon;
      id_MSW3 = '14001015';
       
    case 'Phoca_vitulina'
      id_CoL = 'ec87dba768bbab3b0900ff52a327031d';
      id_WoRMS = '137084';
      id_Taxo = '67459';        
      id_EoL = '328629';
      id_AnAge = taxon;
      id_MSW3 = '14001060';
       
    case 'Pusa_hispida'
      id_CoL = 'ce85c9680b8cfb790125278785a9fe70';
      id_WoRMS = '159021';
      id_Taxo = '67467';        
      id_EoL = '1052724';
      id_AnAge = taxon;
      id_MSW3 = '14001068';
       
    case 'Halichoerus_grypus'
      id_CoL = '571ff3eefa181344bc8dd6e8a54886ce';
      id_WoRMS = '137080';
      id_Taxo = '67432';        
      id_EoL = '328630';
      id_AnAge = taxon;
      id_MSW3 = '';
       
    case 'Pagophilus_groenlandicus'
      id_CoL = 'ed5280adb77539a0b58955aa822a70e7';
      id_WoRMS = '159019';
      id_Taxo = '67439';        
      id_EoL = '1052720';
      id_AnAge = taxon;
      id_MSW3 = '14001036';
       
    case 'Erignathus_barbatus'
      id_CoL = '52717fb428839ec4ea46640eaad6ac88';
      id_WoRMS = '137079';
      id_Taxo = '67428';        
      id_EoL = '328631';
      id_AnAge = taxon;
      id_MSW3 = '14001032';
       
    case 'Cystophora_cristata'
      id_CoL = 'a83dce734f5caa4b3ec5cf33b7263b2d';
      id_WoRMS = '137078';
      id_Taxo = '67494';        
      id_EoL = '328632';
      id_AnAge = taxon;
      id_MSW3 = '14001030';
       
    case 'Mirounga_leonina'
      id_CoL = '7a1805d7e2224550b70452e4ab73e14a';
      id_WoRMS = '231413';
      id_Taxo = '67497';        
      id_EoL = '328639';
      id_AnAge = taxon;
      id_MSW3 = '14001049';
      id_ADW = ''; % not present at 2017/08/09 
      
   case 'Odobenus_rosmarus_rosmarus'
      id_CoL = 'e0b6f3f450ac4d0393778f97dbccdb75';
      id_WoRMS = '255010';
      id_Taxo = '67371';        
      id_EoL = '1265950';
      id_AnAge = taxon;
      id_MSW3 = '14001025';
      id_ADW = 'Odobenus_rosmarus'; 
      
    case 'Equus_quagga'
      id_CoL = 'a544b4b97773df703818fb547a3c05bc';
      id_Taxo = '168045'; % present as Equus burchellii       
      id_EoL = '328341'; % present as Equus burchellii
      id_AnAge = taxon;
      id_MSW3 = '14100008'; % present as Equus burchellii
       
    case 'Tapirus_terrestris'
      id_CoL = 'b887fe306ff897fd7ced2a4199ab2c30';
      id_Taxo = '69106';        
      id_EoL = '328009';
      id_AnAge = taxon;
      id_MSW3 = '14100043';
       
    case 'Rhinoceros_unicornis'
      id_CoL = '2a40e3919813c0f16e7083e4301d72bb';
      id_Taxo = '69154';        
      id_EoL = '129475';
      id_AnAge = taxon;
      id_MSW3 = '14100071';
       
    case 'Dicerorhinus_sumatrensis'
      id_CoL = '43f507935a136e2a4c6221db63021549';
      id_Taxo = '69137';        
      id_EoL = '311504';
      id_AnAge = taxon;
      id_MSW3 = '14100054';
       
    case 'Ceratotherium_simum'
      id_CoL = '6179a66ee04b226c191579679d6afeed';
      id_Taxo = '69123';        
      id_EoL = '311503';
      id_AnAge = taxon;
      id_MSW3 = '14100050';
       
    case 'Castor_fiber'
      id_CoL = '3b8681fe6477ed5a3762fcdef4d00eb2';
      id_Taxo = '62130';        
      id_EoL = '1036116';
      id_AnAge = taxon;
      id_MSW3 = '12600005';
       
    case 'Heterocephalus_glaber'
      id_CoL = '578ce28e305022faa88b77f2b880502f';
      id_Taxo = '63627';        
      id_EoL = '326232';
      id_AnAge = taxon;
      id_MSW3 = '13400041';
       
    case 'Hystrix_africaeaustralis'
      id_CoL = '2acff5dbbbdae886a56163692f0c86bb';
      id_Taxo = '63383';        
      id_EoL = '326520';
      id_AnAge = taxon;
      id_MSW3 = '13400050';
       
    case 'Cavia_tschudii'
      id_CoL = 'f83a21896fe575a2978cfd1222434dca';
      id_Taxo = '89491';        
      id_EoL = '326925';
      id_AnAge = taxon;
      id_MSW3 = '13400182';
       
    case 'Hydrochoerus_hydrochaeris'
      id_CoL = 'cdece5c9f966826ad8a4f0b6b1c70d4c';
      id_Taxo = '647819';        
      id_EoL = '326517';
      id_AnAge = taxon;
      id_MSW3 = '13400218';
       
    case 'Chinchilla_lanigera'
      id_CoL = '4cebac0788bb127166d0646c9ab23a33';
      id_Taxo = '63498';        
      id_EoL = '326926';
      id_AnAge = taxon;
      id_MSW3 = '13400134';
       
    case 'Microtus_arvalis'
      id_CoL = 'c316d43b9cbe48bea99f1d1a1f0c3f3d';
      id_Taxo = '62673';        
      id_EoL = '1179634';
      id_AnAge = taxon;
      id_MSW3 = '13000248';
       
    case 'Microtus_cabrerae'
      id_CoL = 'f79ac11999508ad757439910090b87b0';
      id_Taxo = '62682';        
      id_EoL = '1179636';
      id_AnAge = ''; % not present 2017/06/18
      id_MSW3 = '13000252';
       
    case 'Arvicola_amphibius'
      id_CoL = '2e7ace9ed0522b2ef99288425947efc8';
      id_Taxo = '62634'; % unaccepted, to Arvicola terrestris (C. Linnaeus, 1758)       
      id_EoL = '1179597'; % unaccepted, to Arvicola terrestris (C. Linnaeus, 1758)       
      id_AnAge = 'Arvocola_terrestris';
      id_MSW3 = '13000176';
       
    case 'Mus_musculus'
      id_CoL = '8fb9683c27c3f939a62710d716994ad3';
      id_Taxo = '63058';        
      id_EoL = '328450';
      id_AnAge = taxon;
      id_MSW3 = '13001562';
       
    case 'Rattus_norvegicus'
      id_CoL = '58d474ec035208b2194df25dde8f9259';
      id_Taxo = '63135';        
      id_EoL = '328448';
      id_AnAge = taxon;
      id_MSW3 = '13001766';
       
    case 'Lemmus_trimucronatus'
      id_CoL = '6d229d483afce29dae4bee95e6d4cca0';
      id_Taxo = '62591'; % unaccepted, to Lemmus sibiricus (Kerr, 1792)        
      id_EoL = '11022277';
      id_AnAge = ''; % not present 2017/06/18
      id_MSW3 = '13000236';
       
    case 'Glis_glis'
      id_CoL = 'a35eaad2acaaf584762b9843f35c3dc5';
      id_Taxo = '168233';        
      id_EoL = '327942'; % unaccepted, to Myoxus glis
      id_AnAge = ''; % not present 2017/06/18
      id_MSW3 = '12500044';
       
    case 'Marmota_flaviventris'
      id_CoL = '5032fb08abb378e862f86ede07e0bd88';
      id_Taxo = '61896';        
      id_EoL = '327985';
      id_AnAge = taxon;
      id_MSW3 = '12400944';
       
    case {'Oryctolagus_cuniculus','Oryctolagus_cuniculus_NZW'}
      id_CoL = '0488cb00ad3e3545c4c28f8feaf747e0';
      id_Taxo = '61547';        
      id_EoL = '327977';
      id_AnAge = 'Oryctolagus_cuniculus';
      id_MSW3 = '13500254';
       
    case 'Lepus_europaeus'
      id_CoL = '2c10e1e11456722cf2f9741fec368a71';
      id_Taxo = '61511';        
      id_EoL = '118009';
      id_AnAge = taxon;
      id_MSW3 = '13500156';
       
    case 'Tupaia_glis'
      id_CoL = '597342aa9ef1ce5b5f9208b80f34e2ec';
      id_Taxo = '61384';        
      id_EoL = '327851';
      id_AnAge = taxon;
      id_MSW3 = '11900016';
       
    case 'Galeopterus_variegatus'
      id_CoL = '4dcbb7c6e643932361541981ae29374b';
      id_Taxo = '1003254';        
      id_EoL = '1040858';
      id_AnAge = ''; % not present 2017/06/18
      id_MSW3 = '12000006';
       
    case 'Daubentonia_madagascariensis'
      id_CoL = '429cae10b932f86ee7eed6bb5e0f5c07';
      id_Taxo = '65533';        
      id_EoL = '324407';
      id_AnAge = taxon;
      id_MSW3 = '12100099';
       
    case 'Propithecus_diadema'
      id_CoL = 'b47ac2b3bb8803cc4e9873df0daf620e';
      id_Taxo = '65520';        
      id_EoL = '326457';
      id_AnAge = taxon;
      id_MSW3 = '12100089';
       
    case 'Microcebus_murinus'
      id_CoL = 'fed2451960a842ce940ad5d48d81d81c';
      id_Taxo = '65426';        
      id_EoL = '324404';
      id_AnAge = taxon;
      id_MSW3 = '12100019';
       
    case 'Lepilemur_mustelinus'
      id_CoL = 'e8bfdcc70cea2d77b9b54a143392afc8';
      id_Taxo = '65477';        
      id_EoL = '326545';
      id_AnAge = taxon;
      id_MSW3 = '12100072';
       
    case 'Varecia_variegata'
      id_CoL = 'c8883cad4f1b3301686bf6ad91663991';
      id_Taxo = '65502';        
      id_EoL = '326534';
      id_AnAge = taxon;
      id_MSW3 = '12100061';
       
    case 'Nycticebus_coucang'
      id_CoL = '3cbe6f36284dc50c72e4dd60e01eade9';
      id_Taxo = '65545';        
      id_EoL = '326538';
      id_AnAge = taxon;
      id_MSW3 = '12100114';
       
    case 'Loris_tardigradus'
      id_CoL = 'ef762a80ccc68823da1b199ae0301698';
      id_Taxo = '65539';        
      id_EoL = '326537';
      id_AnAge = taxon;
      id_MSW3 = '12100111';
       
    case 'Galago_senegalensis'
      id_CoL = '189e447f4b853cd7858295feb0c3f7b2';
      id_Taxo = '65569';        
      id_EoL = '311208';
      id_AnAge = taxon;
      id_MSW3 = '12100144';
       
    case 'Tarsius_tarsier'
      id_CoL = '363ad8f84b1e80546fe32ad936b16e48';
      id_Taxo = '1003327';        
      id_EoL = '46326375'; % cripple entry
      id_AnAge = 'Tarsius_spectrum';
      id_MSW3 = '12100176';
       
    case 'Callithrix_pygmaea'
      id_CoL = 'd19f292374779e32b7ebc28a2c57d829';
      id_Taxo = '167532';        
      id_EoL = '323892';
      id_AnAge = taxon;
      id_MSW3 = '12100206';
       
    case 'Callithrix_jacchus'
      id_CoL = '62c40d93ae8fa0246b8a98d2e750ecd6';
      id_Taxo = '65645';        
      id_EoL = '323890';
      id_AnAge = taxon;
      id_MSW3 = '12100197';
       
    case 'Leontopithecus_rosalia'
      id_CoL = '34fc90bc0247a67e5691c7c947624599';
      id_Taxo = '65681';        
      id_EoL = '323897';
      id_AnAge = taxon;
      id_MSW3 = '12100214';
       
    case 'Aotus_trivirgatus'
      id_CoL = '1dd3fb0f05b62d171f7075d02a6f0478';
      id_Taxo = '65786';        
      id_EoL = '323931';
      id_AnAge = taxon;
      id_MSW3 = '12100313';
       
    case 'Pithecia_pithecia'
      id_CoL = 'ce9ff31788b98d22457a487c405ef871';
      id_Taxo = '65836';        
      id_EoL = '1010797';
      id_AnAge = taxon;
      id_MSW3 = '12100369';
       
    case 'Cebus_capucinus'
      id_CoL = '0b4728552da36e92bba7b084a347127a';
      id_Taxo = '65749';        
      id_EoL = '323944';
      id_AnAge = taxon;
      id_MSW3 = '12100270';
       
    case 'Saimiri_sciureus'
      id_CoL = '8d7ee32920698d3911260b9a6a3ee269';
      id_Taxo = '65765';        
      id_EoL = '327956';
      id_AnAge = taxon;
      id_MSW3 = '12100291';
       
    case 'Alouatta_palliata'
      id_CoL = '06bc9289566826026b931f3c8667a0c2';
      id_Taxo = '65846';        
      id_EoL = '323919';
      id_AnAge = taxon;
      id_MSW3 = '12100385';
       
    case 'Chlorocebus_aethiops'
      id_CoL = '76233bc1b7b6845442a6b98f93ac8124';
      id_Taxo = '167692';        
      id_EoL = '1037707';
      id_AnAge = taxon;
      id_MSW3 = '12100505';
       
    case 'Papio_hamadryas'
      id_CoL = 'e54f36089676e764bb7e9f7481e21548';
      id_Taxo = '65973';        
      id_EoL = '128436';
      id_AnAge = taxon;
      id_MSW3 = '12100586';
       
    case 'Nasalis_larvatus'
      id_CoL = '627feeca55633fa8364d77479cf765a8';
      id_Taxo = '66088';        
      id_EoL = '310436';
      id_AnAge = taxon;
      id_MSW3 = '12100619';
       
    case 'Macaca_fascicularis'
      id_CoL = 'e892cc0e528de9a28fa926f75f5f3eeb';
      id_Taxo = '168592';        
      id_EoL = '46326393'; % cripple entry
      id_AnAge = taxon;
      id_MSW3 = '12100534';
       
    case 'Macaca_mulatta'
      id_CoL = '8302d6488dd331326b175296ccfbab12';
      id_Taxo = '168596';        
      id_EoL = '327960';
      id_AnAge = taxon;
      id_MSW3 = '12100551';
       
    case 'Hylobates_lar'
      id_CoL = 'b567774eedd1fd38ce9a26e2fddfc628';
      id_Taxo = '66187';        
      id_EoL = '127643';
      id_AnAge = taxon;
      id_MSW3 = '12100761';
       
    case 'Symphalangus_syndactylus'
      id_CoL = 'df178ac7151d370e79a86ffac7daed45';
      id_Taxo = '66199';        
      id_EoL = '1038643'; % unceepted, to Hylobates syndactylus
      id_AnAge = 'Hylobates_syndactylus';
      id_MSW3 = '12100785';
       
    case 'Pongo_pygmaeus'
      id_CoL = 'e2a643310fdb74fc698ec526f5852f93';
      id_Taxo = '66224';        
      id_EoL = '326450';
      id_AnAge = taxon;
      id_MSW3 = '12100805';
       
    case 'Gorilla_gorilla'
      id_CoL = '3525cf79aa420809edb33c4b6dd8601a';
      id_Taxo = '66213';        
      id_EoL = '326447';
      id_AnAge = taxon;
      id_MSW3 = '12100791';
       
    case 'Pan_troglodytes'
      id_CoL = '86b444a39d077c4e99f876aa5e8481df';
      id_Taxo = '66219';        
      id_EoL = '326449';
      id_AnAge = taxon;
      id_MSW3 = '12100798';
       
    case 'Homo_sapiens'
      id_CoL = 'e3b90576561f93a8ac8b59e185b01511';
      id_Taxo = '66295';        
      id_EoL = '327955';
      id_AnAge = taxon;
      id_MSW3 = '12100795';
       
    otherwise % set default filled id's on empty
      id_Wiki = '';
      id_ADW = '';
  end

  % compose (n,2) cell-array with links and descriptions
  links = { ...
  % general links
  ['http://catalogueoflife.org/annual-checklist/2017/details/species/id/', id_CoL], 'Cat of Life';  
  ['http://eol.org/pages/', id_EoL], 'Ency of Life';
  ['http://en.wikipedia.org/wiki/', id_Wiki], 'Wikipedia';
  ['http://animaldiversity.org/accounts/', id_ADW], 'ADW';
  ['http://taxonomicon.taxonomy.nl/TaxonTree.aspx?id=', id_Taxo], 'Taxonomicon';
  ['http://marinespecies.org/aphia.php?p=taxdetails&id=', id_WoRMS], 'WoRMS';
  % taxon-specific links
  ['http://www.molluscabase.org/aphia.php?p=taxdetails&id=', id_molluscabase], 'MolluscaBase';
  ['http://www.fishbase.org/summary/', id_fishbase], 'fishbase';
  ['http://amphibiaweb.org/cgi/amphib_query?rel-common_name=like&where-scientific_name=', id_amphweb], 'Amphibiaweb';
  ['http://reptile-database.reptarium.cz/species?', id_ReptileDB], 'ReptileDB';
  ['https://avibase.bsc-eoc.org/species.jsp?lang=EN&avibaseid=', id_avibase], 'Avibase';
  ['https://www.departments.bucknell.edu/biology/resources/msw3/browse.asp?s=y&id=', id_MSW3], 'Mammal Spec World';
  ['http://genomics.senescence.info/species/entry.php?species=', id_AnAge], 'AnAge'};
  % remove empty links
  links = links(~cellfun(@isempty, { ...
    id_CoL, id_EoL, id_Wiki, id_ADW, id_Taxo, id_WoRMS, ...                                     % general/animal web sites
    id_molluscabase, id_fishbase, id_amphweb, id_ReptileDB, id_avibase, id_MSW3, id_AnAge}),:); % taxon web sites
  n_links = size(links,1); info = ones(n_links,1);
  
  if n_links == 0
    fprintf(['warning from get_link for ', taxon, ': no links specified\n']);
  elseif exist('test', 'var') && test == true % test links 
    for i= 1:n_links 
      try 
        urlread(links{i,1});
      catch
        fprintf(['warning from get_link for ', taxon, ': ', links{i,2}, ' for ', links{i,1}, 'does not exist\n']);
        info(i) = 0;
      end
    end
  end
    