module dpram(input clk,wr0,wr1,en,
				input[7:0] data0_in,data1_in,
				input[5:0] add0,add1,
				output reg[7:0] data0_out,data1_out);

reg[7:0] mem[0:63];

always@(posedge clk)
begin
	if(en == 0) begin
		 data0_out <= 8'd0;
		 data1_out <= 8'd0;
	end
	else if(wr0==0)
		mem[add0] <= data0_in;
	else
		data0_out <= mem[ add0];
end

always@(posedge  clk)
begin
	if(en == 0) begin
		data0_out <= 8'd0;
		data1_out <= 8'd0;
	end
	else if(wr1==0)
		mem[add1] <= data1_in;
	else
		data1_out <= mem[ add1];
end

endmodule