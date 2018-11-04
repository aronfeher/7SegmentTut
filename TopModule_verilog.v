module TopModule(output[6:0] segments);
	
	reg[23:0] counter_reg;
	reg[3:0] number_reg;
	wire clk_wire;
	wire slow_clk_wire;
	wire segment_wire;
	
	SegmentLogic OneSegment(
		.din(counter_reg),
		.dout(segment_wire)
	);
	
	initial begin
		counter_reg = 0;
		numberreg = 0;
	end
	
	defparam OSCH_inst.NOM_FREQ = "7.00";
	OSCH OSCH_inst
		( 
		.STDBY(1'b0), 		
		.OSC(clk_wire),
		.SEDSTDBY()     		
		);	
		
	always @(posedge clk_wire) begin
		if(counter == 7000000) 
			counter <= 0;
		else	
			counter <= counter + 1;
	end
	
	assign slow_clk_wire <= counter[23];
	
	always @(posedge slow_clk_wire) begin
		number_reg = number_reg + 4'b1;
	end
	
	assign segments <= segment_wire;
	
	
endmodule
