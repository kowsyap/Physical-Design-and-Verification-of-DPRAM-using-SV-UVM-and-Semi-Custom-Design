`ifndef _Mon1_
`define _Mon1_
`include "pkt.sv"

class dram_mon1;
dram_pkt pkt;
mailbox mon2sb;
virtual dram_if intf;
extern function new(dram_pkt pkt,mailbox mon2sb,virtual dram_if intf);
extern task run();
endclass

function dram_mon1::new(dram_pkt pkt,mailbox mon2sb,virtual dram_if intf);
this.pkt=pkt;
this.mon2sb=mon2sb;
this.intf=intf;
endfunction

task dram_mon1::run();
begin
$display("%t, MON1::RUN PHASE",$time);
while(1)
begin
@(posedge intf.clk);
pkt.en=intf.en;
begin
if((pkt.en==1)&&(intf.wr0==1))
begin
pkt.wr=intf.wr0;
pkt.addr=intf.add0;
pkt.data_out=intf.data0_out;
mon2sb.put(pkt);
$display("%t, monitor1: read addr=%d dataout=%d",$time,pkt.addr,pkt.data_out);
end
end
end
end
endtask
`endif

