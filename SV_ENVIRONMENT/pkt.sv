`ifndef __BASE_PKT__
`define __BASE_PKT__

class dram_pkt;
rand bit[7:0] data_in;
rand bit[5:0] addr;
bit[7:0] data_out;
bit en;
bit wr;
endclass

`endif