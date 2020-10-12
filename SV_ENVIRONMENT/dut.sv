module dram_dut(dram_if.dut intf);
logic[7:0] mem[0:63];
always@(posedge intf.clk)
begin
if(intf.en == 0) begin
	intf.data0_out <= 8'd0;
	intf.data1_out <= 8'd0;
end
else if(intf.wr0==0)
	mem[intf.add0] <= intf.data0_in;
else
	intf.data0_out <= mem[intf.add0];
end

always@(posedge intf.clk)
begin
if(intf.en == 0) begin
	intf.data0_out <= 8'd0;
	intf.data1_out <= 8'd0;
end
else if(intf.wr1==0)
	mem[intf.add1] <= intf.data1_in;
else
	intf.data1_out <= mem[intf.add1];
end

endmodule