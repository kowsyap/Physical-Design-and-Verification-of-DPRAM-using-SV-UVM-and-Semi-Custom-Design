interface dram_if(input clk);
logic[7:0] data0_in,data0_out,data1_in,data1_out;
logic[5:0] add0,add1;
logic en,wr0,wr1;

clocking cb@(posedge clk);
default input #1ns output #1ns;
endclocking

modport dut(input clk,data0_in,data1_in,add0,add1,en,wr0,wr1, output data0_out,data1_out);
modport tb(output data0_in,data1_in,add0,add1,en,wr0,wr1, input clk,data0_out,data1_out);

endinterface