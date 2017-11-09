`timescale 1ns/1ps

module tb_ALU1bitV2;
	reg		x,y;
	reg	[1:0]	S;
	wire		R;

	ALU1bitV2	UUT	(x,y,S,R);
	
	initial
	begin
		$dumpfile ("ALU1bitV2.vpd");
		$dumpvars;
		
		x=0;y=0;S=2'b00;
		#10
		x=0;y=0;S=2'b01;
		#10
		x=0;y=0;S=2'b10;
		#10
		x=0;y=0;S=2'b11;
		#10
		x=0;y=1'b1;S=2'b00;
		#10
		x=0;y=1'b1;S=2'b01;
		#10
		x=0;y=1'b1;S=2'b10;
		#10
		x=0;y=1'b1;S=2'b11;
		#10
		x=1'b1;y=0;S=2'b00;
		#10
		x=1'b1;y=0;S=2'b01;
		#10
		x=1'b1;y=0;S=2'b10;
		#10
		x=1'b1;y=0;S=2'b11;
		#10
		x=1'b1;y=1'b1;S=2'b00;
		#10
		x=1'b1;y=1'b1;S=2'b01;
		#10
		x=1'b1;y=1'b1;S=2'b10;
		#10
		x=1'b1;y=1'b1;S=2'b11;
		#10
		$finish;
	end
endmodule