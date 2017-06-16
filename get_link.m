%% get_link
% gets links to web-pages for AmP entries

%%
function links = get_link(taxon)
% created 2017/06/14 by Bas Kooijman

%% Syntax
% [links nms] = <get_link *get_link*>(taxon)

%% Description
% gets cell strings with links and descriptions for an entry
%
% Input:
%
% * taxon: character string with name of an entry
%
% Output:
%
% * links: (n,2)-cell array with links and names for links

%% Remarks
% empty links are removed from output; 
% first 5 links are within AmP, the rest outside

%% Example of use
% links = get_link('Daphnia_magna')

  % default identifiers
  id_EoL = taxon; id_Wiki = taxon; id_ADW = taxon; id_WoRMS = '';
  if ismember(taxon, select('Tetrapoda'))
    id_AnAge = taxon; id_fishbase = '';
  elseif ismember(taxon, select('Craniata'))
    id_AnAge = ''; id_fishbase = [strrep(taxon,'_','-'), '.html'];
  else
    id_AnAge = ''; id_fishbase = ''; % no tetrapod or fish
  end

  switch taxon % overwrite id's if necessary, assign empty to delete (at bottom)
    case 'Haliclona_oculata'
      id_CoL = '91f72133c6f354d688695e8755c95e32';
      id_WoRMS = '289593';
      id_Taxo = '11495';
    case 'Chironex_fleckeri'
      id_CoL = 'acb0b861a8a833094a28eb241f5d6668';
      id_WoRMS = '23632';
      id_Taxo = '11821';
    case 'Hydra_viridissima'
      id_CoL = '19190e1a47af46b36c952ecf9b80588d';
      id_WoRMS = '290156';
      id_Taxo = '11604';
    case 'Pelagia_noctiluca'
      id_CoL = 'd46fd9939cd7273ba4caa7f6a44c1e44';
      id_WoRMS = '135305';
      id_Taxo = '11851';
    case 'Mnemiopsis_leidyi'
      id_CoL = '1c0c292c0300677f3bce686e31495b3e';
      id_WoRMS = '106401';
      id_Taxo = '12339';
    case 'Bolinopsis_mikado'
      id_CoL = '266955574f36a9262c06633951a8c034';
      id_WoRMS = '265201';
      id_Taxo = '86084';
    case 'Callianira_antarctica'
      id_CoL = '303f7a8417f250f9b9d1cbc77fc060cf';
      id_WoRMS = '265170';
      id_Taxo = '290691';
    case 'Pleurobrachia_pileus'
      id_CoL = '3ddfb02d1f60caec8189823cc007b893';
      id_WoRMS = '106386';
      id_Taxo = '12311';
    case 'Pleurobrachia_bachei'
      id_CoL = 'ea157b9c6d94ac452e22b094c2d3c211';
      id_WoRMS = '265191';
      id_Taxo = '12310';
    case 'Beroe_gracilis'
      id_CoL = 'd2a147385e1eacebb447e4f9e1558f1e';
      id_WoRMS = '106361';
      id_Taxo = '167446';
    case 'Beroe_ovata'
      id_CoL = 'c70014071bb5de21dca3ec0d826bb274';
      id_WoRMS = '106362';
      id_Taxo = '167447';        
    case 'Sagitta_hispida'
      id_CoL = '5fa5c1982af0297dfe25875928c2570c';
      id_WoRMS = '105454'; % unaccepted, to Ferosagitta hispida (Conant, 1895)
      id_Taxo = '40644';   % unaccepted, to Sagitta bipunctata    
    case 'Moniliformis_dubius'
      id_CoL = '2db31682f5ec69386b23ea4212b709b1';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '14700';        
    case 'Asplanchna_girodi'
      id_CoL = '7ef4175c71766debbf941dc6e2476c02';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '114748';        
    case 'Brachionus_plicatilis'
      id_CoL = 'c1847141382c50836d8cf6c9cea31e71';
      id_WoRMS = '134982';
      id_Taxo = '91556';        
    case 'Aspidiophorus_polystictos'
      id_CoL = '88edfcced5860e504db0c2d25d801715';
      id_WoRMS = '114471';
      id_Taxo = '';  % not present 2017/06/15        
    case 'Schmidtea_polychroa'
      id_CoL = '032a02867df5f7a953bd3c02edd02523';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15     
    case 'Magellania_fragilis'
      id_CoL = '397256b281a713c08dd827ce925a4418';
      id_WoRMS = '235668';
      id_Taxo = '991609'; % unaccepeted, to Aerothyris fragilis
    case 'Phoronis_pallida'
      id_CoL = '3d20b39a5cdcd6ae450a423e58efe977';
      id_WoRMS = '128551';
      id_Taxo = '40609';        
    case 'Flustra_foliacea'
      id_CoL = 'fd374d545f72678ced74b5f86d54deba';
      id_WoRMS = '111367';
      id_Taxo = '40579';        
    case 'Capitella_teleta'
      id_CoL = 'fd9aa8aa73aaf17bae632c52a561664d';
      id_WoRMS = '592089';
      id_Taxo = ''; % not present 2017/06/15        
    case 'Arenicola_marina'
      id_CoL = '8981bb1d5f3ba68ed39eec35e0104438';
      id_WoRMS = '129868';
      id_Taxo = '15271';        
    case 'Dendrobaena_octaedra'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '2907467';        
    case 'Lumbricus_terrestris'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '15563';        
    case 'Octolasion_cyaneum'
      id_CoL = 'c39d48b8d317b85403b3500a610f0be7';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '140609';        
    case 'Aporrectodea_longa'
      id_CoL = '6ba7cb1f971e29fa5b0489de565d4109';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15        
    case 'Eisenia_fetida'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '15557'; % Eisenia_foetida  preferred    
    case 'Lepidochitona_cinerea'
      id_CoL = '75dec12407157ff88b7093da4cd037b8';
      id_WoRMS = '152774';
      id_Taxo = '114600';        
    case 'Cerastoderma_edule'
      id_CoL = '2af65e2b505c0c8b54696e3d1a6ae6cc';
      id_WoRMS = '138998';
      id_Taxo = '39793';        
    case 'Cerastoderma_glaucum'
      id_CoL = '8388202a26e5db4db1e1b11e113dd6a7';
      id_WoRMS = '138999';
      id_Taxo = '84902';        
    case 'Mya_arenaria'
      id_CoL = 'b8018df2338b52a3f82bb35f20327198';
      id_WoRMS = '140430';
      id_Taxo = '39960';        
    case 'Macoma_balthica'
      id_CoL = '7752e8e469ee3f69471f23a73bb94786';
      id_WoRMS = '141579'; % unaccepeted, to Limecola balthica (Linnaeus, 1758)
      id_Taxo = '39503';        
    case 'Ensis_directus'
      id_CoL = '9535725bdbecb2f76d4461dc8a747406';
      id_WoRMS = '140732';
      id_Taxo = '39468';        
    case 'Ruditapes_philippinarum'
      id_CoL = '020b3f1b4179f488782e4d69d7dc071f';
      id_WoRMS = '231750';
      id_Taxo = '39617';        
    case 'Echyridella_menziesii'
      id_CoL = '1467382d3ab24e1ca4e76417fc858224';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15      
    case 'Anodonta_cygnea'
      id_CoL = '932770a8167ab3658dfb0e0c4e98278b';  
      id_WoRMS = '234103'; % unaccepted, to Anadonta_anatina
      id_Taxo = '39445';   
    case 'Westralunio_carteri'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15        
    case 'Arctica_islandica'
      id_CoL = '5c0583f70d0785993185a7411b8a4cae';
      id_WoRMS = '138802';
      id_Taxo = '39737';        
    case 'Argopecten_purpuratus'
      id_CoL = 'be54afd1d214780315c063fa0def0756';
      id_WoRMS = '394269';
      id_Taxo = ''; % not present 2017/06/15             
    case 'Pecten_maximus'
      id_CoL = 'cfba025bc7568aa8054058b764da5484';
      id_WoRMS = '140712';
      id_Taxo = '39421';        
    case 'Chlamys_islandica'
      id_CoL = '03df3956fb490ebd6d6e757b5ac9377d';
      id_WoRMS = '140692';
      id_Taxo = '39391';        
    case 'Crassostrea_gigas'
      id_CoL = '93190b1650de88982e0161577b8b6a7e'; % unaccepted, to Magallana gigas (Thunberg, 1793)
      id_WoRMS = '140656'; % unaccepted, to Magallana gigas (Thunberg, 1793)
      id_Taxo = '39283';        
    case 'Ostrea_edulis'
      id_CoL = '3063d7e4904e854f23e2d5ac9861a140';
      id_WoRMS = '140658';
      id_Taxo = '39291';        
    case 'Perna_viridis'
      id_CoL = '6ef2899719ea0ddf2c7310cb868c9927';
      id_WoRMS = '367822';
      id_Taxo = '39229';        
    case 'Mytilus_edulis'
      id_CoL = 'fd90faaa60b00c787b864db5935122a0';
      id_WoRMS = '140480';
      id_Taxo = '39226';        
    case 'Mytilus_californianus'
      id_CoL = '073e0f457f10e18f5ea034cfe0c48c20';
      id_WoRMS = '140481';
      id_Taxo = '39225';        
    case 'Mytilus_galloprovincialis'
      id_CoL = '04790e322405f377d0e822187e2d7404';
      id_WoRMS = '';
      id_Taxo = '39227';        
    case 'Mytilus_trossulus'
      id_CoL = 'b22222da5f4fd8e0e68afc05d8705c9b';
      id_WoRMS = '140482';
      id_Taxo = '81556';        
    case 'Brachidontes_pharaonis'
      id_CoL = '7e58b93994497ead236dd02370e5c733';
      id_WoRMS = '140437';
      id_Taxo = ''; % not present 2017/06/15        
    case 'Mytilaster_minimus'
      id_CoL = 'bf5b0501c3db505732b751a445a2396d';
      id_WoRMS = '140478';
      id_Taxo = ''; % not present 2017/06/15          
    case 'Septifer_virgatus'
      id_CoL = '755768b01e8324c1c8e620dd1153a5ed'; % unaccepted, to Mytilisepta virgata (Wiegmann, 1837)
      id_WoRMS = '367774'; % unaccepted, to Mytilisepta virgata (Wiegmann, 1837)
      id_Taxo = ''; % not present 2017/06/15           
    case 'Patella_vulgata'
      id_CoL = 'b6d47c01f8b1aac2e8d612029dec8807';
      id_WoRMS = '140685';
      id_Taxo = '34642';        
    case 'Gibbula_umbilicalis'
      id_CoL = 'e5837ae66f8b757e82aa6181db535ab8';
      id_WoRMS = '141801';
      id_Taxo = '34750';        
    case 'Phorcus_lineatus'
      id_CoL = '5d915d529f45e7c60979e383f2ef5333';
      id_WoRMS = '689176';
      id_Taxo = ''; % not present 2017/06/15       
    case 'Urosalpinx_cinerea'
      id_CoL = '854e3a6612913ce60ea981e0048635e4';
      id_WoRMS = '140429';
      id_Taxo = '36285';        
    case 'Buccinum_undatum'
      id_CoL = '1e9490fd92636d74588b2fc5f0870e54';
      id_WoRMS = '138878';
      id_Taxo = '36715';        
    case 'Adelomelon_brasiliana'
      id_CoL = 'db2a0271d654038c6f5c9c5108c38d23';
      id_WoRMS = '759016';
      id_Taxo = ''; % not present 2017/06/15            
    case 'Littorina_littorea'
      id_CoL = '8937d1f10190ce22541aa498ba4773c6';
      id_WoRMS = '140262';
      id_Taxo = '35203';        
    case 'Crepidula_fornicata'
      id_CoL = 'cb8d13d370be3253d988a29585db934d';
      id_WoRMS = '138963';
      id_Taxo = '35525';        
    case 'Euspira_nitida'
      id_CoL = '79649390454e2a5fc41c8ea2ed2faaaf';
      id_WoRMS = '151894';
      id_Taxo = ''; % not present 2017/06/15        
    case 'Potamopyrgus_antipodarum'
      id_CoL = 'a25261f237f8c34efe70e335ed0fe1fc';
      id_WoRMS = '147123';
      id_Taxo = '155529';        
    case 'Aplysia_californica'
      id_CoL = '79cd7dad3cdb7a458fa58a0a77eb939c';
      id_WoRMS = '240765';
      id_Taxo = ''; % not present 2017/06/15         
    case 'Clione_limacina'
      id_CoL = 'ccdf4eb106a21eed81a0df1e7d2ca725';
      id_WoRMS = '139178';
      id_Taxo = '38184';        
    case 'Cuthona_nana'
      id_CoL = '49690556f98ee422c43965e6f9691394';
      id_WoRMS = '141627';
      id_Taxo = ''; % not present 2017/06/15          
    case 'Lymnaea_stagnalis'
      id_CoL = 'ea77dedfde3d3bd9b1d45805c6cde119';
      id_WoRMS = ''; % not present 2017/06/15  
      id_Taxo = '38499';        
    case 'Stagnicola_palustris'
      id_CoL = 'aa6c1e75fc6f19f056a2c6ca08a23218';
      id_WoRMS = ''; % not present 2017/06/15    
      id_Taxo = '';  % not present 2017/06/15            
    case 'Biomphalaria_glabrata'
      id_CoL = 'dda69fe8d4ca69ea96e9656a8f4ad747';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '125350';        
    case 'Planorbis_planorbis'
      id_CoL = '18d8f8532b36c262662e2410d1847bd4';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '38526';        
    case 'Achatina_achatina'
      id_CoL = '8dbb31a2c43f4fdceea9d8c5d3fcacce';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '38688';        
    case 'Ambigolimax_valentianus'
      id_CoL = '48ae5a4fa1b68bfac1581bf9a1914065';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15           
    case 'Cornu_aspersum'
      id_CoL = 'be1016122f1c597b37092a9c8b64aa6c';
      id_WoRMS = ''; % not present 2017/06/15  
      id_Taxo = '38975';  % present as  Helix aspersa Müller, 1774           
    case 'Helix_pomatia'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '168261';        
    case 'Cernuella_virgata'
      id_CoL = 'd41e57b1f4e04a94f51b47b212c3d36b';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '308419';        
    case 'Nautilus_pompilius'
      id_CoL = '9623f8e059399835d352956174dc024b';
      id_WoRMS = '216384';
      id_Taxo = '40101';        
    case 'Sepia_officinalis'
      id_CoL = '22353d7f2941918fea5661dde05d0321';
      id_WoRMS = '141444';
      id_Taxo = '169813';        
    case 'Sepiola_atlantica'
      id_CoL = '44669098315cfbb641688d3fc48a8506';
      id_WoRMS = '141454';
      id_Taxo = '40221';        
    case 'Sepietta_obscura'
      id_CoL = 'ff971eddd33e29318b793c02a46fe304';
      id_WoRMS = '141451';
      id_Taxo = ''; % not present 2017/06/15         
    case 'Euprymna_hyllebergi'
      id_CoL = '3fb01720b80e6677d2c8ff92d9908d60';
      id_WoRMS = '410361';
      id_Taxo = '157825';        
    case 'Doryteuthis_pealeii'
      id_CoL = '71883eecc1e2f28199a9a79d82085fbf';
      id_WoRMS = '410354';
      id_Taxo = '157870'; % present as Loligo_pealeii   
    case 'Octopus_cyanea'
      id_CoL = '8e622e1b7f9777d3f33c42f52836d21a';
      id_WoRMS = '210788';
      id_Taxo = '158218';        
    case 'Octopus_maya'
      id_CoL = '01fe079c62706c970beb455711158713';
      id_WoRMS = '341996';
      id_Taxo = '158249';        
    case 'Octopus_vulgaris'
      id_CoL = '68dbab9ebc28639002befc34e2ffe516';
      id_WoRMS = '140605';
      id_Taxo = '40350';        
    case 'Octopus_mimus'
      id_CoL = '1b66339c2aa57d497ce240b3401d2b30';
      id_WoRMS = '342001';
      id_Taxo = '158255';        
    case 'Macrobiotus_hufelandii'
      id_CoL = 'cdf5e8f2aaf144fd5170f295c272c445'; % unaccepted, to Macrobiotus_hufelandi
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '15789'; % unaccepted, to Macrobiotus_hufelandi       
    case 'Hypsibius_convergens'
      id_CoL = '779e48ba14edf4787cd08b7e7401e63b';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '421894';        
    case 'Hypsibius_oberhaeuseri'
      id_CoL = '1bd832ac6d7bb295abbd24520dbf0798';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '104402'; % unaccepted, to Ramazzottius oberhaeuseri       
    case 'Milnesium_tardigradum'
      id_CoL = '063fd91ca8ab9f5dd77628fc62aa3df3';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '104409';        
    case 'Caenorhabditis_elegans'
      id_CoL = '64710e67cd5e7ae09722a643ba747af2';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '13102';        
    case 'Pycnogonum_litorale'
      id_CoL = '14c3dd8cde8bf89b963bc7436dc0ec59'; % present as Pycnogonum_littorale
      id_WoRMS = '239867';
      id_Taxo = '17077'; % present as Pycnogonum_littorale       
    case 'Smeringurus_mesaensis'
      id_CoL = '5ac22e6a79875de9dd358275269bf959';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '87088';  % only as genus 2017/06/15      
    case 'Rhizoglyphus_robini'
      id_CoL = 'a08d34f3fc91edcfd634888b64706f28';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '143153';        
    case 'Aglaoctenus_lagotis'
      id_CoL = '4f7f7da06de383e86a5bfe76f10bb859';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '727868';        
    case 'Cyprideis_torosa'
      id_CoL = 'fd7d758262a28756831f7f8614655d73';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33329';        
    case 'Triops_longicaudatus'
      id_CoL = 'cd00dfd705355d80c95c024877f73428';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15     
    case 'Bosmina_longirostris'
      id_CoL = '869bccad902dfe087fefb3d7f87982d8';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33116';        
    case 'Eubosmina_coregoni'
      id_CoL = 'dfa6a62de551465c295c3a3279b152b6'; % present as Bosmina_coregoni
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33115'; % present as Bosmina_coregoni       
    case 'Chydorus_sphaericus'
      id_CoL = 'bf9a53b5d704a17c593c845f6e8d08cb';
      id_WoRMS = '148406';
      id_Taxo = '33122';        
    case 'Pleuroxus_aduncus'
      id_CoL = '4ab9e9fd2808c0e605b8e794b9199627';
      id_WoRMS = '148397';
      id_Taxo = '156250';        
    case 'Pleuroxus_striatus'
      id_CoL = '871ff4ce4fa9b1d8376330527902db45'; % present as Pleuroxus_striatoides, but the same?
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15
    case 'Ceriodaphnia_pulchella'
      id_CoL = '8c950c5099d7368e2c5d026dc079a5e9';
      id_WoRMS = '148395';
      id_Taxo = '156175';        
    case 'Ceriodaphnia_dubia'
      id_CoL = 'b7129a03be4a413d639f0bf4ade8d684';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '156172';        
    case 'Daphnia_cucullata'
      id_CoL = '3eb62cdbb1d096da9cfcabc1b19e18aa';
      id_WoRMS = '148371';
      id_Taxo = '';        
    case 'Daphnia_hyalina'
      id_CoL = '29d9d22b0b26cf7307af8c0faaa8cf06';
      id_WoRMS = '148374';
      id_Taxo = '33101';        
    case 'Daphnia_magna'
      id_CoL = 'e44e0a35c2cdb085859074a9fe73abdf';
      id_WoRMS = '148372';
      id_Taxo = '33105';        
    case 'Daphnia_pulex'
      id_CoL = '1274b0b445ebb1c66cc1c92f024359f4';
      id_WoRMS = '148375';
      id_Taxo = '33106';        
    case 'Scapholeberis_mucronata'
      id_CoL = '986bcd982c77ba4c25548ad2906f3f49';
      id_WoRMS = '148398';
      id_Taxo = '33110';        
    case 'Simocephalus_serrulatus'
      id_CoL = 'c80b9c7571c8f66720bdd1978b6df130';
      id_WoRMS = '412852';
      id_Taxo = '156184';        
    case 'Diaphanosoma_brachyurum'
      id_CoL = 'dd213856b4a492a6f01afd65e70991d4';
      id_WoRMS = '234063';
      id_Taxo = '33086';        
    case 'Leptodora_kindtii'
      id_CoL = 'd8f23f51d85cb363bede2f3632517e87'; % present as Leptodora_kindti
      id_WoRMS = '247980';
      id_Taxo = '33097';        
    case 'Acanthocyclops_robustus'
      id_CoL = 'd63a685097756b1c2cf45229db57cac0';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15    
    case 'Cyclops_vicinus'
      id_CoL = '3665f193e29e67b5f91a61c8f72b79e8';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '125392';        
    case 'Mesocyclops_leukarti'
      id_CoL = 'eb76a8aa998d1b3614cbeef939cbe8a5';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '124982';        
    case 'Calanus_sinicus'
      id_CoL = '522187c194196c1a2931e0e054be2ebe';
      id_WoRMS = '346214';
      id_Taxo = ''; % not present 2017/06/15       
    case 'Eurytemora_affinis'
      id_CoL = 'b3cd8223fe63cbb356fab69438d3a23d';
      id_WoRMS = '104872';
      id_Taxo = ''; % not present 2017/06/15          
    case 'Asellus_aquaticus'
      id_CoL = '4acab09868db831471b70493b88c5cc0';
      id_WoRMS = '148667';
      id_Taxo = '34250';        
    case 'Porcellio_scaber'
      id_CoL = 'f7f2e3aa63418de280d2441a2f50a353';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '34215';        
    case 'Corophium_volutator'
      id_CoL = '3f0dd1ef46052e07709a147e7e701ed6';
      id_WoRMS = '102101';
      id_Taxo = '34324';        
    case 'Gammarus_fossarum'
      id_CoL = '';   % not present 2017/06/15
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15        
    case 'Gammarus_pseudolimnaeus'
      id_CoL = '46665c47e08b50e65aa372a80c3e2436';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15    
    case 'Gammarus_pulex'
      id_CoL = '7b6908ae7563c0d764397d8f1cbe6e04';
      id_WoRMS = '819836';
      id_Taxo = '34297';        
    case 'Gammarus_roeseli' 
      id_CoL = '';   % not present 2017/06/15
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15       
    case 'Mysis_mixta'
      id_CoL = '75d47759bf7d4d79eaa4107c2c0423c0';
      id_WoRMS = '120113';
      id_Taxo = '';  % not present 2017/06/15            
    case 'Euphausia_superba'
      id_CoL = '9b5816e13fe1783d6d65f7075aba514f';
      id_WoRMS = '236217';
      id_Taxo = '33778';        
    case 'Meganyctiphanes_norvegica'
      id_CoL = '5f895dc8e3d3fb0271a3c2069716b463';
      id_WoRMS = '110690';
      id_Taxo = '33780';        
    case 'Pandalus_borealis'
      id_CoL = 'c5bbc49e17aa816caab84f54cfc001bc';
      id_WoRMS = '158370';
      id_Taxo = '33850';        
    case 'Palaemonetes_pugio'
      id_CoL = '56cf1eeaf3d2f8441b8c41906c4c1ab1';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Carcinus_maenas'
      id_CoL = '182ab1e14f8181b51f406b97feedd219';
      id_WoRMS = '107381';
      id_Taxo = '';        
    case 'Charybdis_bimaculata'
      id_CoL = '6c1210383c25336b3951f1dec88beeb5';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '125153';        
    case 'Crangon_crangon'
      id_CoL = '58d00d89008c1ec63431fabcc112c6bb';
      id_WoRMS = '107552';
      id_Taxo = '33878';        
    case 'Folsomia_candida'
      id_CoL = 'bec653e78eb0e5dd43f92cc01e7cbd73';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '1045058';        
    case 'Lepisma_saccharina'
      id_CoL = 'a5b311bccb146809dd1359c610f67f41';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17302';        
    case 'Ecdyonurus_dispar'
      id_CoL = 'fd78ae082fb4e998ad66790ed51fc2b2';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';        
    case 'Rhithrogena_semicolorata'
      id_CoL = '64430dafc52e724cf544be3fdd703f5a';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17355';        
    case 'Oligoneuriella_rhenana'
      id_CoL = '98265cc9272cbad448432d8f8db5f757';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17334';        
    case 'Cloeon_dipterum'
      id_CoL = 'cb3fd2c1a361461205d2d68285a00177';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17374';        
    case 'Locusta_migratoria'
      id_CoL = '9e147038cfb1f0aa33bcd94248a2d984';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '18150';        
    case 'Acyrthosiphon_pisum'
      id_CoL = '56d87c2d5ce3acb4f039fbc181b69355';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '19482';        
    case 'Notonecta_maculata'
      id_CoL = 'bb4bd9d149acf9689ea1e0d64622d566';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '18437';        
    case 'Aedes_aegypti'
      id_CoL = '659d82334ce06794ac14a699fe41bb4d';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '28492';        
    case 'Chaoborus_americanus'
      id_CoL = '5dbeb214237206446fda16aaf06120cb';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15      
    case 'Plodia_interpunctella'
      id_CoL = '6b0d3d4ddb2f7b52424f8da510c91e10';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '29835';        
    case 'Bombyx_mori'
      id_CoL = '672e63f0b0571acb1c4299a65a1d256a';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '30426';        
    case 'Manduca_sexta'
      id_CoL = 'ed22ff1ba0332e482333ac955e210c42';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '114444';        
    case 'Venturia_canescens'
      id_CoL = '25a05f2c5c8f5146d4b515c36d06e089';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '27808';        
    case 'Asterias_rubens'
      id_CoL = '6d91fa5c1a435bc2c9e5394e5b2478e1';
      id_WoRMS = '123776';
      id_Taxo = '40936';        
    case 'Pisaster_ochraceus'
      id_CoL = '55af8fcb16861cd1292551807b9040ed';
      id_WoRMS = '240755';
      id_Taxo = '40954';        
    case 'Asterina_gibbosa'
      id_CoL = '9bb47cd93065ef4d4f6c5761a3577c47';
      id_WoRMS = '123987';
      id_Taxo = '40883';        
    case 'Odontaster_validus'
      id_CoL = '9da6a4806559abb475558069f7086367';
      id_WoRMS = '172775';
      id_Taxo = '40845';        
    case 'Echinus_affinis'
      id_CoL = 'e7cf9012297aa33bdaa907a4e2545d53'; % unaccepeted, to Gracilechinus affinis (Mortensen, 1903)
      id_WoRMS = '124279'; % unaccepted, to Gracilechinus affinis (Mortensen, 1903)
      id_Taxo = ''; % not present 2017/06/15       
    case 'Sterechinus_neumayeri'
      id_CoL = 'd8fb71b73e11d1cdecfac8419e98fb50';
      id_WoRMS = '160831';
      id_Taxo = ''; % not present 2017/06/15       
    case 'Mesocentrotus_franciscanus'
      id_CoL = '9b52c4f8f7d683de6fed25c64eaf63d2';
      id_WoRMS = '591102';
      id_Taxo = ''; % not present 2017/06/15       
    case 'Paracentrotus_lividus'
      id_CoL = 'd258688755c65d9fc78cb8b568dac26a';
      id_WoRMS = '124316';
      id_Taxo = '41136';        
    case 'Branchiostoma_floridae'
      id_CoL = '56b084fe5a8af1fb6b065bd2b921487b';
      id_WoRMS = '266208';
      id_Taxo = '114894';        
    case 'Oikopleura_dioica'
      id_CoL = 'a0baaf22d884c493e15b87b9e7df0393';
      id_WoRMS = '103407';
      id_Taxo = '114881';        
    case 'Oikopleura_longicauda'
      id_CoL = '96345fc075fb3f226692bc86808fced3';
      id_WoRMS = '103414';
      id_Taxo = ''; % not present 2017/06/15       
    case 'Thalia_democratica'
      id_CoL = 'f4ca44e873a0b0c5881b0a1645582cda';
      id_WoRMS = '137279';
      id_Taxo = '959814';        
    case 'Ciona_intestinalis'
      id_CoL = 'eca285a07d80dda8bda2c2e91aa687f8';
      id_WoRMS = '103732';
      id_Taxo = '41508';        
    case 'Myxine_glutinosa'
      id_CoL = '69d2953e9389f6ea17228c0d1331173d';
      id_WoRMS = '101170';
      id_Taxo = '41664';        
    case 'Eptatretus_stoutii'
      id_CoL = '8c8fa2e6d0664f3f877f783a64beb1c6';
      id_WoRMS = '279298';
      id_Taxo = '174002';        
    case 'Lampetra_planeri'
      id_CoL = '7849536da20a2a4d44365ac33b8c8b98';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '41687';        
    case 'Callorhinchus_capensis'
      id_CoL = '2b8e437a12e0cc1b19683fd7de7c7206';
      id_WoRMS = '221460';
      id_Taxo = '42191';        
    case 'Raja_brachyura'
      id_CoL = 'f1f36da016e9d4c15ed5f68aa88216ff';
      id_WoRMS = '367297';
      id_Taxo = '108278';        
    case 'Raja_clavata'
      id_CoL = '8b941a6455f0abdb69f393eb6621a74d';
      id_WoRMS = '105883';
      id_Taxo = '108279';        
    case 'Leucoraja_erinacea'
      id_CoL = '2b6c3cc7234a53cc6229a9883c9075af';
      id_WoRMS = '158551';
      id_Taxo = '178802';        
    case 'Rhinobatos_productus'
      id_CoL = '8691a825ec34f8adcda1539f3d0babc0';
      id_WoRMS = '271608';
      id_Taxo = '42033';        
    case 'Trygonoptera_personata'
      id_CoL = '739fdc4060e8c6a65d8025878bac5d8b';
      id_WoRMS = '283062';
      id_Taxo = '189636';        
    case 'Manta_birostris'
      id_CoL = 'a8df6db60161ecbce7691570e5ce3b33';
      id_WoRMS = '105857';
      id_Taxo = '42170';        
    case 'Torpedo_marmorata'
      id_CoL = '522a408cbb5e8f63207652bb703c9abb';
      id_WoRMS = '271684';
      id_Taxo = '42040';        
    case 'Pristis_pectinata'
      id_CoL = '25c479c1cdb81333995c06b8fdc78d6d';
      id_WoRMS = '105848';
      id_Taxo = '42016';        
    case 'Squatina_californica'
      id_CoL = '68e9753aed082e09ac4d4b4c348e920b';
      id_WoRMS = '271667';
      id_Taxo = '106304';        
    case 'Pristiophorus_cirratus'
      id_CoL = '791c66b1d7d17796ec389eefcf0e7cdb';
      id_WoRMS = '282352';
      id_Taxo = '106297';        
    case 'Squalus_acanthias'
      id_CoL = 'b141071e3edeab5432a46ce9d8dac40c';
      id_WoRMS = '105923';
      id_Taxo = '41840';        
    case 'Somniosus_microcephalus'
      id_CoL = '31935504b8da5b895f90bcf5c73f221c';
      id_WoRMS = '105919';
      id_Taxo = '41837';        
    case 'Etmopterus_perryi'
      id_CoL = '36a22def38a1931b3c9f9cb244396c01';
      id_WoRMS = '271637';
      id_Taxo = '';        
    case 'Chlamydoselachus_anguineus'
      id_CoL = '3f01614da0c8edb62c6afbb190cfc9d7';
      id_WoRMS = '105831';
      id_Taxo = '106487';        
    case 'Heptranchias_perlo'
      id_CoL = '5bbba314cd44233980889b7db2091025';
      id_WoRMS = '105832';
      id_Taxo = '41773';        
    case 'Heterodontus_portusjacksoni'
      id_CoL = 'ea78d30dbfede623a294ebd70f2efd83';
      id_WoRMS = '276699';
      id_Taxo = '106314';        
    case 'Chiloscyllium_plagiosum'
      id_CoL = '52239f24c95c370cbca53d5404f355a8';
      id_WoRMS = '277832';
      id_Taxo = '94273';        
    case 'Rhincodon_typus'
      id_CoL = 'b757ec97469df0ee764547b0911c66e6';
      id_WoRMS = '105847';
      id_Taxo = '41872';        
    case 'Sphyrna_lewini'
      id_CoL = '350243ccc762d3c4ac03d1b35bd6ff9d';
      id_WoRMS = '105816';
      id_Taxo = '42008';        
    case 'Scyliorhinus_canicula'
      id_CoL = '384ae8eb01a30b7118797dd65f7e4915';
      id_WoRMS = '105814';
      id_Taxo = '106399';        
    case 'Carcharhinus_leucas'
      id_CoL = '08712ee451c6216fdc23bf2ed1b8eb24';
      id_WoRMS = '105792';
      id_Taxo = '41977';        
    case 'Rhizoprionodon_acutus'
      id_CoL = 'd7c076bc204bb11aa7e5d4e49ba7ffe9';
      id_WoRMS = '105802';
      id_Taxo = '41999';        
    case 'Carcharodon_carcharias'
      id_CoL = 'c5465928ea46eb759bbbf4d623c56bad';
      id_WoRMS = '105838';
      id_Taxo = '41903';        
    case 'Erpetoichthys_calabaricus'
      id_CoL = 'c89d648572722980801c621e154ae462';
      id_WoRMS = '280711';
      id_Taxo = '174040';        
    case 'Acipenser_ruthenus'
      id_CoL = '0b96730a682802ff925457b4832bce69';
      id_WoRMS = '233941';
      id_Taxo = '42441';        
    case 'Acipenser_sturio'
      id_CoL = '91d2d822ff7160abb9b9e57817711028';
      id_WoRMS = '126279';
      id_Taxo = '42445';        
    case 'Amia_calva'
      id_CoL = 'd526fe4bb2cd5cf0d8edcbee9b0a07c4';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42482';        
    case 'Atractosteus_spatula'
      id_CoL = 'd3a4b7c1f41f1e5cc48d060d5ec1e28f';
      id_WoRMS = '279822';
      id_Taxo = '42476';        
    case 'Megalops_atlanticus'
      id_CoL = '17dc53c92491078c7b4c95be788a6908';
      id_WoRMS = '126430';
      id_Taxo = '92883';        
    case 'Albula_vulpes'
      id_CoL = '954d4564780d4574570377f3efae7a5f';
      id_WoRMS = '212256';
      id_Taxo = '42516';        
    case 'Notacanthus_chemnitzii'
      id_CoL = '105a60ea1ee0ae9c444deb9ca6eb6ea6';
      id_WoRMS = '126643';
      id_Taxo = '181370';        
    case 'Anguilla_anguilla'
      id_CoL = 'b81dfd849eb83bca1705a2f0c0e671dd';
      id_WoRMS = '126281';
      id_Taxo = '42526';        
    case 'Hiodon_tergisus'
      id_CoL = '9847fa5ddb60890788abf8bc9ce686a5';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42725';        
    case 'Osteoglossum_bicirrhosum'
      id_CoL = '72895daedd532e7e22d3cefc27328304';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42708';        
    case 'Notopterus_notopterus'
      id_CoL = '4fcb49f6bfd5870b3cfababf5e802016';
      id_WoRMS = '281795';
      id_Taxo = '42730';        
    case 'Arapaima_gigas'
      id_CoL = 'a8f83fea3aa2f1d343cc2b193eacfdcc';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42701';        
    case 'Sardina_pilchardus'
      id_CoL = 'Sardina_pilchardus';
      id_WoRMS = '126421';
      id_Taxo = '42663';        
    case 'Sardinella_aurita'
      id_CoL = 'dbb523a3a5dd945fa9f9217e754a65db';
      id_WoRMS = '126422';
      id_Taxo = '42665';        
    case 'Sprattus_sprattus'
      id_CoL = '8b704c8dd27132590681045b7a305644';
      id_WoRMS = '126425';
      id_Taxo = '42676';        
    case 'Clupea_harengus'
      id_CoL = '7adc35bdac2019989efa025ca00ccd5c';
      id_WoRMS = '126417';
      id_Taxo = 'Clupea_harengus';        
    case 'Alosa_sapidissima'
      id_CoL = '540d73069202e6462f72e6981a5d1e4c';
      id_WoRMS = '158670';
      id_Taxo = '42629';        
    case 'Engraulis_encrasicolus'
      id_CoL = '2abe41c8ee39bb550534f328bf4717a3';
      id_WoRMS = '126426';
      id_Taxo = '173703';        
    case 'Chirocentrus_dorab'
      id_CoL = 'e6e028c4da3f6801e1e7b01fa7098bf8';
      id_WoRMS = '212257';
      id_Taxo = '42695';        
    case 'Alepocephalus_bairdii'
      id_CoL = '216578ffdce872d0743b7ec726e4179b';
      id_WoRMS = '126682';
      id_Taxo = '160348';        
    case 'Chanos_chanos'
      id_CoL = '4d9c6e7dced48df2f32ab635d64864ea';
      id_WoRMS = '217625';
      id_Taxo = '43032';        
    case 'Danio_rerio'
      id_CoL = 'ae6d1ad09071086da0498b39630b01f8';
      id_WoRMS = '172875';  % not present 2017/06/16
      id_Taxo = '172875';        
    case 'Pimephales_promelas'
      id_CoL = '63c01b172492dc6862ba657e613edec0';
      id_WoRMS = '';  % not present 2017/06/16
      id_Taxo = '43662';        
    case 'Rhodeus_amarus'
      id_CoL = '383389bc215371c6bf7b0cf460aff92e';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '92917';        
    case 'Hydrocynus_vittatus'
      id_CoL = 'ed61d5b61ce91a6d34fbca8211ce5a9c';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '176952';        
    case 'Electrophorus_electricus'
      id_CoL = '3cef65beebb836d276014fb79322b074';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '43452';        
    case 'Silurus_glanis'
      id_CoL = '0fca3a9e29d6704c3a68823c84b98198';
      id_WoRMS = '154677';
      id_Taxo = '44028';        
    case 'Pangasianodon_hypophthalmus'
      id_CoL = '53d4229bacedae1311051e7cddd073d4';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '182534'; % present as Pangasius_hypophthalmus        
    case 'Corydoras_aeneus'
      id_CoL = '905ee3c3036f0147c9e3465986196a49';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '44138';        
    case 'Lepidogalaxias_salamandroides'
      id_CoL = 'b975ffe011c7f6ea8044587c5b496b26';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '107055';        
    case 'Argentina_silus'
      id_CoL = '3e22bc9aa5c827a1a28e27a30ebbce10';
      id_WoRMS = '126715';
      id_Taxo = '161604';        
    case 'Galaxias_paucispondylus'
      id_CoL = '97ac829e366aa23775953a31b00ae1e5';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '174652';        
    case 'Galaxias_prognathus'
      id_CoL = 'da95676ab15b54eb5e4f65b620c80490';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '174655';        
    case 'Galaxias_maculatus'
      id_CoL = 'c2582550dc2965e0747776dea22d1aa4';
      id_WoRMS = '280811';
      id_Taxo = '42879';        
    case 'Thymallus_thymallus'
      id_CoL = '70711497ab2addf810f979817f82f1e5';
      id_WoRMS = '154375';
      id_Taxo = '42856';        
    case 'Oncorhynchus_tshawytscha'
      id_CoL = '566c1a149d7757a7b5ba252a5186fbbf';
      id_WoRMS = '158075';
      id_Taxo = '125253';        
    case 'Oncorhynchus_mykiss'
      id_CoL = 'd11b35db644cc45d76ccd8ad31452045';
      id_WoRMS = '127185';
      id_Taxo = '42808';        
    case 'Salmo_trutta'
      id_CoL = '0909d84d2750016742284669abf8341f';
      id_WoRMS = '223866';
      id_Taxo = '42823';        
    case 'Salvelinus_alpinus'
      id_CoL = '2b256e111056ab998c15402950cf0b1b';
      id_WoRMS = '293724';
      id_Taxo = '42831';        
    case 'Esox_lucius'
      id_CoL = 'c828ed0d18644bc9e3cfe4b9507f3247';
      id_WoRMS = '154210';
      id_Taxo = '42891';        
    case 'Osmerus_mordax'
      id_CoL = 'a3b21f18440ced89a25d39ddfedd990a';
      id_WoRMS = '293649';
      id_Taxo = '502213';        
    case 'Mallotus_villosus'
      id_CoL = '6de343f6ed58029def4a6735f32b7771';
      id_WoRMS = '126735';
      id_Taxo = '42863';        
    case 'Maurolicus_muelleri'
      id_CoL = '287f6d8d5cad38947c4747789ae7694d';
      id_WoRMS = '127312';
      id_Taxo = '42941';        
    case 'Harpadon_nehereus'
      id_CoL = '20bdc080c3d6f6e9ec19d35a7a538828';
      id_WoRMS = '217661';
      id_Taxo = '42986';        
    case 'Saurida_undosquamis'
      id_CoL = '4325632d3f0d7f509ff89ff24c0995c4';
      id_WoRMS = '126371';
      id_Taxo = '154128';        
    case 'Lampanyctodes_hectoris'
      id_CoL = '1663743e8aa7e56da885a90acae52c58';
      id_WoRMS = '217704';
      id_Taxo = '153098';        
    case 'Percopsis_omiscomaycus'
      id_CoL = '9fb8728f4e0fc8a9cf1ddbfc6fd232d5';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '44208';        
    case 'Zeus_faber'
      id_CoL = 'bf90fcde968c06d7a7f8cfca8d697a6f';
      id_WoRMS = '127427';
      id_Taxo = '44763';        
    case 'Merluccius_merluccius'
      id_CoL = '39aec9c7ac734cd01b88dc2b5b09c28c';
      id_WoRMS = '126484';
      id_Taxo = '44371';        
    case 'Raniceps_raninus'
      id_CoL = 'bde2dc26759b5a5d568a3b000a7d0ed6';
      id_WoRMS = '126442';
      id_Taxo = '44353';        
    case 'Coryphaenoides_rupestris'
      id_CoL = '5c129aaf328e6c2c681bbdd241f31865';
      id_WoRMS = '158960';
      id_Taxo = '44412';        
    case 'Coryphaenoides_acrolepis'
      id_CoL = '6016bf6098518f7e8e1948a86bf68866';
      id_WoRMS = '272313';
      id_Taxo = '171920';        
    case 'Trachyrincus_scabrus'
      id_CoL = 'd00f2ecf91149861613bf860026db2f5';
      id_WoRMS = '126482';
      id_Taxo = '189278';        
    case 'Gaidropsarus_guttatus'
      id_CoL = 'ee90fb4c4e49bf9664559762da7b707e';
      id_WoRMS = '126455';
      id_Taxo = '174631';        
    case 'Lota_lota'
      id_CoL = 'f2994eaf34e74ea6bd789bfdb4684b89';
      id_WoRMS = '154388';
      id_Taxo = '44325';        
    case 'Brosme_brosme'
      id_CoL = '10373959a98b1e40a905b724dad4a42c';
      id_WoRMS = '126447';
      id_Taxo = '44299';        
    case 'Molva_molva'
      id_CoL = '3fee41097816c75ec9b5a5ef34cb99dd';
      id_WoRMS = '126461';
      id_Taxo = '44342';        
    case 'Molva_dypterygia'
      id_CoL = '269c0de4e92dcc0e57972a40b5e4e002';
      id_WoRMS = '154806';
      id_Taxo = '180273';        
    case 'Trisopterus_luscus'
      id_CoL = 'cd5e7b2693846a253c3422d6fe98ae1a';
      id_WoRMS = '126445';
      id_Taxo = '44358';        
    case 'Trisopterus_minutus'
      id_CoL = '98b19a0e8841f79eb026a4ffb91a2bc5';
      id_WoRMS = '126446'; 
      id_Taxo = '44359';        
    case 'Gadiculus_argenteus'
      id_CoL = 'a78ad69172f3ea581adb41e10070cc7c';
      id_WoRMS = '126435';
      id_Taxo = '44309';        
    case 'Micromesistius_poutassou'
      id_CoL = 'ba1a5fff001217fb7146d999d35734f3';
      id_WoRMS = '126439';
      id_Taxo = '44338';        
    case 'Pollachius_virens'
      id_CoL = '60c99285fb5a4e824031a17adb22b495';
      id_WoRMS = '126441';
      id_Taxo = '92961';        
    case 'Melanogrammus_aeglefinus'
      id_CoL = '69087f937e2e4b18916f8bd300a4ca41';
      id_WoRMS = '126437';
      id_Taxo = '92958';        
    case 'Merlangius_merlangus'
      id_CoL = 'ab575c19c518950c34e2773154585474';
      id_WoRMS = '126438';
      id_Taxo = '92959';        
    case 'Gadus_morhua'
      id_CoL = '472b9bc88fb647e974a0f06caed3dd44';
      id_WoRMS = '126436';
      id_Taxo = '92960';        
    case 'Polymixia_nobilis'
      id_CoL = '70e2266b2d2a3c0706512274d0d36766';
      id_WoRMS = '127163';
      id_Taxo = '184375';        
    case 'Hoplostethus_atlanticus'
      id_CoL = '1e050a7b0ef409254f1412f5eda0c21f';
      id_WoRMS = '126402';
      id_Taxo = '153363';        
    case 'Holocentrus_adscensionis'
      id_CoL = '09be05d2d25f1e7254c0380f441b7fa3';
      id_WoRMS = '159378';
      id_Taxo = '176795';        
    case 'Carapus_bermudensis'
      id_CoL = '2dd6e3f10c0d08bcb17089579df4c5d0';
      id_WoRMS = '158995';
      id_Taxo = '165436';        
    case 'Genypterus_blacodes'
      id_CoL = '660b829aafcd7d46e774e3638a8d7a29';
      id_WoRMS = '278702';
      id_Taxo = '174838';        
    case 'Opsanus_tau'
      id_CoL = 'eabf208a108044b4e9b995e267e3cbed';
      id_WoRMS = '158782';
      id_Taxo = '44212';        
    case 'Halobatrachus_didactylus'
      id_CoL = '179d2ac7f27322ede597a170364b80a9';
      id_WoRMS = '126374';
      id_Taxo = '175875';        
    case 'Kurtus_gulliveri'
      id_CoL = '38cb814c35df32492fc8a30488ce5b03';
      id_WoRMS = '281236';
      id_Taxo = '46650';        
    case 'Pomatoschistus_minutus'
      id_CoL = '04913a0b4d8937a43ce71ec46207ba90';
      id_WoRMS = '126928';
      id_Taxo = '46609';        
    case 'Hippocampus_whitei'
      id_CoL = '34e00e147e87daed81ad04fe6747aa6f';
      id_WoRMS = '212235';
      id_Taxo = '176713';        
    case 'Macroramphosus_scolopax'
      id_CoL = '770932aafd5b74016b79ed7295764b9b';
      id_WoRMS = '127378';
      id_Taxo = '179479';        
    case 'Macroramphosus_gracilis'
      id_CoL = '437607dcae3e3f6957d73c4d031e8d38';
      id_WoRMS = '275181';
      id_Taxo = '179478';        
    case 'Thunnus_orientalis'
      id_CoL = '243ba5718af1ebd2306782107e21e150';
      id_WoRMS = '273823';
      id_Taxo = '189037';        
    case 'Thunnus_thynnus'
      id_CoL = 'cd171d7f8b99d3cfddfe023e5f82480c';
      id_WoRMS = '127029';
      id_Taxo = '46703';        
    case 'Scomber_scombrus'
      id_CoL = 'f656631fc42068100e2330c40c8fda18';
      id_WoRMS = '127023';
      id_Taxo = '46695';        
    case 'Trichiurus_nanhaiensis'
      id_CoL = '555222cee2c6984ba598f0c688c28475';
      id_WoRMS = '274024';
      id_Taxo = '';        
    case 'Mastacembelus_erythrotaenia'
      id_CoL = '9f4397e88523d3980ca643eb8822e6fc';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '';        
    case 'Channa_punctata'
      id_CoL = '19bb192b10caf3ea97ac557fd3b99edb';
      id_WoRMS = '280129';
      id_Taxo = '189326';        
    case 'Leptomelanosoma_indicum'
      id_CoL = '004a64a588dad591b93043d7e1ba587e';
      id_WoRMS = '281323';
      id_Taxo = '691213';        
    case 'Coryphaena_hippurus'
      id_CoL = 'c1a7f3fb0a8ad67293953bcc7595b9b1';
      id_WoRMS = '126846';
      id_Taxo = '45259';        
    case 'Trachurus_trachurus'
      id_CoL = '02ba3ac0351955e01ae15aada30ecaf3';
      id_WoRMS = '126822';
      id_Taxo = '45255';        
    case 'Seriola_dumerili'
      id_CoL = 'c41257061380fbac21c3ece5c9f31c25';
      id_WoRMS = '126816';
      id_Taxo = '45249';        
    case 'Sphyraena_barracuda'
      id_CoL = '15ca7deef951e4af6ad43248c2ba9525';
      id_WoRMS = '345843';
      id_Taxo = '46311';        
    case 'Xiphias_gladius'
      id_CoL = '099117b58af9f608aac8375fee1b49f9';
      id_WoRMS = '127094';
      id_Taxo = '46706';        
    case 'Makaira_nigricans'
      id_CoL = '088c42e166682f624c0dcf29b3eb37b1';
      id_WoRMS = '126950';
      id_Taxo = '179502';        
    case 'Centropomus_undecimalis'
      id_CoL = '3301ce508f4609a51e8f9e149960e264';
      id_WoRMS = '280068';
      id_Taxo = '45046';        
    case 'Solea_solea'
      id_CoL = 'deff55d108d1dce0aa4a4f4b9838e198';
      id_WoRMS = '127160';
      id_Taxo = '46991';        
    case 'Psetta_maxima'
      id_CoL = '614b30fcca5c61b82a3d7b6cbad26210';
      id_WoRMS = '154473'; % unaccepted, to Scophthalmus maximus (Linnaeus, 1758)
      id_Taxo = '549389';        
    case 'Bothus_podas'
      id_CoL = 'bdfad96d05a57e67153ca800c8dcbbb2';
      id_WoRMS = '127129';
      id_Taxo = '46911';        
    case 'Paralichthys_californicus'
      id_CoL = '792306f69c45f40c290b03b5508d0145';
      id_WoRMS = '275809';
      id_Taxo = '46919';        
    case 'Platichthys_stellatus'
      id_CoL = '053a76755a17dcb950ac3c94f3b8ea0c';
      id_WoRMS = '154781';
      id_Taxo = '46959';        
    case 'Pleuronectes_platessa'
      id_CoL = '27a6782add287c044111388cc4996f04';
      id_WoRMS = '127143';
      id_Taxo = '46963';        
    case 'Limanda_limanda'
      id_CoL = '56f0252000b66dd5b8afb1db11ea325e';
      id_WoRMS = '127139';
      id_Taxo = '46950';        
    case 'Limanda_ferruginea'
      id_CoL = '04db571e4e47c5e9caa0a788e21cb419';
      id_WoRMS = '158879';
      id_Taxo = '178824';        
    case 'Hippoglossus_hippoglossus'
      id_CoL = 'dc36286e5ce7fb2b3f8ea20980cf01a7';
      id_WoRMS = '127138';
      id_Taxo = '46945';        
    case 'Hippoglossus_stenolepis'
      id_CoL = '91569817d395ea9dfbc24b5cb9c1ea2d';
      id_WoRMS = '274290';
      id_Taxo = '46948';        
    case 'Reinhardtius_hippoglossoides'
      id_CoL = 'c4292d462182240f592370e0ef60a08f';
      id_WoRMS = '127144';
      id_Taxo = '46967';        
    case 'Glyptocephalus_cynoglossus'
      id_CoL = 'bdb069c61c221a0f307446fb7b95af91';
      id_WoRMS = '127136';
      id_Taxo = '46938';        
    case 'Microstomus_kitt'
      id_CoL = '7203eb81dc39b374d6e2833224b87bab';
      id_WoRMS = '127140';
      id_Taxo = '46954';        
    case 'Oreochromis_niloticus'
      id_CoL = '9ddda31044c5b5e86eca800592b8473f';
      id_WoRMS = '293639';
      id_Taxo = '46085';        
    case 'Belone_belone'
      id_CoL = '6b4ff497ef77437ec9fad307c08c99a6';
      id_WoRMS = '126375';
      id_Taxo = '44420';        
    case 'Hirundichthys_affinis'
      id_CoL = 'dcc59c1ff44e5086c007ead8f39618f7';
      id_WoRMS = '159265';
      id_Taxo = '176743';        
    case 'Kryptolebias_marmoratus'
      id_CoL = '8c24a2a18bf61d804420086edc99c306';
      id_WoRMS = '314719';
      id_Taxo = '691145';        
    case 'Poecilia_reticulata'
      id_CoL = '1a2112979142994cc7c0ac7710256715';
      id_WoRMS = '154400';
      id_Taxo = '44613';        
    case 'Aphanius_fasciatus'
      id_CoL = 'ca3b317c12ad025398bec05b234d8a98';
      id_WoRMS = '126428';
      id_Taxo = '44467';        
    case 'Atherina_presbyter'
      id_CoL = '8aa69a96e25e63f574382883df9016f5';
      id_WoRMS = '272030';
      id_Taxo = '44697';        
    case 'Chromis_chromis'
      id_CoL = '3ea36d06fa4400de11f0f6fbaf5c7bde';
      id_WoRMS = '127000';
      id_Taxo = '46264';        
    case 'Chelon_labrosus'
      id_CoL = '78be26413dd8d85e73278dd3188eab9f';
      id_WoRMS = '126977';
      id_Taxo = '46293';        
    case 'Pseudochromis_flavivertex'
      id_CoL = 'b697a0538b3401dbaae2a64b561eb983';
      id_WoRMS = '218331';
      id_Taxo = '105954';        
    case 'Lepadogaster_lepadogaster'
      id_CoL = 'e51f4ae6bb47355df4b30132303ea92b';
      id_WoRMS = '126518';
      id_Taxo = '435688';        
    case 'Parablennius_ruber'
      id_CoL = '9386eb92555dee139dce61caa84022e8';
      id_WoRMS = '126774';
      id_Taxo = '182612';        
    case 'Gerres_equulus'
      id_CoL = '23cd92cc305ff9a3bf3649785c8e464b';
      id_WoRMS = '276956';
      id_Taxo = '174882';        
    case 'Uranoscopus_scaber'
      id_CoL = '441e78c3a3b763923fda47d897dae3f2';
      id_WoRMS = '127093';
      id_Taxo = '46399';        
    case 'Achoerodus_viridis'
      id_CoL = '1004ac3c0d8d6bd825bbe8058bc5c012';
      id_WoRMS = '279498';
      id_Taxo = '160085';        
    case 'Semicossyphus_pulcher'
      id_CoL = '69686c930aaba39a3bdb90083af535ad';
      id_WoRMS = '282753';
      id_Taxo = '187392';        
    case 'Dicentrarchus_labrax'
      id_CoL = '9d082a4d12bd05ee5b2050d56a4d052d';
      id_WoRMS = '126975';
      id_Taxo = '173131';        
    case 'Platax_orbicularis'
      id_CoL = 'f28ff72a2191ac0ee807ce87547e057b';
      id_WoRMS = '218711';
      id_Taxo = '45379';        
    case 'Chaetodon_larvatus'
      id_CoL = '6f795a109a33b29662c4c42498b46600';
      id_WoRMS = '218716';
      id_Taxo = '45422';        
    case 'Sciaena_umbra'
      id_CoL = '27622ae481976a389f0364896073477f';
      id_WoRMS = '127010';
      id_Taxo = '187003';        
    case 'Argyrosomus_regius'
      id_CoL = '27622ae481976a389f0364896073477f';
      id_WoRMS = '127007';
      id_Taxo = '161639';        
    case 'Acanthurus_lineatus'
      id_CoL = '72076057c0ddd13f26566ef47ca0f806';
      id_WoRMS = '159582';
      id_Taxo = '159956';        
    case 'Acanthurus_olivaceus'
      id_CoL = '184220753935633dfd76a44124f9eb9f';
      id_WoRMS = '219625';
      id_Taxo = '159966';        
    case 'Ctenochaetus_striatus'
      id_CoL = 'd0a5c174287d9a41401d44fd76ea47a9';
      id_WoRMS = '219659';
      id_Taxo = '172382';        
    case 'Zebrasoma_scopas'
      id_CoL = '4120d1be7736b044565798994f885c30';
      id_WoRMS = '219679';
      id_Taxo = '190229';        
    case 'Naso_brevirostris'
      id_CoL = '14f067280f37ccc47cfca4d4c77d78e9';
      id_WoRMS = '219671';
      id_Taxo = '180806';        
    case 'Naso_hexacanthus'
      id_CoL = '0c44bef6df412078dc9d79bf4aea957c';
      id_WoRMS = '219667';
      id_Taxo = '180811';        
    case 'Naso_tuberosus'
      id_CoL = 'f9f4b124898fab8fa2a035aa2c88606c';
      id_WoRMS = '219675';
      id_Taxo = '180820';        
    case 'Naso_unicornis'
      id_CoL = 'b0550abec0ef9ad62702f1b462928cf3';
      id_WoRMS = '219668';
      id_Taxo = '46736';        
    case 'Naso_vlamingii'
      id_CoL = '93cc53b4d96f8af60aaaf9b672c98b6f';
      id_WoRMS = '219672';
      id_Taxo = '180821';        
    case 'Prionurus_maculatus'
      id_CoL = '8e93ea02a76329aafcf142608f63878c';
      id_WoRMS = '282347';
      id_Taxo = '184744';        
    case 'Pomacanthus_imperator'
      id_CoL = 'a6e16382a753b4b86e9662ada4e78f14';
      id_WoRMS = '220001';
      id_Taxo = '45410';        
    case 'Lutjanus_fulviflamma'
      id_CoL = '4014e54315e91f4329bbdd5601dd1b9f';
      id_WoRMS = '218490';
      id_Taxo = '106193';        
    case 'Lutjanus_guttatus'
      id_CoL = '6d5cc9613dc89d594af6927ac562202c';
      id_WoRMS = '276539';
      id_Taxo = '179225';        
    case 'Lobotes_surinamensis'
      id_CoL = '4d5106709e150cd3aa658259a8fd12b6';
      id_WoRMS = '126973';
      id_Taxo = '45277';        
    case 'Dentex_dentex'
      id_CoL = '470a9807241f414f99aaed0d85d65ec6';
      id_WoRMS = '273962';
      id_Taxo = '172982';        
    case 'Pagellus_erythrinus'
      id_CoL = 'cf65e6afffa559b72e5b5b8afebdae91';
      id_WoRMS = '127060';
      id_Taxo = '45317';        
    case 'Sparus_aurata'
      id_CoL = '0ef59679adc50c75a369c2b291f7e32f';
      id_WoRMS = '151523';
      id_Taxo = '159658';        
    case 'Diplodus_puntazzo'
      id_CoL = '7be95da2081d27bd05a0d13a5a9ba2f2';
      id_WoRMS = '127052';
      id_Taxo = '173233';        
    case 'Boops_boops'
      id_CoL = 'fb99b92f46db65d7f8a22d33ee501f04';
      id_WoRMS = '127047';
      id_Taxo = '164378';        
    case 'Acanthopagrus_berda'
      id_CoL = '743fc93b06d76f028c95835e6bd733e0';
      id_WoRMS = '218588';
      id_Taxo = '159910';        
    case 'Siganus_sutor'
      id_CoL = 'b95005208d28f9fbdc4c90a74e502fae';
      id_WoRMS = '219688';
      id_Taxo = '187610';        
    case 'Scatophagus_argus'
      id_CoL = 'ff1b84d7b315c0069609d5e1b7d2b37c';
      id_WoRMS = '276970';
      id_Taxo = '45387';        
    case 'Priacanthus_macracanthus'
      id_CoL = '464de607d945097ad6b06e525e70a826';
      id_WoRMS = '273765';
      id_Taxo = '45154';        
    case 'Capros_aper'
      id_CoL = '2b3383c0bc271b4255f444abc942ded1';
      id_WoRMS = '127419';
      id_Taxo = '44767';        
    case 'Lophius_piscatorius'
      id_CoL = 'df7f154bea778d0e8d2947f93d849f53';
      id_WoRMS = '126555';
      id_Taxo = '44235';        
    case 'Balistes_vetula'
      id_CoL = '1887ebe145aef2774c5d77da4fd412ee';
      id_WoRMS = '127397';
      id_Taxo = '47004';        
    case 'Mola_mola'
      id_CoL = 'ad52cc37a5ce66e98b9ba0195b9d8cb7';
      id_WoRMS = '127405';
      id_Taxo = '47097';        
    case 'Pempheris_adusta'
      id_CoL = 'c50e0567968f7bba0e705a8a7b5a6cc5'; % unaccepted, to Pempheris malabarica
      id_WoRMS = '218704';
      id_Taxo = '183399';        
    case 'Pempheris_schwenkii'
      id_CoL = 'c0a9eb122361f992e57b9d586d79a8f7';
      id_WoRMS = '218699';
      id_Taxo = '183415';        
    case 'Lepomis_cyanellus'
      id_CoL = 'cc83144368365e74204374b9f7db5de9';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '45132';        
    case 'Epinephelus_marginatus'
      id_CoL = 'b19367bf6c4b12ca0ea001ea9953c9c9';
      id_WoRMS = '127036';
      id_Taxo = '173912';        
    case 'Perca_fluviatilis'
      id_CoL = '593aaa7c79677b093fe94582a14d3f94';
      id_WoRMS = '151353';
      id_Taxo = '45191';        
    case 'Notothenia_coriiceps'
      id_CoL = '0d2d14ff0bfeed9cef3cd477df4e2afd';
      id_WoRMS = '234679';
      id_Taxo = '181460';        
    case 'Chaenocephalus_aceratus'
      id_CoL = '3fec63b8bf6a49d4f179180b00a183bc';
      id_WoRMS = '234725';
      id_Taxo = '170312';        
    case 'Platycephalus_fuscus'
      id_CoL = '4c534963503ef6fcc744f3b7e012ee86';
      id_WoRMS = '274658';
      id_Taxo = '183991';        
    case 'Chelidonichthys_lucerna'
      id_CoL = '092eeb046b250e0e6525afb90ea84c57';
      id_WoRMS = '127262';
      id_Taxo = '170737'; % unaccepted, to Chelidonichthys lucernus (C. Linnaeus, 1758)       
    case 'Eutrigla_gurnardus'
      id_CoL = 'b5170e5381219be1eddc144a73d3ac91';
      id_WoRMS = '150637';
      id_Taxo = '380822';        
    case 'Helicolenus_dactylopterus'
      id_CoL = '803335b098e8e3e44e3878928804ab16';
      id_WoRMS = '127251';
      id_Taxo = '192869';        
    case 'Anarhichas_denticulatus'
      id_CoL = '82231bb18c0352f531625d3a170c6d25';
      id_WoRMS = '126757';
      id_Taxo = '160816';        
    case 'Anarhichas_lupus'
      id_CoL = '1b5a06078230b478e2aac29ce38c6cea';
      id_WoRMS = '126758';
      id_Taxo = '46468';        
    case 'Zoarces_viviparus'
      id_CoL = 'b17c8f2af4a90b649ca031af1d8ae0fa';
      id_WoRMS = '127123';
      id_Taxo = '44406';        
    case 'Gasterosteus_aculeatus'
      id_CoL = 'fd99ac97713444a54871ba5ae6555109';
      id_WoRMS = '126505';
      id_Taxo = '44801';        
    case 'Pungitius_pungitius'
      id_CoL = '43d5e58d4d2708e8963ec274963f607d';
      id_WoRMS = '126507';
      id_Taxo = '44805';        
    case 'Cyclopterus_lumpus'
      id_CoL = '4445e08822e2ce4fad71ae776c543830';
      id_WoRMS = '127214';
      id_Taxo = '45013';        
    case 'Scorpaenichthys_marmoratus'
      id_CoL = '397958a0d9074889461f137e4f7e7afc';
      id_WoRMS = '282726';
      id_Taxo = '153452';        
    case 'Myoxocephalus_scorpius'
      id_CoL = 'ea0a01317e2536d0439b2698488001d6';
      id_WoRMS = '127203';
      id_Taxo = '44979';        
    case 'Latimeria_chalumnae'
      id_CoL = '46ffe2e071c4d553d33e36794a179846';
      id_WoRMS = '217438';
      id_Taxo = '42378';        
    case 'Neoceratodus_forsteri'
      id_CoL = 'f3f583180b1b6979f36e97c7c6a5a23c';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '42340';        
    case 'Ichthyophis_kohtaoensis'
      id_CoL = '897f721335748e93117c84bae4a39427';
      id_Taxo = '48031';        
    case 'Lissotriton_vulgaris'
      id_CoL = '8eb8ecd651629c0276ce18bb308d38e8';
      id_Taxo = '985978';        
    case 'Andrias_japonicus'
      id_CoL = '41349267f4b608eff2affa9111ed15de';
      id_Taxo = '47247';        
    case 'Crinia_nimbus'
      id_CoL = '7653067dbfb18458578b1e698667cacc';
      id_Taxo = '781013';        
    case 'Crinia_georgiana'
      id_CoL = '66b8883b16bfdf95aad4fa2a2d29f8d8';
      id_Taxo = '79098';        
    case 'Geocrinia_vitellina'
      id_CoL = '12f5c1d4ba0f3475b80be1a3f53d8269';
      id_Taxo = '78940';        
    case 'Pseudophryne_bibronii'
      id_CoL = '30e9b7c92c5bc6dc80518b2c9ec2d126';
      id_Taxo = '88189';        
    case 'Bufo_bufo'
      id_CoL = 'e53ae9ac85ef2c141a509f6405bc98f7';
      id_Taxo = '47784';        
    case 'Sphenodon_punctatus'
      id_CoL = '25b1757fa601bfa9d01e3e9460c93b06';
      id_Taxo = '48794';        
    case {'Heteronotia_binoei','Heteronotia_binoei_3N1A','Heteronotia_binoei_3N1B','Heteronotia_binoei_EA6','Heteronotia_binoei_SM6'}
      id_CoL = '9d3714402a1d195c7d861c0b1f840bd8';
      id_Taxo = '90870';        
    case 'Eulamprus_quoyii'
      id_CoL = 'b7368b27759d92dfd69b19ba70fe7f0e';
      id_Taxo = '91157';        
    case 'Tiliqua_rugosa'
      id_CoL = '03bd821efb1cfb6c36d9b5037df77a69';
      id_Taxo = '49387';        
    case 'Egernia_cunninghami'
      id_CoL = '91fe397b8044dd1066106e58c5e37c52';
      id_Taxo = '91117';        
    case 'Egernia_striolata'
      id_CoL = 'db22a3ef5da7fd52f483b3ee884a0351';
      id_Taxo = '91138';        
    case 'Liopholis_striata'
      id_CoL = '3b1f6e151cff0f8f6971c525f21a1c11';
      id_Taxo = '1685441';        
    case 'Liopholis_inornata'
      id_CoL = '080dc164b56f544895192ee52cb97f02';
      id_Taxo = '1685439';        
    case 'Amphisbaena_alba'
      id_CoL = 'e9c5fca6f18472b4bdb1059cc9b179d0';
      id_Taxo = '50424';        
    case 'Lacerta_agilis'
      id_CoL = '7e1a059719ca73323daa52f23a19a64d';
      id_Taxo = '642580';        
    case 'Lacerta_strigata'
      id_CoL = '13b6f7649bd9cb39390aa38518fca717';
      id_Taxo = '49578';        
    case 'Varanus_komodoensis'
      id_CoL = '9734ef854130b3011fb9ec9be37afed1';
      id_Taxo = '170215';        
    case 'Anguis_fragilis'
      id_CoL = '9d72c2c8f700a5af8c9c3265f68859c7';
      id_Taxo = '49698';        
    case 'Furcifer_labordi'
      id_CoL = '2d8fe0c4795645592bb8c62369df1cd0';
      id_Taxo = '641166';        
    case 'Ctenophorus_ornatus'
      id_CoL = '1784a51b08f5dec6219f9eb686c036f8';
      id_Taxo = '90658';        
    case 'Sceloporus_undulatus'
      id_CoL = '9152ab6db407dca4866fc5bb234b62a6';
      id_Taxo = '49023';        
    case 'Python_regius'
      id_CoL = '6d0035229236a4c7583a934a4b310b15';
      id_Taxo = '49851';        
    case 'Eunectes_murinus'
      id_CoL = 'a97cd0d051262be8ea1c9b162f28b25f';
      id_Taxo = '49883';        
    case 'Boa_constrictor'
      id_CoL = '253bb4ac5026b77a3adf9b78516913b9';
      id_Taxo = '49860';        
    case 'Vipera_berus'
      id_CoL = '2c91a42f205ad78e94e75be5dc844684';
      id_Taxo = '50340';        
    case 'Coronella_austriaca'
      id_CoL = '7449215b10f0b0e3d3b66b04beff2d3d';
      id_Taxo = '49966';        
    case 'Natrix_natrix'
      id_CoL = '27ec70b00734b68213ff0972f7360650';
      id_Taxo = '50029';        
    case 'Pseudemydura_umbrina'
      id_CoL = '02201b34a72c0285ab6719ce051efc2f';
      id_WoRMS = ''; % not present 2010/06/16
      id_Taxo = '48233';        
    case {'Caretta_caretta','Caretta_caretta_MED'}
      id_CoL = '5667c31e110f65b6f24658fa8d7f650f';
      id_WoRMS = '137205';
      id_Taxo = '48469';        
    case 'Lepidochelys_kempii'
      id_CoL = '54e9e281f6d060b3f03a3d1295107826';
      id_WoRMS = '137208';
      id_Taxo = '48486';        
    case 'Dermochelys_coriacea'
      id_CoL = 'dd8153b49c7daf4582b11583525bc26c';
      id_WoRMS = '137209';
      id_Taxo = '48459';        
    case 'Deinosuchus_rugosus'
      id_CoL = ''; % not present 2010/06/16
      id_Taxo = '50639'; % present as genus 2010/06/16      
    case 'Alligator_mississippiensis'
      id_CoL = '258a54f64c1a663997eb9cca0549f840';
      id_Taxo = '50616';        
    case 'Caiman_crocodilus'
      id_CoL = '2169464fbc24236e32ec1d7b81a59a45';
      id_Taxo = '50619';        
    case 'Gavialis_gangeticus'
      id_CoL = '6bef8e5a76defdae652840a7b3416c9b';
      id_Taxo = '50652';        
    case 'Crocodylus_johnsoni'
      id_CoL = 'fcfe74af99e90cc51fee08e046d3aef2';
      id_Taxo = '50631'; 
    case 'Crocodylus_niloticus'
      id_CoL = '1a3211cb8764f54db424f9a4646c0075';
      id_Taxo = '50633';        
    case 'Pterodaustro_guinazui'
      id_CoL = '7241febd761e916d77b5d64f223534f0';
      id_Taxo = '50713'; % present as genus        
    case 'Plateosaurus_engelhardti'
      id_CoL = 'ae30514b08e4a9102ed0953d4e849809';
      id_Taxo = '50866'; % present as genus         
    case 'Camerasaurus_spec'
      id_CoL = 'f507a35be496f4aa1295ce637ec4d07c'; % C. supremus
      id_Taxo = ''; % not present at 2017/06/16       
    case 'Apatosaurus_spec'
      id_CoL = '901ec65eb9b9c783b00e6a2b21cde5d3'; % A. ajax
      id_Taxo = '50887'; % present as genus               
    case 'Mamenchisaurus_spec'
      id_CoL = 'e65e3cac15fd4c7da196864957452e52'; % M. anyuensis
      id_Taxo = '50894'; % present as genus            
    case 'Psittacosaurus_mongoliensis'
      id_CoL = '53bc6644c4a20fc8606d32a8104206c0';
      id_Taxo = '51062'; % present as genus           
    case 'Maiasaura_peeblesorum'
      id_CoL = 'a8a49429384c6e0baa7d523cfa760e16';
      id_Taxo = '50959'; % present as genus              
    case 'Daspletosaurus_torosus'
      id_CoL = 'd220ef2c6ad58b7d730719f5ad838bf8';
      id_Taxo = '50838'; % present as genus       
    case 'Gorgosaurus_libratus'
      id_CoL = '54cd15bf2e0366e56b694ffd4318a821';
      id_Taxo = '1674440';        
    case 'Tyrannosaurus_rex'
      id_CoL = '5b355e6aa28cdfd9bed3c5ed8f4a828d';
      id_Taxo = '50842';        
    case 'Archaeopteryx_lithographica'
      id_CoL = 'b9239f5c1ac241577326804d5d856bf6';
      id_Taxo = '51227';        
    case 'Apteryx_mantelli'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Dromaius_novaehollandiae'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Struthio_camelus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Rhea_americana'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Rhynchotus_rufescens'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Alectura_lathami'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Tetrastes_bonasia'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case {'Gallus_gallus','Gallus_gallus_IR','Gallus_gallus_WL'}
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Anas_platyrhynchos'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Mergus_merganser'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Mergus_serrator'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Melanitta_perspicillata'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Somateria_mollissima'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Podilymbus_podiceps'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Phoeniconaias_minor'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Columba_oenas'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Columba_livia'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Mesitornis_variegatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Pterocles_alchata'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Apus_apus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Aegotheles_cristatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Podargus_strigoides'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Cuculus_canorus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Clamator_glandarius'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Tauraco_erythrolophus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Ardeotis_kori'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Opisthocomus_hoazin'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Calidris_ferruginea'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Calidris_alpina'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Calidris_bairdii'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Calidris_minuta'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Calidris_minutilla'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Calidris_maritima'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Philomachus_pugnax'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Tringa_flavipes'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Limnodromus_griseus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Limosa_haemastica'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Numenius_phaeopus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Fratercula_arctica'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Ptychoramphus_aleuticus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Aethia_pusilla'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Aethia_cristatella'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Cepphus_grylle'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Uria_aalge'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Uria_lomvia'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Alle_alle'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Pinguinus_impennis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Alca_torda'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Chlidonias_leucopterus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sterna_paradisaea'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sterna_hirundo'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Thalasseus_sandvicensis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Chroicocephalus_ridibundus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Larus_argentatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Rissa_tridactyla'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Rissa_brevirostris'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Stercorarius_longicaudus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Stercorarius_skua'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Stercorarius_maccormicki'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Himantopus_mexicanus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Haematopus_moquini'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Vanellus_armatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Vanellus_coronatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Charadrius_pecuarius'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Pluvialis_dominica'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Gallinula_chloropus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_canadensis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_japonensis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_monacha'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_americana'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_antigone'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_rubicunda'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_vipio'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_virgo'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Grus_leucogeranus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Phaethon_lepturus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Phaethon_rubricauda'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Rhynochetos_jubatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Gavia_stellata'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Gavia_immer'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Pygoscelis_adeliae'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Fulmarus_glacialis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Diomedea_exulans'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Thalassarche_melanophrys'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Ciconia_ciconia'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Phalacrocorax_auritus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sula_bassana'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sula_nebouxii'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Balaeniceps_rex'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Pelecanus_onocrotalus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Aquila_chrysaetos'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Circus_aeruginosus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Vultur_gryphus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Tyto_alba'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Bubo_scandiacus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Bubo_virginianus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Urocolius_macrourus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Leptosomus_discolor'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Euptilotis_neoxenus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Bucorvus_leadbeateri'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Todiramphus_cinnamominus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Ramphastos_toco'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Jynx_torquilla'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Cariama_cristata'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Falco_naumanni'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Falco_tinnunculus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Melopsittacus_undulatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Forpus_passerinus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Myiopsitta_monachus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Aphrastura_spinicauda'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Tyrannus_tyrannus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sayornis_phoebe'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Lanius_senator'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Pica_pica'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Corvus_monedula'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Remiz_pendulinus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Lophophanes_cristatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Parus_atricapillus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Parus_major'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Periparus_ater'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sylvia_atricapilla'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Phylloscopus_trochilus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Regulus_regulus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Regulus_ignicapillus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Tichodroma_muraria'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Troglodytes_aedon'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sitta_europaea'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Cinclus_cinclus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Turdus_merula'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Turdus_philomelos'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Sturnus_vulgaris'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Toxostoma_curvirostre'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Cinnyris_jugularis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Passer_domesticus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Anthus_pratensis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Motacilla_flava'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Passerculus_sandwichensis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Carduelis_carduelis'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Ornithorhynchus_anatinus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case 'Tachyglossus_aculeatus'
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    case ''
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
    otherwise
      id_CoL = '';
      id_WoRMS = '';
      id_Taxo = '';        
  end

  links = { ...
  ['../species_list.html#', taxon], 'in species list';
  ['../pie_SGJRb.htlm#', taxon], 'DEB over embryo';
  ['../pie_pSGJRb.htlm#', taxon], 'DEB at birth';
  ['../pie_pSGJRb.htlm#', taxon], 'DEB at puberty';
  ['../pie_pSGJRb.htlm#', taxon], 'DEB at ultimate';
  ['http://catalogueoflife.org/annual-checklist/2017/details/species/id/', id_CoL], 'Cat of Life';  
  ['http://taxonomicon.taxonomy.nl/TaxonTree.aspx?id=', id_Taxo], 'Taxonomicon';
  ['http://marinespecies.org/aphia.php?p=taxdetails&id=', id_WoRMS], 'WoRMS';
  ['http://eol.org/pages/', id_EoL], 'Ency of Life';
  ['https://en.wikipedia.org/wiki/', id_Wiki], 'Wikipedia';
  ['http://animaldiversity.org/accounts/', id_ADW], 'ADW'; 
  ['http://genomics.senescence.info/species/entry.php?species=', id_AnAge], 'AnAge';
  ['http://www.fishbase.org/summary/', id_fishbase], 'fishbase'};
  links = links(~cellfun(@isempty, {1, 1, 1, 1, 1, id_CoL, id_Taxo, id_WoRMS, id_EoL, id_Wiki, id_ADW, id_AnAge, id_fishbase}),:);