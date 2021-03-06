module megaphone_color_palette (input logic [2:0] select_input,	
									
                           output logic [7:0] Red, Green, Blue
);
always_comb
	begin
	unique case(select_input)
	3'd1: 
		begin
			Red = 8'h24;
			Green = 8'h24;
			Blue = 8'h24;
		end
	3'd2: 
		begin
			Red = 8'hd4;  
			Green = 8'hd4; 
			Blue = 8'hd7;
		end
	3'd3: 
		begin
			Red = 8'h80;
			Green = 8'h00;
			Blue = 8'h00;
		end
	3'd4: 
		begin
			Red = 8'h9b;
			Green = 8'h31;
			Blue = 8'h10;
		end
	3'd5: 
		begin
			Red = 8'hdf;
			Green = 8'h6e;
			Blue = 8'h4a;
		end
	3'd6: 
		begin
			Red = 8'h2c;
			Green = 8'h2c;
			Blue = 8'h23;
		end
	3'd7: 
		begin
			Red = 8'h22;
			Green = 8'h28;
			Blue = 8'h2b;
		end
	3'd8: 
		begin
			Red = 8'hf0;
			Green = 8'h34;
			Blue = 8'h00;
		end
	endcase
	end
endmodule
		


