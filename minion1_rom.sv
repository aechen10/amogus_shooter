/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  minion_cyan (
						input [18:0] read_address,

						output logic [2:0] cyan_out  //change the output bits to 3 because we have 3 colors
);

// mem has width of 3 bits and a total of 400 addresses
logic [2:0] mem [0:1631];  //32*51 = 1632

initial
begin
	 $readmemh("sprite_bytes/cyan.txt", mem);
end


always_comb

begin
	cyan_out <= mem[read_address];
end

endmodule
