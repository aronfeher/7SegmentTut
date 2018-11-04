`timescale 1ns / 10ps

module SegmentTest();
	//timeunit 1ns;
	//timeprecision 10ps;
	
	//localparam PERIOD = 10ns;
	
	//bit clk = 0;
	reg[3:0] input_number;
	wire[6:0] output_code;
	integer i;
	
	SegmentLogic Segment_DUT(
		.din(input_number),
		.dout(output_code)
	);
	
	//always 
	//	begin: Clock_Driver
	//		#(PERIOD) clk = ~clk;
	//end
	
	initial begin
		#1;
		input_number = 4'b0;
		#1;
		input_number = 4'd1;
		#1;
		input_number = 4'd2;
		#1;
		input_number = 4'd3;
		#1;
		input_number = 4'd4;
		#1;
		input_number = 4'd5;
		#1;
		input_number = 4'd6;
		#1;
		input_number = 4'd7;
		#1;
		input_number = 4'd8;
		#1;
		input_number = 4'd9;
		//#1;
		//input_number = 4'd10;
		//#1;
		//input_number = 4'd11;
		//#1;
		//input_number = 4'd12;
		//#1;
		//input_number = 4'd13;
		//#1;
		//input_number = 4'd14;
		//#1;
		//input_number = 4'd15;
	end

endmodule