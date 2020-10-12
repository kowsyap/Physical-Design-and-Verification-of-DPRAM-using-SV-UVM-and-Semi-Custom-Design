`ifndef _sb_
`define _sb_
`include "pkt.sv"

class dram_sb;
bit [7:0]mem[0:63];
dram_pkt pkt1,pkt2;
mailbox tx2sb,mon2sb;

function new(dram_pkt pkt1,pkt2,mailbox tx2sb,mon2sb);
this.pkt1=pkt1;
this.pkt2=pkt2;
this.tx2sb=tx2sb;
this.mon2sb=mon2sb;
endfunction

extern task run();
extern task rcvd();
extern task expctd();
endclass

task dram_sb::run();
$display("%t, SB::RUN PHASE",$time);
fork
rcvd();
expctd();

join_none
endtask

task dram_sb::expctd();
while(1)
begin
tx2sb.get(pkt1);
$display("expected packet=%p",pkt1);
begin
mem[pkt1.addr]=pkt1.data_in; // pkt1 from TXGEN
end
end
endtask

task dram_sb::rcvd();
while(1)
begin
mon2sb.get(pkt2);
$display("received pkt=%p",pkt2);   //PKT2 FROM MONITOR
if(pkt2.data_out!=mem[pkt2.addr])
$display("%t, scoreboard---->MISMATCHED, pkt2.addr=%p,pkt2.data_out=%p",$time,pkt2.addr,pkt2.data_out);
else
$display("%t, scoreboard---->MATCHED, pkt2.addr=%p,pkt2.data_out=%p",$time,pkt2.addr,pkt2.data_out);
end
endtask
`endif
