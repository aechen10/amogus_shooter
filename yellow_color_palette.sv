module yellow_color_palette (input logic [2:0] select_input,	
									
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
			Red = 8'hea;  
			Green = 8'hf4; 
			Blue = 8'hf8;
		end
	3'd3: 
		begin
			Red = 8'hc2;
			Green = 8'h52;
			Blue = 8'h02;
		end
	3'd4: 
		begin
			Red = 8'hda;
			Green = 8'hbe;
			Blue = 8'h3d;
		end
	3'd5: 
		begin
			Red = 8'h8b;
			Green = 8'h8b;
			Blue = 8'h32;
		end
	3'd6: 
		begin
			Red = 8'h28;
			Green = 8'h4e;
			Blue = 8'h24;
		end
	3'd7: 
		begin
			Red = 8'h42;
			Green = 8'h5b;
			Blue = 8'h64;
		end
	3'd8: 
		begin
			Red = 8'ha1;
			Green = 8'hcc;
			Blue = 8'hde;
		end
	endcase
	end
endmodule
		


