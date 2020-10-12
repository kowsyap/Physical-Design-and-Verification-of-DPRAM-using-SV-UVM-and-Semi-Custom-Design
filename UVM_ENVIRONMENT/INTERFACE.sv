interface intif(input bit clk);
logic[7:0] data0_in,data0_out,data1_in,data1_out;
logic[5:0] add0,add1;
logic en,wr0,wr1;
modport dut(input clk,en,wr0,wr1,data0_in,data1_in,add0,add1,output data0_out,data1_out);
endinterface


