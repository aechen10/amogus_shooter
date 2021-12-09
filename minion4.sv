/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  minion_yoda (
						input [18:0] read_address,

						output logic [2:0] yoda_out  //change the output bits to 3 because we have 3 colors
);

// mem has width of 3 bits and a total of 400 addresses
logic [2:0] mem [0:7295];  //7296
initial
begin
	 $readmemh("sprite_bytes/yoda.txt", mem);
end


always_comb

begin
	yoda_out <= mem[read_address];
end

endmodule
