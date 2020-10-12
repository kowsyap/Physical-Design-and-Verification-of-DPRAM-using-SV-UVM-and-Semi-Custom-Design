`ifndef _drv1_
`define _drv1_
`include "pkt.sv"

class dram_drv1;
dram_pkt pkt;
mailbox tx2drv1;
virtual dram_if intf;
extern function new(dram_pkt pkt,mailbox tx2drv1,virtual dram_if intf);
extern  task run();
endclass

function dram_drv1::new(dram_pkt pkt,mailbox tx2drv1,virtual dram_if intf);
this.pkt=pkt;
this.tx2drv1=tx2drv1;
this.intf=intf;
endfunction

task dram_drv1::run();
$display("%t, DRV1::RUN PHASE",$time);
while(1)
begin
	@(posedge intf.clk);
	tx2drv1.get(pkt);
	pkt.en=1'b1;
	intf.en=pkt.en;
	begin
	if(pkt.wr==0)
	begin
		intf.wr0=pkt.wr;
		intf.add0=pkt.addr;
		intf.data0_in=pkt.data_in;
		$display("%t, driver1:written pkt.wr=%b,pkt.addr=%d,pkt.datain=%d",$time,pkt.wr,pkt.addr,pkt.data_in);
	end
	end
end
endtask
`endif

