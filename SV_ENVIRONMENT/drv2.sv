`ifndef _drv2_
`define _drv2_
`include "pkt.sv"

class dram_drv2;
dram_pkt pkt;
mailbox tx2drv2;
virtual dram_if intf;
extern function new(dram_pkt pkt,mailbox tx2drv2,virtual dram_if intf);
extern  task run();
endclass

function dram_drv2::new(dram_pkt pkt,mailbox tx2drv2,virtual dram_if intf);
this.pkt=pkt;
this.tx2drv2=tx2drv2;
this.intf=intf;
endfunction

task dram_drv2::run();
$display("%t, DRV2::RUN PHASE",$time);
while(1)
begin
	@(posedge intf.clk);
	tx2drv2.get(pkt);
	pkt.en=1'b1;
	intf.en=pkt.en;
	begin
	if(pkt.wr==1)
	begin
		intf.wr1=pkt.wr;
		intf.add1=pkt.addr;
		$display("%t, driver2:written pkt.wr=%b,pkt.addr=%d",$time,pkt.wr,pkt.addr);
	end
	end
end
endtask
`endif

