%% close_species_html(fid_Spec)
% closes species_list.html

%%
function close_species_html(fidSpec)
% originally created by Bas Kooiman; modified 2015/08/28 Starrlight

%% Syntax
% <../close_species_html.m *close_species_html*> (fid_Spec) 

%% Description
% Run this after print_species_html.m
%
% Input:
%
% * fidSpec : scalar

fprintf(fidSpec,   ' </table>\n');
fprintf(fidSpec,   '</div> <!-- end of content -->\n');
			
			
		
fprintf(fidSpec,   '			<div id="footer">\n');
fprintf(fidSpec,   '				<div class="aligncenter" style="padding:20px">\n');
fprintf(fidSpec,   '				&#169; 2016 Add-my-pet\n');
fprintf(fidSpec,   '				</div>\n');
fprintf(fidSpec,   '			</div>\n');
fprintf(fidSpec,   '		</div> <!-- main wrapper -->\n');
fprintf(fidSpec,   '	</div> <!-- main -->\n');



fprintf(fidSpec,   '</BODY>\n');
fprintf(fidSpec,   '</HTML>\n');


% fprintf(fidSpec,   '%s\n' , '    </TABLE>');
% fprintf(fidSpec,   '%s\n\n' , '  </BODY>');
% fprintf(fidSpec,   '%s\n' , '</HTML>');
fclose(fidSpec);


