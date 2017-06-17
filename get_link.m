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
      id_Wiki = 'Bolinopsis_infundibulum';
    case 'Callianira_antarctica'
      id_CoL = '303f7a8417f250f9b9d1cbc77fc060cf';
      id_WoRMS = '265170';
      id_Taxo = '290691';
      id_Wiki = 'Callianira_(ctenophore)';
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
      id_Wiki = 'Beroe_(ctenophore)';
    case 'Beroe_ovata'
      id_CoL = 'c70014071bb5de21dca3ec0d826bb274';
      id_WoRMS = '106362';
      id_Taxo = '167447';        
    case 'Sagitta_hispida'
      id_CoL = '5fa5c1982af0297dfe25875928c2570c';
      id_WoRMS = '105454'; % unaccepted, to Ferosagitta hispida (Conant, 1895)
      id_Taxo = '40644';   % unaccepted, to Sagitta bipunctata    
      id_Wiki = 'Chaetognatha';
    case 'Moniliformis_dubius'
      id_CoL = '2db31682f5ec69386b23ea4212b709b1';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '14700';
      id_Wiki = 'Moniliformis_moniliformis';
    case 'Asplanchna_girodi'
      id_CoL = '7ef4175c71766debbf941dc6e2476c02';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '114748';  
      id_Wiki = 'Rotifera';
    case 'Brachionus_plicatilis'
      id_CoL = 'c1847141382c50836d8cf6c9cea31e71';
      id_WoRMS = '134982';
      id_Taxo = '91556';        
    case 'Aspidiophorus_polystictos'
      id_CoL = '88edfcced5860e504db0c2d25d801715';
      id_WoRMS = '114471';
      id_Taxo = '';  % not present 2017/06/15 
      id_Wiki = 'Gastrotricha';
    case 'Schmidtea_polychroa'
      id_CoL = '032a02867df5f7a953bd3c02edd02523';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15     
    case 'Magellania_fragilis'
      id_CoL = '397256b281a713c08dd827ce925a4418';
      id_WoRMS = '235668';
      id_Taxo = '991609'; % unaccepeted, to Aerothyris fragilis
      id_Wiki = 'Brachiopoda';
    case 'Phoronis_pallida'
      id_CoL = '3d20b39a5cdcd6ae450a423e58efe977';
      id_WoRMS = '128551';
      id_Taxo = '40609'; 
      id_Wiki = 'Phoronidea';
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
      id_Wiki = 'Annelida';
    case 'Lumbricus_terrestris'
      id_CoL = '';   % not present 2017/06/15 
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '15563';        
    case 'Octolasion_cyaneum'
      id_CoL = 'c39d48b8d317b85403b3500a610f0be7';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '140609';        
      id_Wiki = 'Annelida';
    case 'Aporrectodea_longa'
      id_CoL = '6ba7cb1f971e29fa5b0489de565d4109';
      id_WoRMS = ''; % not present 2017/06/15 
      id_Taxo = '';  % not present 2017/06/15        
      id_Wiki = 'Annelida';
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
      id_Wiki = 'Mytilidae';
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
      id_Wiki = 'Sepietta_petersi'; % unaccepted, to Sepiola petersi Steenstrup, 1887
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
      id_Wiki = 'Octopus';
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
      id_Wiki = 'Tardigrada'; 
    case 'Hypsibius_convergens'
      id_CoL = '779e48ba14edf4787cd08b7e7401e63b';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '421894';        
      id_Wiki = 'Tardigrada'; 
    case 'Hypsibius_oberhaeuseri'
      id_CoL = '1bd832ac6d7bb295abbd24520dbf0798';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '104402'; % unaccepted, to Ramazzottius oberhaeuseri       
      id_Wiki = 'Tardigrada'; 
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
      id_Wiki = 'Pycnogonum';
    case 'Smeringurus_mesaensis'
      id_CoL = '5ac22e6a79875de9dd358275269bf959';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '87088';  % only as genus 2017/06/15      
      id_Wiki = 'Vaejovidae';
    case 'Rhizoglyphus_robini'
      id_CoL = 'a08d34f3fc91edcfd634888b64706f28';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '143153'; 
      id_Wiki = 'Rhizoglyphus';
    case 'Aglaoctenus_lagotis'
      id_CoL = '4f7f7da06de383e86a5bfe76f10bb859';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '727868';   
      id_Wiki = 'Aglaoctenus';
    case 'Cyprideis_torosa'
      id_CoL = 'fd7d758262a28756831f7f8614655d73';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '33329';  
      id_Wiki = 'Podocopida';
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
      id_Wiki = 'Bosmina';
    case 'Chydorus_sphaericus'
      id_CoL = 'bf9a53b5d704a17c593c845f6e8d08cb';
      id_WoRMS = '148406';
      id_Taxo = '33122'; 
      id_Wiki = 'Cladocera';
    case 'Pleuroxus_aduncus'
      id_CoL = '4ab9e9fd2808c0e605b8e794b9199627';
      id_WoRMS = '148397';
      id_Taxo = '156250';        
      id_Wiki = 'Cladocera';
    case 'Pleuroxus_striatus'
      id_CoL = '871ff4ce4fa9b1d8376330527902db45'; % present as Pleuroxus_striatoides, but the same?
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15
      id_Wiki = 'Cladocera';
    case 'Ceriodaphnia_pulchella'
      id_CoL = '8c950c5099d7368e2c5d026dc079a5e9';
      id_WoRMS = '148395';
      id_Taxo = '156175';        
      id_Wiki = 'Cladocera';
    case 'Ceriodaphnia_dubia'
      id_CoL = 'b7129a03be4a413d639f0bf4ade8d684';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '156172';        
    case 'Daphnia_cucullata'
      id_CoL = '3eb62cdbb1d096da9cfcabc1b19e18aa';
      id_WoRMS = '148371';
      id_Taxo = '';        
      id_Wiki = 'Daphnia_(subgenus)';
    case 'Daphnia_hyalina'
      id_CoL = '29d9d22b0b26cf7307af8c0faaa8cf06';
      id_WoRMS = '148374';
      id_Taxo = '33101';        
      id_Wiki = 'Daphnia_(subgenus)';
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
      id_Wiki = 'Cladocera';
    case 'Simocephalus_serrulatus'
      id_CoL = 'c80b9c7571c8f66720bdd1978b6df130';
      id_WoRMS = '412852';
      id_Taxo = '156184';        
      id_Wiki = 'Cladocera';
    case 'Diaphanosoma_brachyurum'
      id_CoL = 'dd213856b4a492a6f01afd65e70991d4';
      id_WoRMS = '234063';
      id_Taxo = '33086';        
      id_Wiki = 'Cladocera';
    case 'Leptodora_kindtii'
      id_CoL = 'd8f23f51d85cb363bede2f3632517e87'; % present as Leptodora_kindti
      id_WoRMS = '247980';
      id_Taxo = '33097';        
    case 'Acanthocyclops_robustus'
      id_CoL = 'd63a685097756b1c2cf45229db57cac0';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15    
      id_Wiki = 'Acanthocyclops';
    case 'Cyclops_vicinus'
      id_CoL = '3665f193e29e67b5f91a61c8f72b79e8';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '125392';        
      id_Wiki = 'Cyclops_(genus)';
    case 'Mesocyclops_leukarti'
      id_CoL = 'eb76a8aa998d1b3614cbeef939cbe8a5';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '124982';        
      id_Wiki = 'Mesocyclops';
    case 'Calanus_sinicus'
      id_CoL = '522187c194196c1a2931e0e054be2ebe';
      id_WoRMS = '346214';
      id_Taxo = ''; % not present 2017/06/15       
      id_Wiki = 'Calanus';
    case 'Eurytemora_affinis'
      id_CoL = 'b3cd8223fe63cbb356fab69438d3a23d';
      id_WoRMS = '104872';
      id_Taxo = ''; % not present 2017/06/15          
      id_Wiki = 'Temoridae';
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
      id_Wiki = 'Gammarus';
    case 'Gammarus_pseudolimnaeus'
      id_CoL = '46665c47e08b50e65aa372a80c3e2436';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '';  % not present 2017/06/15    
      id_Wiki = 'Gammarus';
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
      id_Wiki = 'Mysis';
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
      id_Wiki = 'Charybdis_(genus)';
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
      id_Wiki = 'Heptageniidae';
    case 'Rhithrogena_semicolorata'
      id_CoL = '64430dafc52e724cf544be3fdd703f5a';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17355';        
      id_Wiki = 'Heptageniidae';
    case 'Oligoneuriella_rhenana'
      id_CoL = '98265cc9272cbad448432d8f8db5f757';
      id_WoRMS = ''; % not present 2017/06/15
      id_Taxo = '17334';        
      id_Wiki = 'Ephemeroptera';
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
      id_Wiki = 'Chaoborus';
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
      id_Wiki = 'Ichneumonoidea';
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
      id_Wiki = 'Echinus_(sea_urchin)';
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
      id_Wiki = 'Oikopleura';
    case 'Thalia_democratica'
      id_CoL = 'f4ca44e873a0b0c5881b0a1645582cda';
      id_WoRMS = '137279';
      id_Taxo = '959814';   
      id_Wiki = 'Salpidae';
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
      id_Wiki = 'Raja_(genus)';
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
      id_Taxo = '42634';        
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
      id_Wiki = 'Alepocephalus';     
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
      id_Wiki = 'Coryphaenoides';
    case 'Trachyrincus_scabrus'
      id_CoL = 'd00f2ecf91149861613bf860026db2f5';
      id_WoRMS = '126482';
      id_Taxo = '189278';        
      id_Wiki = 'Trachyrincus';
    case 'Gaidropsarus_guttatus'
      id_CoL = 'ee90fb4c4e49bf9664559762da7b707e';
      id_WoRMS = '126455';
      id_Taxo = '174631';        
      id_Wiki = 'Gaidropsarus';
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
      id_Wiki = 'Carapus';
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
      id_Taxo = '189326';  
      id_Wiki = 'Trichiurus';
    case 'Mastacembelus_erythrotaenia'
      id_CoL = '9f4397e88523d3980ca643eb8822e6fc';
      id_WoRMS = ''; % not present 2017/06/16
      id_Taxo = '46876';        
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
      id_Wiki = 'Hirundichthys';
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
      id_Wiki = 'Lutjanus';
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
      id_Wiki = 'Diplodus';
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
      id_Wiki = 'Siganus';
    case 'Scatophagus_argus'
      id_CoL = 'ff1b84d7b315c0069609d5e1b7d2b37c';
      id_WoRMS = '276970';
      id_Taxo = '45387';        
    case 'Priacanthus_macracanthus'
      id_CoL = '464de607d945097ad6b06e525e70a826';
      id_WoRMS = '273765';
      id_Taxo = '45154'; 
      id_Wiki = 'Priacanthus';
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
      id_Wiki = 'Pempheris';
    case 'Pempheris_schwenkii'
      id_CoL = 'c0a9eb122361f992e57b9d586d79a8f7';
      id_WoRMS = '218699';
      id_Taxo = '183415';        
      id_Wiki = 'Pempheris';
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
      id_Wiki = 'Notothenia';
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
      id_Wiki = 'Egernia';
    case 'Liopholis_striata'
      id_CoL = '3b1f6e151cff0f8f6971c525f21a1c11';
      id_Taxo = '1685441';
      id_Wiki = 'Liopholis';
    case 'Liopholis_inornata'
      id_CoL = '080dc164b56f544895192ee52cb97f02';
      id_Taxo = '1685439';        
      id_Wiki = 'Liopholis';
    case 'Amphisbaena_alba'
      id_CoL = 'e9c5fca6f18472b4bdb1059cc9b179d0';
      id_Taxo = '50424';        
    case 'Lacerta_agilis'
      id_CoL = '7e1a059719ca73323daa52f23a19a64d';
      id_Taxo = '642580';        
    case 'Lacerta_strigata'
      id_CoL = '13b6f7649bd9cb39390aa38518fca717';
      id_Taxo = '49578';    
      id_Wiki = 'Lacerta_(genus)';
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
      id_Wiki = 'Camerasaurus';
    case 'Apatosaurus_spec'
      id_CoL = '901ec65eb9b9c783b00e6a2b21cde5d3'; % A. ajax
      id_Taxo = '50887'; % present as genus
      id_Wiki = 'Apatosaurus';
    case 'Mamenchisaurus_spec'
      id_CoL = 'e65e3cac15fd4c7da196864957452e52'; % M. anyuensis
      id_Taxo = '50894'; % present as genus
      id_Wiki = 'Mamenchisaurus';
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
      id_CoL = 'a2d2e28e381809c970138675ba310656';
      id_Taxo = '51310'; % unaccepted, to  Apteryx australis mantelli Bartlett, 1852      
    case 'Dromaius_novaehollandiae'
      id_CoL = 'e211d1636655d7a1b1f48fdb2c584dae';
      id_Taxo = '51279';        
    case 'Struthio_camelus'
      id_CoL = 'e763abecc4e6a356b9764fe1904c045a';
      id_Taxo = '51245';        
    case 'Rhea_americana'
      id_CoL = 'e97ede28aa4346a1972c1fd2e7d24740';
      id_Taxo = '51258';        
    case 'Rhynchotus_rufescens'
      id_CoL = 'f4c7658ba36fc777a545f8cdc47d11f9';
      id_Taxo = '51378';        
    case 'Alectura_lathami'
      id_CoL = '0af00c8374b5551a726a6d761528a5a8';
      id_Taxo = '52879';        
    case 'Tetrastes_bonasia'
      id_CoL = '48797b9cd84c84166eca6c1bc4a3b01f';
      id_Taxo = '52966';        
    case {'Gallus_gallus','Gallus_gallus_IR','Gallus_gallus_WL'}
      id_CoL = 'e9bd1de9ad04b90064cf96a24cf98310';
      id_Taxo = '53136';    
      id_Wiki = 'Gallus_gallus';
    case 'Anas_platyrhynchos'
      id_CoL = 'd5d9d6e502eb4c9f10b094dfdd935e65';
      id_WoRMS = '148791';
      id_Taxo = '52161';        
    case 'Mergus_merganser'
      id_CoL = 'dd005d87ee7a39a731b69942401091df';
      id_WoRMS = '159097';
      id_Taxo = '52280';        
    case 'Mergus_serrator'
      id_CoL = 'cbe66f861f86562456b2d7e1ef5de373';
      id_WoRMS = '159098';
      id_Taxo = '52282';        
    case 'Melanitta_perspicillata'
      id_CoL = 'f9894443879efbdfd2b1b84dddc7b32a';
      id_WoRMS = '159095';
      id_Taxo = '52275';        
    case 'Somateria_mollissima'
      id_CoL = 'e999b4ec3f0ee05bcd43a62b67baaf64';
      id_WoRMS = '137074';
      id_Taxo = '52255';        
    case 'Podilymbus_podiceps'
      id_CoL = 'efd1147e3604cc229f2e7dcafb95ca0b';
      id_WoRMS = '159062';
      id_Taxo = '51455';        
    case 'Phoeniconaias_minor'
      id_CoL = '8b96caa363071f1641f8a492c77d2cb8';
      id_WoRMS = '212710';
      id_Taxo = '169341';        
    case 'Columba_oenas'
      id_CoL = 'ed30f61f67a50dfc7efd082e23ec61b9';
      id_Taxo = '53977';        
    case 'Columba_livia'
      id_CoL = '625498c7f0f49724cd81aae39db4e1e5';
      id_Taxo = '53973';        
    case 'Mesitornis_variegatus'
      id_CoL = 'a990bffed92b9b55d3f6cfb8572597e8';
      id_Taxo = '1122776';        
    case 'Pterocles_alchata'
      id_CoL = '470ed15824f0e16f12532abcfa8feb54';
      id_Taxo = '53935';        
    case 'Apus_apus'
      id_CoL = '9623ca15e5c36c273a9e571b97ba8107';
      id_Taxo = '54867';        
    case 'Aegotheles_cristatus'
      id_CoL = 'e77dc5c18f2a229366e15a70c599332f';
      id_Taxo = '54805';        
    case 'Podargus_strigoides'
      id_CoL = '77210dd21b917f4baf425d753ad78f02';
      id_Taxo = '54798';        
    case 'Cuculus_canorus'
      id_CoL = '01a48abb4f3aba76b904ac4c7a32f20a';
      id_Taxo = '54514';        
    case 'Clamator_glandarius'
      id_CoL = '02135d597ace84d87208d04918b1beba';
      id_Taxo = '54509';        
    case 'Tauraco_erythrolophus'
      id_CoL = '4044ed76e392318b4727c7de43ddb7a5';
      id_Taxo = '54466';        
    case 'Ardeotis_kori'
      id_CoL = '185f3057c97c4f10fd7a1c483282d5a1';
      id_Taxo = '53450';        
    case 'Opisthocomus_hoazin'
      id_CoL = 'ad3bcef887f4c268792c37f0d373faff';
      id_Taxo = '54479';        
    case 'Calidris_ferruginea'
      id_CoL = '9b0c2d95deffed6fa89cdb208c187026';
      id_WoRMS = '159049';
      id_Taxo = '53737';        
    case 'Calidris_alpina'
      id_CoL = '3573e87083ded2fb1ffc96183f7def79';
      id_WoRMS = '159047';
      id_Taxo = '53732';        
    case 'Calidris_bairdii'
      id_CoL = 'b332bce93951f2c8b34f237074c8b5bc';
      id_WoRMS = '159048';
      id_Taxo = '53735';        
    case 'Calidris_minuta'
      id_CoL = '9690a93b47b604e28ac765c2345ba29c';
      id_WoRMS = '212600';
      id_Taxo = '53742';        
    case 'Calidris_minutilla'
      id_CoL = '81a637f1ff6e3f1fda7a976824ba5adc';
      id_WoRMS = '159054';
      id_Taxo = '53743';        
    case 'Calidris_maritima'
      id_CoL = 'a35342e9335b7725fa58bc1da7787203';
      id_WoRMS = '159052';
      id_Taxo = '53739';        
    case 'Philomachus_pugnax'
      id_CoL = '7b48212a290510deccad5344b1d61986';
      id_WoRMS = '159046';
      id_Taxo = '53753';        
    case 'Tringa_flavipes'
      id_CoL = 'dfc3b9462212b04edcb721a3db10791e';
      id_WoRMS = '159030';
      id_Taxo = '53669';        
    case 'Limnodromus_griseus'
      id_CoL = 'e45c6cab6f6609688ad3f1f3fcd1ff3f';
      id_WoRMS = '158955';
      id_Taxo = '53721';        
    case 'Limosa_haemastica'
      id_CoL = '33c1fb3078fbaabe8a5b2112bece7d67';
      id_WoRMS = '159033';
      id_Taxo = '53654';        
    case 'Numenius_phaeopus'
      id_CoL = '19bd674744e8fd0eda79a3b09a47568d';
      id_WoRMS = '159040';
      id_Taxo = '53662';        
    case 'Fratercula_arctica'
      id_CoL = '80c12642c3ab7cc036ee3749463ca606';
      id_WoRMS = '137131';
      id_Taxo = '53907';        
    case 'Ptychoramphus_aleuticus'
      id_CoL = '1b8b9f4a86353758c7ff85c17a850ab4';
      id_WoRMS = '344115';
      id_Taxo = '53917';        
    case 'Aethia_pusilla'
      id_CoL = 'eedd1a360668ef531a40b98d4493618e';
      id_WoRMS = '344016';
      id_Taxo = '53928';        
    case 'Aethia_cristatella'
      id_CoL = '7048c7929886b0410e3501585b00d8a9';
      id_WoRMS = '344015';
      id_Taxo = '53927';        
    case 'Cepphus_grylle'
      id_CoL = 'f56cecae9c9629f9bcc610161d9b483e';
      id_WoRMS = '137130';
      id_Taxo = '53898';        
    case 'Uria_aalge'
      id_CoL = '1f21d6d69cb8c09be9a27485d68bc4d1';
      id_WoRMS = '137133';
      id_Taxo = '53922';        
    case 'Uria_lomvia'
      id_CoL = '4a4b216694d920384c31bd8854e0f1d8';
      id_WoRMS = '137134';
      id_Taxo = '53924';        
    case 'Alle_alle'
      id_CoL = 'd04ac5333679e22045b58982006bcc2d';
      id_WoRMS = '137129';
      id_Taxo = '53890';        
    case 'Pinguinus_impennis'
      id_CoL = 'caf3fab41ba54462fe586a8bcdcdb54b';
      id_WoRMS = '137132';
      id_Taxo = '53912';        
    case 'Alca_torda'
      id_CoL = '7524d7f8f9a7aff80ccb4cbb4d31501b';
      id_WoRMS = '137128';
      id_Taxo = '53888';        
    case 'Chlidonias_leucopterus'
      id_CoL = 'a666e4b62baba1a7edf044f52f7eefd5';
      id_WoRMS = '137136';
      id_Taxo = '93234';        
    case 'Sterna_paradisaea'
      id_CoL = 'b20a894252b52f4c191ef168d1a7aaad';
      id_WoRMS = '137165';
      id_Taxo = '53874';        
    case 'Sterna_hirundo'
      id_CoL = 'c83b9db3064841202e4e59eb103b5847';
      id_WoRMS = '137162';
      id_Taxo = '53869';        
    case 'Thalasseus_sandvicensis'
      id_CoL = 'fd712ba9ea195d3cc049c283c6ba3caa';
      id_WoRMS = '413044'; % unaccepted, to Sterna sandvicensis Latham, 1787
      id_Taxo = '610055';        
    case 'Chroicocephalus_ridibundus'
      id_CoL = '619c28ecb10081c76f0926710fdc982a';
      id_WoRMS = '465358';
      id_Taxo = '53823'; % present as Larus ridibundus Linnaeus, 1766       
    case 'Larus_argentatus'
      id_CoL = '6d0b384ca6c3c1ec2eb97706da11eae8';
      id_WoRMS = '137138';
      id_Taxo = '53781';        
    case 'Rissa_tridactyla'
      id_CoL = 'bab5d031b01e7f12e85e1bdcf9726828';
      id_WoRMS = '137156';
      id_Taxo = '53831';        
    case 'Rissa_brevirostris'
      id_CoL = 'bab5d031b01e7f12e85e1bdcf9726828';
      id_WoRMS = '343923';
      id_Taxo = '53830';        
    case 'Stercorarius_longicaudus'
      id_CoL = '7463b0f804c2d9ab6acd1e21194c690a';
      id_WoRMS = '137171';
      id_Taxo = '53772';        
    case 'Stercorarius_skua'
      id_CoL = '0a044c4812738721275215f803d29c25';
      id_WoRMS = '137174';
      id_Taxo = '53775';        
    case 'Stercorarius_maccormicki'
      id_CoL = '15e1f2d9818ba3046dff1e228d1587b6';
      id_WoRMS = '422607';
      id_Taxo = '947074';        
    case 'Himantopus_mexicanus'
      id_CoL = '1f5847657f78653cd8be6e4f828a1c0d';
      id_WoRMS = '159131';
      id_Taxo = '1122806'; % present as Himantopus himantopus mexicanus (Statius Müller, 1776)        
    case 'Haematopus_moquini'
      id_CoL = '35a448e347c4bb7b28695e9fcb3c744b';
      id_WoRMS = '212720';
      id_Taxo = '70245';        
    case 'Vanellus_armatus'
      id_CoL = '6034cc9bf59a797ca53b2e50c0241a25';
      id_WoRMS = ''; % not present 2017/06/17
      id_Taxo = '70262';        
    case 'Vanellus_coronatus'
      id_CoL = '6b2bf7e07f766050de717c4a411774c2';
      id_WoRMS = '366837';
      id_Taxo = '70269';        
    case 'Charadrius_pecuarius'
      id_CoL = '7649077c28e6d6a042e8f6a197b55be5';
      id_WoRMS = '366846';
      id_Taxo = '53603';        
    case 'Pluvialis_dominica'
      id_CoL = 'aa24423d09987a0d571d2e28180b1960';
      id_WoRMS = '159136';
      id_Taxo = '53625';        
    case 'Gallinula_chloropus'
      id_CoL = '8c1a4e2718730f2ad6171f96fb6c6fa3';
      id_Taxo = '53395';        
    case 'Grus_canadensis'
      id_CoL = 'b5fb32b609572d52ede7b7748943dc51';
      id_Taxo = '53265';        
    case 'Grus_japonensis'
      id_CoL = '6fde6b82ab0ac42b5d8bbd69e9433010';
      id_Taxo = '53270';        
    case 'Grus_monacha'
      id_CoL = '0e419445ddc878e375c38fa9d9515969';
      id_Taxo = '53272';        
    case 'Grus_americana'
      id_CoL = '1a22f8fb4ebe8e382b8685b187aafa18';
      id_Taxo = '53263';        
    case 'Grus_antigone'
      id_CoL = '2f827f37dafa3abedcb078144d0cd10f';
      id_Taxo = '53264';        
    case 'Grus_rubicunda'
      id_CoL = '91e043fbcde2082b7347fce518462e0e';
      id_Taxo = '83116';        
    case 'Grus_vipio'
      id_CoL = '28717f30fbb5ef2ba20f85bb587a54d5';
      id_Taxo = '53275';        
    case 'Grus_virgo'
      id_CoL = '987b70eac098e65fbf96b62c25c06f86';  % unaccpeted, to Anthropoides virgo (Linnaeus, 1758)       
      id_Taxo = '167356'; % unaccpeted, to Anthropoides virgo (Linnaeus, 1758)       
    case 'Grus_leucogeranus'
      id_CoL = '0ae95f5329e0e7fe075c002169e60746';
      id_Taxo = '53271';        
    case 'Phaethon_lepturus'
      id_CoL = '9c0e9cb143508bda222bd0adec5383db';
      id_WoRMS = '212594';
      id_Taxo = '51638';        
    case 'Phaethon_rubricauda'
      id_CoL = 'a2644bbf86d31681747084a3cf98311e';
      id_WoRMS = '212595';
      id_Taxo = '51639';        
    case 'Rhynochetos_jubatus'
      id_CoL = '7a9792a8c9f4eb22d6d286d64456516c';
      id_Taxo = '53431';        
    case 'Gavia_stellata'
      id_CoL = '82657d3390f0a0d5bc1349a48394f8d0';
      id_WoRMS = '137188';
      id_Taxo = '51433';        
    case 'Gavia_immer'
      id_CoL = '30f86b5fc760b8d8023db2b2c4e7a20f';
      id_WoRMS = '137187';
      id_Taxo = '51431';        
    case 'Pygoscelis_adeliae'
      id_CoL = '1b57a7bf98db087e0a1a8d9757cbf688';
      id_WoRMS = '225757';
      id_Taxo = '51413';        
    case 'Fulmarus_glacialis'
      id_CoL = 'a6e247adc3755e7607c4862ae639f9c3';
      id_WoRMS = '137195';
      id_Taxo = '51494';        
    case 'Diomedea_exulans'
      id_CoL = '9cf46c5413e6bef61c029d6cef69ff57';
      id_WoRMS = '212583';
      id_Taxo = '167927';        
    case 'Thalassarche_melanophrys'
      id_CoL = '9fad68b95fb3aebcce48f0d9fae66787';
      id_WoRMS = '225756'; % unaccepted, to Thalassarche melanophris (Temminck, 1828)
      id_Taxo = '959767';        
    case 'Ciconia_ciconia'
      id_CoL = '1f8d320bdebfb912da9ef2433da92a85';
      id_Taxo = '51849';        
    case 'Phalacrocorax_auritus'
      id_CoL = '0db1d944fd592b2e7d18ed5aec730aca';
      id_WoRMS = '159059';
      id_Taxo = '51681';        
    case 'Sula_bassana'
      id_CoL = '4dc3e535a6a6253e4adceb72157431fe'; % unaccepted, to Morus bassanus (Linnaeus, 1758)
      id_WoRMS = '137180';  % unaccepted, to Morus bassanus (Linnaeus, 1758)
      id_Taxo = '51654';    % unaccepted, to Morus bassanus (Linnaeus, 1758)       
    case 'Sula_nebouxii'
      id_CoL = 'ea3be33231335317a364427a5bcc38f3';
      id_WoRMS = '343959';
      id_Taxo = '51663';        
    case 'Balaeniceps_rex'
      id_CoL = '16bde12b82a99c26cf61f1229cd3f41a';
      id_Taxo = '51842';        
    case 'Pelecanus_onocrotalus'
      id_CoL = '93042a2bf3d8f48f27fe9b410ac0d62a';
      id_WoRMS = '137176';
      id_Taxo = '51649';        
    case 'Aquila_chrysaetos'
      id_CoL = '5b68758c108a10b7c6be9f990d3ad0a3';
      id_Taxo = '52605';        
    case 'Circus_aeruginosus'
      id_CoL = '86e884dce0543b20ad3f399fc9ce5198';
      id_Taxo = '52508';        
    case 'Vultur_gryphus'
      id_CoL = 'e012d92f1ab45b81706d72e36c5512e0';
      id_Taxo = '52316';        
    case 'Tyto_alba'
      id_CoL = '6fcd23e9a266d2ec77f69e02b75fbead';
      id_Taxo = '54626';        
    case 'Bubo_scandiacus'
      id_CoL = '1347e0b2597b16465cd5674f305fafd4';
      id_Taxo = '54708'; % present as Nyctea scandiaca (C. Linnaeus, 1758)       
    case 'Bubo_virginianus'
      id_CoL = '657c70b3ce45f54079dabb6949fb5ac2';
      id_Taxo = '54659';        
    case 'Urocolius_macrourus'
      id_CoL = 'e563e083718e4eb3a35fbcbde6fcaadd';
      id_Taxo = '55152';        
    case 'Leptosomus_discolor'
      id_CoL = 'fb7bb155923268f8cec398b5e34a27b5';
      id_Taxo = '55345';        
    case 'Euptilotis_neoxenus'
      id_CoL = '9e2e1359f85b411a7a1c34b7aa1151b5';
      id_Taxo = '55161';        
    case 'Bucorvus_leadbeateri'
      id_CoL = 'c37431d15839c9b467569ad3045869be';
      id_Taxo = '105636';        
    case 'Todiramphus_cinnamominus'
      id_CoL = '1c50b024147aadb63f1f128e5afa7e79';
      id_Taxo = '1125446';        
    case 'Ramphastos_toco'
      id_CoL = '5cf6207f05c77e03bcbcd85733db072f';
      id_Taxo = '55573';        
    case 'Jynx_torquilla'
      id_CoL = '3a38254e7d541ce65f7befae820a116a';
      id_Taxo = '55583';        
    case 'Cariama_cristata'
      id_CoL = '51010aa3e16c9d55c093b195102bac97';
      id_Taxo = '53437';        
    case 'Falco_naumanni'
      id_CoL = 'bc99d387d3a7b447bf1d951ef8111cc2';
      id_Taxo = '52830';        
    case 'Falco_tinnunculus'
      id_CoL = 'f30a471764fb219cde0a6bdaed72dca7';
      id_Taxo = '52853';        
    case 'Melopsittacus_undulatus'
      id_CoL = 'f683faf1a057f5da3a1c30c0bbaf51fd';
      id_Taxo = '54299';        
    case 'Forpus_passerinus'
      id_CoL = '9dde78344c3ce809f5af4d35947c6ae0';
      id_Taxo = '54427';        
    case 'Myiopsitta_monachus'
      id_CoL = '66379bf2092e6d5ed3e6728d671bc89f';
      id_Taxo = '54433';        
    case 'Aphrastura_spinicauda'
      id_CoL = 'fc5861eec01a70a052c61fd549cbe59c';
      id_Taxo = '74811';        
    case 'Tyrannus_tyrannus'
      id_CoL = 'e2f3ff2fc877b9322dbd4fbe6a87f5f7';
      id_Taxo = '56162';        
    case 'Sayornis_phoebe'
      id_CoL = 'a15591a5779bfc04754d9082dbfc27dd';
      id_Taxo = '56141';        
    case 'Lanius_senator'
      id_CoL = '2f89fd5f925b02ec2152336e3e270879';
      id_Taxo = '56645';        
    case 'Pica_pica'
      id_CoL = '15edda20e5f20f4e97c324d80eb1cf6f';
      id_Taxo = '59494';        
    case 'Corvus_monedula'
      id_CoL = '8b1d7741c6b8ad881d4f28e0bbe0bdeb';
      id_Taxo = '59548';        
    case 'Remiz_pendulinus'
      id_CoL = '3970051da664fb71a70190918d8739e8';
      id_Taxo = '57690';        
    case 'Lophophanes_cristatus'
      id_CoL = 'cd1512991114f0bcfd9c50282ed817d7';
      id_Taxo = '57703'; % present as Parus cristatus Linnaeus, 1758     
    case 'Parus_atricapillus'
      id_CoL = 'aed95c6ec867d5d04bbab05d19687d73';
      id_Taxo = '57697';        
    case 'Parus_major'
      id_CoL = '9a3033c7cf62b8a01f58d9a946e06126';
      id_Taxo = '57713';        
    case 'Periparus_ater'
      id_CoL = 'a1536cbd36af848c4cfb9234fad2e1e0';
      id_Taxo = '57696'; % present as Parus ater Linnaeus, 1758       
    case 'Sylvia_atricapilla'
      id_CoL = '4134d00c993b71067bfeb807a0d09c4b';
      id_Taxo = '57368';        
    case 'Phylloscopus_trochilus'
      id_CoL = '9f7d79f2f0a042ef0e8368239dfb1cb3';
      id_Taxo = '57343';        
    case 'Regulus_regulus'
      id_CoL = '39de64eea659b04cfd67c5d4ff5633f4';
      id_Taxo = '57355';        
    case 'Regulus_ignicapillus'
      id_CoL = '8480c26fe2dde898a777686976e2e1e4';
      id_Taxo = '1126234'; % unaccepted, to Regulus ignicapilla (Temminck, 1820)       
    case 'Tichodroma_muraria'
      id_CoL = '1c8d1f126dda2f5330c60f85fcfb30c4';
      id_Taxo = '57768';        
    case 'Troglodytes_aedon'
      id_CoL = '844d88011fccf9fc3ebd08155e87483b';
      id_Taxo = '56758';        
    case 'Sitta_europaea'
      id_CoL = '9ba4a95ae5651cb91dbeca2e404f662d';
      id_Taxo = '57744';        
    case 'Cinclus_cinclus'
      id_CoL = 'fcb3f9f786fe924fe49d1c502504a864';
      id_Taxo = '56716';        
    case 'Turdus_merula'
      id_CoL = '8539f68b2f729827c29dc81a2b30763a';
      id_Taxo = '57002';        
    case 'Turdus_philomelos'
      id_CoL = '9015bb30c0dcb8d6b26e8fd46c70d8ac';
      id_Taxo = '57011';        
    case 'Sturnus_vulgaris'
      id_CoL = 'cbb6ad24ade1b086f9f6ad89fe92ac3d';
      id_Taxo = '59258';        
    case 'Toxostoma_curvirostre'
      id_CoL = '004ebe47b553114eda7f8ccc707f1348';
      id_Taxo = '83018';        
    case 'Cinnyris_jugularis'
      id_CoL = 'd7ff4b36e31373ca9a0d3b401e370436';
      id_Taxo = '1126557';        
    case 'Passer_domesticus'
      id_CoL = '9cd9581803902beb26aee9ddcc6e4575';
      id_Taxo = '59109';        
    case 'Anthus_pratensis'
      id_CoL = 'eb78a0bc492c93711d4c1ca8426d71d9';
      id_Taxo = '56453';        
    case 'Motacilla_flava'
      id_CoL = 'eca91fcd14896fe760fc1c8eef9774bf';
      id_Taxo = '56477';        
    case 'Passerculus_sandwichensis'
      id_CoL = 'a40e57e0efe04426fca93156aee1edf4';
      id_Taxo = '58100';        
    case 'Carduelis_carduelis'
      id_CoL = '8388549b54689013a002e39459658043';
      id_Taxo = '58514';        
    case 'Ornithorhynchus_anatinus'
      id_CoL = '3bc186304963c8d2e15564c630a7021e';
      id_Taxo = '59646';        
    case 'Tachyglossus_aculeatus'
      id_CoL = 'db1edc1588907fc51323d4829f25036a';
      id_Taxo = '59632';        
    case 'Caluromys_philander'
      id_CoL = '25a051d8684830574aa21163f5c0217c';
      id_Taxo = '59811';        
    case 'Didelphis_virginiana'
      id_CoL = '5e9ae59ab0006f520ea05758db530df8';
      id_Taxo = '59824';        
    case 'Sarcophilus_harrisii'
      id_CoL = '5ce2db014e2fa02fef465ca6c68f66b3';
      id_Taxo = '60018';        
    case 'Dasyurus_viverrinus'
      id_CoL = '8ff9da85871d400b6a4cc78e9c208645';
      id_Taxo = '60002';        
    case 'Perameles_nasuta'
      id_CoL = '42469df66a2b4861d91637f73b420616';
      id_Taxo = '60062';        
    case 'Phascolarctos_cinereus'
      id_CoL = '4d7e8acef0e44fe001cc83caff8712ae';
      id_Taxo = '60425';        
    case 'Tarsipes_rostratus'
      id_CoL = '6aca15b06107dd17949dd6cfdb40d63b';
      id_Taxo = '60483';        
    case 'Lagostrophus_fasciatus'
      id_CoL = '37ca2270c6d654da367c38945787f398';
      id_Taxo = '60319';        
    case 'Lagorchestes_conspicillatus'
      id_CoL = '68f725633c4212acffbfa1a59952cdd4';
      id_Taxo = '60310';        
    case 'Lagorchestes_hirsutus'
      id_CoL = 'e886ae8ef2084c39d3da70956b52cf31';
      id_Taxo = '60313';        
    case 'Macropus_agilis'
      id_CoL = '836cb084ad966ce1b076f68c8ee96cde';
      id_Taxo = '168613';        
    case 'Macropus_antilopinus'
      id_CoL = 'a3ad146035807271d4c927c78c191a41';
      id_Taxo = '168614';        
    case 'Macropus_eugenii'
      id_CoL = '3122737d84947ba114ffb6f396b21872';
      id_Taxo = '168617';        
    case 'Macropus_fuliginosus'
      id_CoL = 'c71786cbfbff0f76624c73efcca4cdf1';
      id_Taxo = '168618';        
    case 'Macropus_giganteus'
      id_CoL = '9e81e89d48f74c749a1895f37ed33f1b';
      id_Taxo = '168619';        
    case 'Macropus_parma'
      id_CoL = '562a352c8d1a274b7d6167186f2afc49';
      id_Taxo = '168624';        
    case 'Macropus_rufogriseus'
      id_CoL = '6adcb8c69536b16f12dbd411354abec2';
      id_Taxo = '168627';        
    case 'Macropus_rufus'
      id_CoL = '3029b1dda9dc6bbc86de28d511e30b9c';
      id_Taxo = '168628';        
    case 'Onychogalea_fraenata'
      id_CoL = '38206e3877fe578667a6fa6a3996e930';
      id_Taxo = '60360';        
    case 'Petrogale_xanthopus'
      id_CoL = 'd82664b4636348f01da6058c4ab2aa04';
      id_Taxo = '60376';        
    case 'Setonix_brachyurus'
      id_CoL = '5566abe065e293ca9524aa2d42679bbb';
      id_Taxo = '60383';        
    case 'Wallabia_bicolor'
      id_CoL = '933f2699e0a7dd8d84cefe693500fc89';
      id_Taxo = '60392';        
    case 'Myrmecophaga_tridactyla'
      id_CoL = '99e9905aadb48ff76d1717ea7020ecb7';
      id_Taxo = '60511';        
    case 'Dasypus_novemcinctus'
      id_CoL = 'f4765b154fabeda6821bb372a27914fa';
      id_Taxo = '60596';        
    case 'Orycteropus_afer'
      id_CoL = 'fa01640674c52e1bc9664c729beebce7';
      id_Taxo = '69227';        
    case 'Macroscelides_proboscideus'
      id_CoL = 'a7c9d1f954a2b7ad2ab9a93e86028ced';
      id_Taxo = '61602';        
    case 'Hemicentetes_semispinosus'
      id_CoL = '2a69b74156efdf595db62090e21e94f5';
      id_Taxo = '60681';        
    case 'Loxodonta_africana'
      id_CoL = '7b498777d8b86d615d26fb2555362a5d';
      id_Taxo = '69361';        
    case 'Elephas_maximus'
      id_CoL = '6fb47237753f0901b5bb779c6e9e1369';
      id_Taxo = '69348';        
    case 'Trichechus_inunguis'
      id_CoL = '42e827c36ce872e11d6f6b1db7aee2fa';
      id_Taxo = '69439';        
    case 'Procavia_capensis'
      id_CoL = '2385d7456a495dac2061e5db25291a9a';
      id_Taxo = '69207';        
    case 'Sorex_araneus'
      id_CoL = '246f61356ae2711049eb21ec5abafa02';
      id_Taxo = '169834';        
    case 'Talpa_europaea'
      id_CoL = '3f6d0f42542751148164e4e7a2a67132';
      id_Taxo = '61343';        
    case 'Talpa_occidentalis'
      id_CoL = '792cc7348dec4c6b13c672504d67fbfc';
      id_Taxo = '61356';        
    case 'Erinaceus_europaeus'
      id_CoL = 'cdc488ce6cf0ecb5a02221ef40111c12';
      id_Taxo = '60805';        
    case 'Camelus_dromedarius'
      id_CoL = '2ce3845d28d43f30229bf4bcad752a19';
      id_Taxo = '67767';        
    case 'Sus_scrofa'
      id_CoL = '7f9608b34955e65ca451e980dec66dba';
      id_Taxo = '67678';        
    case 'Monodon_monoceros'
      id_CoL = 'ac12a283ac3c3ecb7c86d02da8dfaacc';
      id_WoRMS = '137116';
      id_Taxo = '68813';        
    case 'Delphinapterus_leucas'
      id_CoL = 'd9b93553f1483a53529684b92f3e0872';
      id_WoRMS = '137115';
      id_Taxo = '68811';        
    case 'Phocoena_phocoena'
      id_CoL = '5a744a2d5381acb09097283fddd6095a';
      id_WoRMS = '137117';
      id_Taxo = '68799';        
    case 'Delphinus_delphis'
      id_CoL = '53f82736e0e55a75583156a10dc0770e';
      id_WoRMS = '137094';
      id_Taxo = '68711';        
    case 'Tursiops_truncatus'
      id_CoL = '5a97cc1e1ac71d45d276e12d8cdfd97d';
      id_WoRMS = '137111';
      id_Taxo = '68750';        
    case 'Pseudorca_crassidens'
      id_CoL = '4d6423dbe228ecfca77db98f22b38979';
      id_WoRMS = '137104';
      id_Taxo = '68779';        
    case 'Orcinus_orca'
      id_CoL = '0d0c95b9ba62095a56695f520e3a09ce';
      id_WoRMS = '137102';
      id_Taxo = '68777';        
    case 'Pontoporia_blainvillei'
      id_CoL = '09ab20bd544602a13231f4895df42ae3';
      id_WoRMS = '254964';
      id_Taxo = '68677';        
    case 'Physeter_macrocephalus'
      id_CoL = 'b3ea740b176c587935272fe4f127db73';
      id_WoRMS = '137119';
      id_Taxo = '68820'; % unaccepted, to Physeter catodon Linnaeus, 1758       
    case 'Hyperoodon_ampullatus'
      id_CoL = '1f318418ad1c5ff2abf8d3376f196f45';
      id_WoRMS = '343899';
      id_Taxo = '68827';        
    case 'Balaenoptera_acutorostrata'
      id_CoL = '03989edf0baedd8ab5478fca2ad3b410';
      id_WoRMS = '137087';
      id_Taxo = '68885';        
    case 'Balaenoptera_musculus'
      id_CoL = '64d8253f41d376fdd1f902527ed187c7';
      id_WoRMS = '137090';
      id_Taxo = '68889';        
    case 'Eschrichtius_robustus'
      id_CoL = 'b4385cf8dc677811a74fa6ae3cb43adc';
      id_WoRMS = '137112';
      id_Taxo = '68881';        
    case 'Eubalaena_glacialis'
      id_CoL = 'e45c4cf3665144ef83bb225e971a91e6';
      id_WoRMS = '159023';
      id_Taxo = '68901'; % unaccpeted, to Balaena glacialis Müller, 1776       
    case 'Balaena_mysticetus'
      id_CoL = '3ea1bf0273d2013ad96eb6afa9ceb890';
      id_WoRMS = '137086';
      id_Taxo = '68905';        
    case 'Hippopotamus_amphibius'
      id_CoL = 'd122689ccde0015d1426a4f7af9fa1be';
      id_Taxo = '67738';        
    case 'Giraffa_camelopardalis'
      id_CoL = '36ea034537a75e8ac153b4089c6d5646';
      id_Taxo = '68119';        
    case 'Odocoileus_virginianus'
      id_CoL = '49c19661f2a48ff49d60d571f9f827ca';
      id_Taxo = '68077';        
    case 'Cervus_canadensis'
      id_CoL = 'd116839109ff1e816c69b6ab69deb181';
      id_Taxo = '67943'; % unaccepeted, to Cervus elaphus canadensis Erxleben, 1777        
    case 'Rangifer_tarandus'
      id_CoL = '26f5c11255f895a632fd2c2df42e0f60';
      id_Taxo = '68031';        
    case 'Alces_alces'
      id_CoL = 'Alces_alces';
      id_Taxo = '68020';        
    case 'Aepyceros_melampus'
      id_CoL = '0747c465edaff4d5301bd9f9baab8e52';
      id_Taxo = '68440';        
    case {'Bos_primigenius_Angus','Bos_primigenius_Holstein','Bos_primigenius_Brahman'}
      id_CoL = '40e81482006c210a43ef64609163278e';
      id_Taxo = '167484'; % unaccpeted, to Bos taurus primigenius Bojanus, 1827        
      id_Wiki = 'Bos_primigenius';
    case 'Rupicapra_rupicapra'
      id_CoL = 'd25ccfd780ea763f039935faa9b1f3c7';
      id_Taxo = '68532';        
    case 'Ovibos_moschatus'
      id_CoL = 'e4475739e4b72bc21e5596c1e24de11e';
      id_Taxo = '68543';        
    case 'Pipistrellus_pipistrellus'
      id_CoL = 'cb943ad6e446a67c750a5ad39aa8e911';
      id_Taxo = '169449';        
    case 'Desmodus_rotundus'
      id_CoL = '5ed68b3442894a2a01c67ec56d5bc32a';
      id_Taxo = '64537';        
    case 'Carollia_perspicillata'
      id_CoL = 'b3658b2f62ac063825c67f88f1b3db18';
      id_Taxo = '64417';        
    case 'Manis_crassicaudata'
      id_CoL = '736a2ea04e95eb28f95226cc77b01c98';
      id_Taxo = '168633';        
    case 'Crocuta_crocuta'
      id_CoL = '93b93fda51bb5cdc6f82fe48dadab8b6';
      id_Taxo = '67062';        
    case 'Panthera_leo'
      id_CoL = 'c67c449dc0cc8bf14732d7fabf8f2b10';
      id_Taxo = '67265';        
    case 'Vulpes_lagopus'
      id_CoL = '74f649c50206103b78005228c898e177';
      id_WoRMS = '404130';
      id_Taxo = '112284';        
    case 'Vulpes_vulpes'
      id_CoL = 'f76554e91aa357dd527f70ed534fa52c';
      id_Taxo = '66456';        
    case 'Canis_lupus'
      id_CoL = 'bcd6035778291a7feaad52cb7ac167cb';
      id_Taxo = '66415';        
    case 'Meles_meles'
      id_CoL = '423f1dbd6d3e388a3382399597913189';
      id_Taxo = '66751';        
    case 'Enhydra_lutris'
      id_CoL = 'f16ca52d25de7fb367832b86dac2e970';
      id_WoRMS = '242598';
      id_Taxo = '66804';        
    case 'Lutra_lutra'
      id_CoL = 'bb5ed0ac46e6bd2037497c639615f07e';
      id_WoRMS = '137076';
      id_Taxo = '66811';        
    case 'Ursus_arctos'
      id_CoL = '3620a6afc683c9cb9e66e3bc9d143133';
      id_Taxo = '170192';        
    case 'Ursus_maritimus'
      id_CoL = 'ecf9a73302aa9be16e68c89fb524feb8';
      id_WoRMS = '137085';
      id_Taxo = '170194';        
    case 'Ailuropoda_melanoleuca'
      id_CoL = 'e2e3653c631047a2e41328c4dc46151e';
      id_Taxo = '66575';        
    case 'Callorhinus_ursinus'
      id_CoL = '4a75190e7f56b556cca2e56212dc703f';
      id_WoRMS = '254997';
      id_Taxo = '67400';        
    case 'Zalophus_californianus'
      id_CoL = 'd91b293e80e050a2fb51c2a464d52fc3';
      id_WoRMS = '255003';
      id_Taxo = '67414';        
    case 'Arctocephalus_australis'
      id_CoL = '5199b20a3dd0d2c55fd089253d5c1e08';
      id_WoRMS = '231435';
      id_Taxo = '67382';        
    case 'Otaria_flavescens'
      id_CoL = 'f2a4b03712694cd124d8fd6b81c0da0e';
      id_WoRMS = '231425';
      id_Taxo = '67409';        
    case 'Phoca_vitulina'
      id_CoL = 'ec87dba768bbab3b0900ff52a327031d';
      id_WoRMS = '137084';
      id_Taxo = '67459';        
    case 'Pusa_hispida'
      id_CoL = 'ce85c9680b8cfb790125278785a9fe70';
      id_WoRMS = '159021';
      id_Taxo = '67467';        
    case 'Halichoerus_grypus'
      id_CoL = '571ff3eefa181344bc8dd6e8a54886ce';
      id_WoRMS = '137080';
      id_Taxo = '67432';        
    case 'Pagophilus_groenlandicus'
      id_CoL = 'ed5280adb77539a0b58955aa822a70e7';
      id_WoRMS = '159019';
      id_Taxo = '67439';        
    case 'Erignathus_barbatus'
      id_CoL = '52717fb428839ec4ea46640eaad6ac88';
      id_WoRMS = '137079';
      id_Taxo = '67428';        
    case 'Cystophora_cristata'
      id_CoL = 'a83dce734f5caa4b3ec5cf33b7263b2d';
      id_WoRMS = '137078';
      id_Taxo = '67494';        
    case 'Mirounga_leonina'
      id_CoL = '7a1805d7e2224550b70452e4ab73e14a';
      id_WoRMS = '231413';
      id_Taxo = '67497';        
    case 'Odobenus_rosmarus_rosmarus'
      id_CoL = 'e0b6f3f450ac4d0393778f97dbccdb75';
      id_WoRMS = '255010';
      id_Taxo = '67371';        
    case 'Equus_quagga'
      id_CoL = 'a544b4b97773df703818fb547a3c05bc';
      id_Taxo = '168056';        
    case 'Tapirus_terrestris'
      id_CoL = 'b887fe306ff897fd7ced2a4199ab2c30';
      id_Taxo = '69106';        
    case 'Rhinoceros_unicornis'
      id_CoL = '2a40e3919813c0f16e7083e4301d72bb';
      id_Taxo = '69154';        
    case 'Dicerorhinus_sumatrensis'
      id_CoL = '43f507935a136e2a4c6221db63021549';
      id_Taxo = '69137';        
    case 'Ceratotherium_simum'
      id_CoL = '6179a66ee04b226c191579679d6afeed';
      id_Taxo = '69123';        
    case 'Castor_fiber'
      id_CoL = '3b8681fe6477ed5a3762fcdef4d00eb2';
      id_Taxo = '62130';        
    case 'Heterocephalus_glaber'
      id_CoL = '578ce28e305022faa88b77f2b880502f';
      id_Taxo = '63627';        
    case 'Hystrix_africaeaustralis'
      id_CoL = '2acff5dbbbdae886a56163692f0c86bb';
      id_Taxo = '63383';        
    case 'Cavia_tschudii'
      id_CoL = 'f83a21896fe575a2978cfd1222434dca';
      id_Taxo = '89491';        
    case 'Hydrochoerus_hydrochaeris'
      id_CoL = 'cdece5c9f966826ad8a4f0b6b1c70d4c';
      id_Taxo = '647819';        
    case 'Chinchilla_lanigera'
      id_CoL = '4cebac0788bb127166d0646c9ab23a33';
      id_Taxo = '63498';        
    case 'Microtus_arvalis'
      id_CoL = 'c316d43b9cbe48bea99f1d1a1f0c3f3d';
      id_Taxo = '62673';        
    case 'Microtus_cabrerae'
      id_CoL = 'f79ac11999508ad757439910090b87b0';
      id_Taxo = '62682';        
    case 'Arvicola_amphibius'
      id_CoL = '2e7ace9ed0522b2ef99288425947efc8';
      id_Taxo = '62634'; % unaccepted, to Arvicola terrestris (C. Linnaeus, 1758)       
    case 'Mus_musculus'
      id_CoL = '8fb9683c27c3f939a62710d716994ad3';
      id_Taxo = '63058';        
    case 'Rattus_norvegicus'
      id_CoL = '58d474ec035208b2194df25dde8f9259';
      id_Taxo = '63135';        
    case 'Lemmus_trimucronatus'
      id_CoL = '6d229d483afce29dae4bee95e6d4cca0';
      id_Taxo = '62591'; % unaccepted, to Lemmus sibiricus (Kerr, 1792)        
    case 'Glis_glis'
      id_CoL = 'a35eaad2acaaf584762b9843f35c3dc5';
      id_Taxo = '168233';        
    case 'Marmota_flaviventris'
      id_CoL = '5032fb08abb378e862f86ede07e0bd88';
      id_Taxo = '61896';        
    case 'Oryctolagus_cuniculus'
      id_CoL = '0488cb00ad3e3545c4c28f8feaf747e0';
      id_Taxo = '61547';        
    case 'Lepus_europaeus'
      id_CoL = '2c10e1e11456722cf2f9741fec368a71';
      id_Taxo = '61511';        
    case 'Tupaia_glis'
      id_CoL = '597342aa9ef1ce5b5f9208b80f34e2ec';
      id_Taxo = '61384';        
    case 'Galeopterus_variegatus'
      id_CoL = '4dcbb7c6e643932361541981ae29374b';
      id_Taxo = '1003254';        
    case 'Daubentonia_madagascariensis'
      id_CoL = '429cae10b932f86ee7eed6bb5e0f5c07';
      id_Taxo = '65533';        
    case 'Propithecus_diadema'
      id_CoL = 'b47ac2b3bb8803cc4e9873df0daf620e';
      id_Taxo = '65520';        
    case 'Microcebus_murinus'
      id_CoL = 'fed2451960a842ce940ad5d48d81d81c';
      id_Taxo = '65426';        
    case 'Lepilemur_mustelinus'
      id_CoL = 'e8bfdcc70cea2d77b9b54a143392afc8';
      id_Taxo = '65477';        
    case 'Varecia_variegata'
      id_CoL = 'c8883cad4f1b3301686bf6ad91663991';
      id_Taxo = '65502';        
    case 'Nycticebus_coucang'
      id_CoL = '3cbe6f36284dc50c72e4dd60e01eade9';
      id_Taxo = '65545';        
    case 'Loris_tardigradus'
      id_CoL = 'ef762a80ccc68823da1b199ae0301698';
      id_Taxo = '65539';        
    case 'Galago_senegalensis'
      id_CoL = '189e447f4b853cd7858295feb0c3f7b2';
      id_Taxo = '65569';        
    case 'Tarsius_tarsier'
      id_CoL = '363ad8f84b1e80546fe32ad936b16e48';
      id_Taxo = '1003327';        
    case 'Callithrix_pygmaea'
      id_CoL = 'd19f292374779e32b7ebc28a2c57d829';
      id_Taxo = '167532';        
    case 'Callithrix_jacchus'
      id_CoL = '62c40d93ae8fa0246b8a98d2e750ecd6';
      id_Taxo = '65645';        
    case 'Leontopithecus_rosalia'
      id_CoL = '34fc90bc0247a67e5691c7c947624599';
      id_Taxo = '65681';        
    case 'Aotus_trivirgatus'
      id_CoL = '1dd3fb0f05b62d171f7075d02a6f0478';
      id_Taxo = '65786';        
    case 'Pithecia_pithecia'
      id_CoL = 'ce9ff31788b98d22457a487c405ef871';
      id_Taxo = '65836';        
    case 'Cebus_capucinus'
      id_CoL = '0b4728552da36e92bba7b084a347127a';
      id_Taxo = '65749';        
    case 'Saimiri_sciureus'
      id_CoL = '8d7ee32920698d3911260b9a6a3ee269';
      id_Taxo = '65765';        
    case 'Alouatta_palliata'
      id_CoL = '06bc9289566826026b931f3c8667a0c2';
      id_Taxo = '65846';        
    case 'Chlorocebus_aethiops'
      id_CoL = '76233bc1b7b6845442a6b98f93ac8124';
      id_Taxo = '167692';        
    case 'Papio_hamadryas'
      id_CoL = 'e54f36089676e764bb7e9f7481e21548';
      id_Taxo = '65973';        
    case 'Nasalis_larvatus'
      id_CoL = '627feeca55633fa8364d77479cf765a8';
      id_Taxo = '66088';        
    case 'Macaca_fascicularis'
      id_CoL = 'e892cc0e528de9a28fa926f75f5f3eeb';
      id_Taxo = '168592';        
    case 'Macaca_mulatta'
      id_CoL = '8302d6488dd331326b175296ccfbab12';
      id_Taxo = '168596';        
    case 'Hylobates_lar'
      id_CoL = 'b567774eedd1fd38ce9a26e2fddfc628';
      id_Taxo = '66187';        
    case 'Symphalangus_syndactylus'
      id_CoL = 'df178ac7151d370e79a86ffac7daed45';
      id_Taxo = '66199';        
    case 'Pongo_pygmaeus'
      id_CoL = 'e2a643310fdb74fc698ec526f5852f93';
      id_Taxo = '66224';        
    case 'Gorilla_gorilla'
      id_CoL = '3525cf79aa420809edb33c4b6dd8601a';
      id_Taxo = '66213';        
    case 'Pan_troglodytes'
      id_CoL = '86b444a39d077c4e99f876aa5e8481df';
      id_Taxo = '66219';        
    case 'Homo_sapiens'
      id_CoL = 'e3b90576561f93a8ac8b59e185b01511';
      id_Taxo = '66295';        
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