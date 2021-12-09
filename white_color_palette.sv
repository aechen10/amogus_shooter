module white_color_palette (input logic [2:0] select_input,	
									
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
			Red = 8'he4;  
			Green = 8'hf1; 
			Blue = 8'hf6;
		end
	3'd3: 
		begin
			Red = 8'hee;
			Green = 8'hdc;
			Blue = 8'h02;
		end
	3'd4: 
		begin
			Red = 8'h3a;
			Green = 8'h4d;
			Blue = 8'h55;
		end
	3'd5: 
		begin
			Red = 8'h8d;
			Green = 8'hbf;
			Blue = 8'hd0;
		end
	3'd6: 
		begin
			Red = 8'h7c;
			Green = 8'h8c;
			Blue = 8'hb4;
		end
	3'd7: 
		begin
			Red = 8'hda;
			Green = 8'ha7;
			Blue = 8'h01;
		end
	3'd8: 
		begin
			Red = 8'h67;
			Green = 8'h74;
			Blue = 8'h95;
		end
	endcase
	end
endmodule
		


