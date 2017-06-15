%% get_link
% gets links to web-pages for entries


%%
function [links nms] = get_link(taxon)
% created 2017/06/14 by Bas Kooijman

%% Syntax
% [links nms] = <get_link *get_link*>(taxon)

%% Description
% gets cell strings with links and descriptions for an entry
%
% Input:
%
% * taxon: chracter string with name of an entry
%
% Output:
%
% * links: cell string with 6 or 7 (fish, tetrapods) links 
% * nms: cell string with descriptions of the links

%% Remarks
% empty links are removed from output

%% Example of use
% [link nms] = get_link('Daphnia_magna')

  % default identifiers
  id_EoL = taxon; id_Wiki = taxon; id_ADW = taxon; 
  if ismember(taxon, select('Tetrapoda'))
    id_AnAge = taxon; id_fishbase = '';
  elseif ismember(taxon, select('Craniata'))
    id_AnAge = ''; id_fishbase = [strrep(taxon,'_','-'), '.html'];
  else
    id_AnAge = ''; id_fishbase = ''; % no tetrapod or fish
  end

  switch taxon % overwrite id's if necessary, assign empty to delete
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
      id_WoRMS = '105454'; % unaccepted, Ferosagitta hispida (Conant, 1895)
      id_Taxo = '40644';   % unaccepted, Sagitta bipunctata    
    case 'Moniliformis_dubius'
      id_CoL = '2db31682f5ec69386b23ea4212b709b1';
      id_WoRMS = ''; % not present
      id_Taxo = '14700';        
    case 'Asplanchna_girodi'
      id_CoL = '7ef4175c71766debbf941dc6e2476c02';
      id_WoRMS = ''; % not present
      id_Taxo = '114748';        
    case 'Brachionus_plicatilis'
      id_CoL = 'c1847141382c50836d8cf6c9cea31e71';
      id_WoRMS = '134982';
      id_Taxo = '91556';        
    case 'Aspidiophorus_polystictos'
      id_CoL = '88edfcced5860e504db0c2d25d801715';
      id_WoRMS = '114471';
      id_Taxo = '';  % not present       
    case 'Schmidtea_polychroa'
      id_CoL = '032a02867df5f7a953bd3c02edd02523';
      id_WoRMS = ''; % not present
      id_Taxo = '';  % not present    
    case 'Magellania_fragilis'
      id_CoL = '397256b281a713c08dd827ce925a4418';
      id_WoRMS = '235668';
      id_Taxo = '991609'; % unaccepeted, Aerothyris fragilis, but cripple classification        
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
      id_Taxo = ''; % not present       
    case 'Arenicola_marina'
      id_CoL = '8981bb1d5f3ba68ed39eec35e0104438';
      id_WoRMS = '129868';
      id_Taxo = '15271';        
    case 'Dendrobaena_octaedra'
      id_CoL = '';   % not present
      id_WoRMS = ''; % not present
      id_Taxo = '2907467';        
    case 'Lumbricus_terrestris'
      id_CoL = '';   % not present
      id_WoRMS = ''; % not present
      id_Taxo = '15563';        
    case 'Octolasion_cyaneum'
      id_CoL = 'c39d48b8d317b85403b3500a610f0be7';
      id_WoRMS = ''; % not present
      id_Taxo = '140609';        
    case 'Aporrectodea_longa'
      id_CoL = '6ba7cb1f971e29fa5b0489de565d4109';
      id_WoRMS = ''; % not present
      id_Taxo = '';  % not present       
    case 'Eisenia_fetida'
      id_CoL = '';   % not present
      id_WoRMS = ''; % not present
      id_Taxo = '15557'; % Eisenia_foetida  preferred    
    case 'Lepidochitona_cinerea'
      id_CoL = '75dec12407157ff88b7093da4cd037b8';
      id_WoRMS = '152774';
      id_Taxo = '114600';        
    case 'Cerastoderma_edule'
      id_CoL = '2af65e2b505c0c8b54696e3d1a6ae6cc';
      id_WoRMS = '138998';
      id_Taxo = '';        
    case 'Cerastoderma_glaucum'
      id_CoL = '8388202a26e5db4db1e1b11e113dd6a7';
      id_WoRMS = '138999';
      id_Taxo = '';        
    case 'Mya_arenaria'
      id_CoL = 'b8018df2338b52a3f82bb35f20327198';
      id_WoRMS = '140430';
      id_Taxo = '';        
    case 'Macoma_balthica'
      id_CoL = '7752e8e469ee3f69471f23a73bb94786';
      id_WoRMS = '141579'; % unaccepeted, Limecola balthica (Linnaeus, 1758)
      id_Taxo = '';        
    case 'Ensis_directus'
      id_CoL = '9535725bdbecb2f76d4461dc8a747406';
      id_WoRMS = '140732';
      id_Taxo = '';        
    case 'Ruditapes_philippinarum'
      id_CoL = '020b3f1b4179f488782e4d69d7dc071f';
      id_WoRMS = '231750';
      id_Taxo = '';        
    case 'Echyridella_menziesii'
      id_CoL = '1467382d3ab24e1ca4e76417fc858224';
      id_WoRMS = ''; % not present
      id_Taxo = '';        
    case 'Anadonta_cygnea'
      id_CoL = '';  % not present
      id_WoRMS = '234103';
      id_Taxo = ''; % not present       
    case 'Westralunio_carteri'
      id_CoL = '';   % not present
      id_WoRMS = ''; % not present
      id_Taxo = '';  % not present       
    case 'Arctica_islandica'
      id_CoL = '5c0583f70d0785993185a7411b8a4cae';
      id_WoRMS = '138802';
      id_Taxo = '';        
    case 'Argopecten_purpuratus'
      id_CoL = 'be54afd1d214780315c063fa0def0756';
      id_WoRMS = '394269';
      id_Taxo = '';        
    case 'Pecten_maximus'
      id_CoL = 'cfba025bc7568aa8054058b764da5484';
      id_WoRMS = '140712';
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

  CoL = ['http://catalogueoflife.org/annual-checklist/2017/details/species/id/', id_CoL];  
  Taxo = ['http://taxonomicon.taxonomy.nl/TaxonTree.aspx?id=', id_Taxo];
  WoRMS = ['http://marinespecies.org/aphia.php?p=taxdetails&id=', id_WoRMS];
  EoL = ['http://eol.org/pages/', id_EoL];
  Wiki = ['https://en.wikipedia.org/wiki/', id_Wiki];
  ADW = ['http://animaldiversity.org/accounts/', id_ADW]; 
  AnAge = ['http://genomics.senescence.info/species/entry.php?species=', id_AnAge];
  fishbase = ['http://www.fishbase.org/summary/', id_fishbase];
  
  links = {CoL; Taxo; WoRMS; EoL; Wiki; ADW; AnAge; fishbase};
  nms = {'CoL'; 'Taxo'; 'WoRMS'; 'EoL'; 'Wiki'; 'ADW'; 'AnAge'; 'fishbase'};
  sel = ~cellfun(@isempty, {id_CoL, id_Taxo, id_WoRMS, id_EoL, id_Wiki, id_ADW, id_AnAge, id_fishbase});
  links = links(sel); nms = nms(sel);
