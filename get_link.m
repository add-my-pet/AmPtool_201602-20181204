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

  id_EoL = taxon; id_Wiki = taxon; id_ADW = taxon; 
  if ismember(taxon, select('Tetrapoda'))
    id_AnAge = taxon; id_fishbase = '';
  elseif ismember(taxon, select('Craniata'))
    id_AnAge = ''; id_fishbase = [strrep(taxon,'_','-'), '.html'];
  else
    id_AnAge = ''; id_fishbase = '';
  end

  switch taxon
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
