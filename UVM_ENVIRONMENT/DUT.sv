//module DUT(intif.dut inf);
//sram vcode(.clk(inf.clk),.rst(inf.rst),.wr(wr),.data_in(inf.data_in),.add(inf.add),.data_out(inf.data_out));
//endmodule

module DUT(intif.dut inf);
logic[7:0] mem[0:63];
always@(posedge inf.clk)
begin
if(inf.en == 0) begin
	inf.data0_out <= 8'd0;
	inf.data1_out <= 8'd0;
end
else if(inf.wr0==0)
	mem[inf.add0] <= inf.data0_in;
else
	inf.data0_out <= mem[inf.add0];
end

always@(posedge inf.clk)
begin
if(inf.en == 0) begin
	inf.data0_out <= 8'd0;
	inf.data1_out <= 8'd0;
end
else if(inf.wr1==0)
	mem[inf.add1] <= inf.data1_in;
else
	inf.data1_out <= mem[inf.add1];
end

endmodule