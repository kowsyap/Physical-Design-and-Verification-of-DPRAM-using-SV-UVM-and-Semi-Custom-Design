`include "pkt.sv"

class dram_cov;
mailbox tx2cov;
dram_pkt pkt;
virtual dram_if intf;

covergroup CovPort;	//@(posedge intf.clk);

  address : coverpoint pkt.addr {
    bins low    = {[0:20]};
    bins med    = {[21:42]};
    bins high   = {[43:63]};
  }
  data : coverpoint  pkt.data_in {
    bins low    = {[0:50]};
    bins med    = {[51:150]};
    bins high   = {[151:255]};
  }
endgroup

extern function new(dram_pkt pkt,mailbox tx2cov,virtual dram_if intf);
extern task run();

endclass

function dram_cov::new(dram_pkt pkt,mailbox tx2cov,virtual dram_if intf);
CovPort = new();
this.pkt=pkt;
this.tx2cov=tx2cov;
this.intf=intf;
endfunction

task dram_cov::run();
while(1)
begin
$display("%t, COVER::RUN PHASE",$time);
tx2cov.get(pkt);
CovPort.sample();
end
endtask