`ifndef _Mon2_
`define _Mon2_
`include "pkt.sv"

class dram_mon2;
dram_pkt pkt;
mailbox mon2sb;
virtual dram_if intf;
extern function new(dram_pkt pkt,mailbox mon2sb,virtual dram_if intf);
extern task run();
endclass

function dram_mon2::new(dram_pkt pkt,mailbox mon2sb,virtual dram_if intf);
this.pkt=pkt;
this.mon2sb=mon2sb;
this.intf=intf;
endfunction

task dram_mon2::run();
begin
$display("%t, MON2::RUN PHASE",$time);
while(1)
begin
@(posedge intf.clk);
pkt.en=intf.en;
begin
if((pkt.en==1)&&(intf.wr1==1))
begin
pkt.wr=intf.wr1;
pkt.addr=intf.add1;
pkt.data_out=intf.data1_out;
mon2sb.put(pkt);
$display("%t, monitor2: read addr=%d dataout=%d",$time,pkt.addr,pkt.data_out);
end
end
end
end
endtask
`endif

