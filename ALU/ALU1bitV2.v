module ALU1bitV2(x,y,S,R);
	input		x,y;
	input	[1:0]	S;
	output	reg	R;

	always@(*)
	begin
		case (S)
			2'b00	:	R <= x+y;
			2'b01	:	R <= x-y;
			2'b10	:	R <= x&y;
			2'b11	:	R <= x|y;
			default	:	R <= 1'bz;
		endcase
	end
endmodule