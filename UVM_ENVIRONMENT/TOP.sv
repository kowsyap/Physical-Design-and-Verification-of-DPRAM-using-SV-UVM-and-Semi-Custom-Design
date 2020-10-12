 import uvm_pkg::*;
`include "uvm_macros.svh"
`include "INTERFACE.sv"
//`include "DESIGN.sv"
`include "DUT.sv"
`include "SEQ_ITEM.sv"
`include "SEQ.sv"
`include  "SEQR.sv"
`include "DRV.sv"
`include "COV.sv"
`include "MON1.sv"
`include "MON2.sv"
`include "AGENT1.sv"
`include "AGENT2.sv"
`include "SB.sv"
`include "ENV.sv"
`include "TEST.sv"

module dram_top();
bit clk;

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end


intif inf(clk);
DUT dut(inf);



initial
begin
uvm_config_db#(virtual intif)::set(uvm_root::get(),"*","inf",inf);
run_test("dram_test");
end
endmodule

