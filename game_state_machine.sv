module game_state_machine( input [7:0] keycode,
									input Reset,
									input frame_clk,
									
									input [1:0] live,
									input [1:0] enemy,
									
									output logic start,
									output logic game,
									output logic win,
									output logic lose,
									);
	enum logic [1:0] {start1, game1, win1, lose1}	state, next_state;
	always_ff @(posedge frame_clk)
	begin
		if(Reset)
			state <= start1;
		else
			state <= next_state;
	end
	
	always_comb
	begin
		start, game, win, lose = 1'b0;
		next_state = state;         //default next state is staying at current state
		unique case(state)
			start1:
				if (keycode == 8'h16 ) // at start of the game if the "S" is pressed, go to the game;
					next_state = game1;
			game1:
				if(live == 0)
					next_state = lose1;
				else if(enemy == 0)
					next_state = win1;
			win1;
				if (keycode == 8'h04)  //press "A"
					next_state = start1;
			lose1:
				if (keycode == 8'h04)  //press "A"
					next_state = start1;
		endcase
		
		case(state)
			start1:
				start = 1;
				game = 0;
				win = 0;
				lose = 0;
			game1 : 
				start = 0;
				game = 1;
				win = 0;
				lose = 0;
			win1:
				start = 0;
				game = 0;
				win = 1;
				lose = 0;
			lose1:
				start = 0;
				game = 0;
				win = 0;
				lose = 1;
			default :;
		endcase		
	end
								
									
endmodule
