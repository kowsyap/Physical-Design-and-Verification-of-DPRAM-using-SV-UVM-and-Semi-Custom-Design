module sram(input clk,rst,wr,input[7:0] data_in,input[5:0] add,output reg[7:0] data_out);
reg[7:0] mem[0:63];
always@(posedge clk)
begin
if(rst == 0)
	data_out <= 0;
else if(wr==0)
	mem[add] <= data_in;
else
	data_out <= mem[add];
end
endmodule