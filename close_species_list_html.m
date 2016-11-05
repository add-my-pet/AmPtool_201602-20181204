%% close_species_html(fid_Spec)
% closes species_list.html

%%
function close_species_list_html(fidSpec)
% created by Bas Kooijman; modified 2015/08/28 Starrlight Augustine, 2016/11/03 Bas Kooijman

%% Syntax
% <../close_species_list_html.m *close_species_list_html*> (fid_Spec) 

%% Description
% Run this after print_species_list_html.m
%
% Input:
%
% * fidSpec : scalar

fprintf(fidSpec, '      </table>\n\n');
fprintf(fidSpec, '    </div> <!-- end of content -->\n\n');
		
fprintf(fidSpec, '    <div id="footer">\n');
fprintf(fidSpec, '      <div class="aligncenter" style="padding:20px">\n');
fprintf(fidSpec, '        &#169; 2016 Add-my-pet\n');
fprintf(fidSpec, '      </div>\n');
fprintf(fidSpec, '    </div>\n\n');
fprintf(fidSpec, '  </div> <!-- main wrapper -->\n');
fprintf(fidSpec, '</div> <!-- main -->\n');

fprintf(fidSpec, '</BODY>\n');
fprintf(fidSpec, '</HTML>\n');


% fprintf(fidSpec,   '%s\n' , '    </TABLE>');
% fprintf(fidSpec,   '%s\n\n' , '  </BODY>');
% fprintf(fidSpec,   '%s\n' , '</HTML>');
fclose(fidSpec);


