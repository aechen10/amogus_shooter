module yoda_color_palette (input logic [2:0] select_input,	
									
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
			Red = 8'hd8;  
			Green = 8'hed; 
			Blue = 8'hfa;
		end
	3'd3: 
		begin
			Red = 8'h8d;
			Green = 8'h71;
			Blue = 8'h5a;
		end
	3'd4: 
		begin
			Red = 8'h52;
			Green = 8'h96;
			Blue = 8'h6c;
		end
	3'd5: 
		begin
			Red = 8'h6f;
			Green = 8'ha4;
			Blue = 8'hc0;
		end
	3'd6: 
		begin
			Red = 8'h3a;
			Green = 8'h50;
			Blue = 8'h57;
		end
	3'd7: 
		begin
			Red = 8'h2b;
			Green = 8'h3c;
			Blue = 8'h32;
		end
	3'd8: 
		begin
			Red = 8'h8f;
			Green = 8'hc9;
			Blue = 8'ha6;
		end

	endcase
	end
endmodule
		


