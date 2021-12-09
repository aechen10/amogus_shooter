module cyan_color_palette (input logic [2:0] select_input,	
									
                           output logic [7:0] Red, Green, Blue
);

always_comb
	begin
	unique case(select_input)
	3'd1: 
		begin
			Red = 8'h00;
			Green = 8'h00;
			Blue = 8'h00;
		end
	3'd2: 
		begin
			Red = 8'hb0;  
			Green = 8'h00; 
			Blue = 8'h00;
		end
	3'd3: 
		begin
			Red = 8'hc3;
			Green = 8'hbc;
			Blue = 8'h1d;
		end
	3'd4: 
		begin
			Red = 8'hff;
			Green = 8'hd3;
			Blue = 8'h08;
		end
	3'd5: 
		begin
			Red = 8'h00;
			Green = 8'h45;
			Blue = 8'h00;
		end
	3'd6: 
		begin
			Red = 8'h37;
			Green = 8'hf6;
			Blue = 8'hd4;
		end
	3'd7: 
		begin
			Red = 8'h43;
			Green = 8'h5a;
			Blue = 8'h63;
		end
	3'd8: 
		begin
			Red = 8'h98;
			Green = 8'hca;
			Blue = 8'hdd;
		end
	endcase
	end
endmodule
		


