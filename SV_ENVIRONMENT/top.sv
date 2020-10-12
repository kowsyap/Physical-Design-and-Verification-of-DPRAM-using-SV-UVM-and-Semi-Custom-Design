`include "interface.sv"
`include "dut.sv"
`include "test.sv"

module top();
bit clk;

always 
#5 clk = ~clk;

dram_if intf(clk);
dram_dut dut(intf);
dram_tb tb(intf);

endmodule