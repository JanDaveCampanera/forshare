module ALU1bit(x,y,S,R);
	input		x,y;
	input	[1:0]	S;
	output		R;

	assign R = (S==2'b00)?  x+y:((S==2'b01)? x-y:((S==2'b10)? x&y:x|y));
endmodule