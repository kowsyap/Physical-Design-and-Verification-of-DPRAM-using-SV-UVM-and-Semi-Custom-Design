`ifndef _env_
`define _env_
`include "pkt.sv"
`include "txgen.sv"
`include "drv1.sv"
`include "drv2.sv"
`include "mon1.sv"
`include "mon2.sv"
`include "sb.sv"
`include "cfg.sv"
`include "cov.sv"

class dram_env;
dram_pkt pkt1,pkt2,pkt3,pkt4;
mailbox tx2drv1,tx2drv2,tx2sb,mon2sb,tx2cov;
virtual dram_if intf;
configuration cfg;
dram_gen tx;
dram_cov cov;
dram_drv1 drv1;
dram_drv2 drv2;
dram_mon1 mon1;
dram_mon2 mon2;
dram_sb sb;

function new(virtual dram_if intf,configuration cfg);
pkt1=new();
pkt2=new();
pkt3=new();
pkt4=new();
tx2drv1=new();
tx2drv2=new();
tx2sb=new();
tx2cov=new();
mon2sb=new();
this.intf=intf;
this.cfg=cfg;



tx=new(pkt1,tx2drv1,tx2drv2,tx2sb,tx2cov,cfg);

cov=new(pkt1,tx2cov,intf);

drv1=new(pkt1,tx2drv1,intf);
drv2=new(pkt2,tx2drv2,intf);

mon1=new(pkt3,mon2sb,intf);
mon2=new(pkt4,mon2sb,intf);

sb=new(pkt1,pkt4,tx2sb,mon2sb);
endfunction


task env_run();
begin
$display("%t, ENV::RUN PHASE",$time);
repeat(10) begin
fork
tx.run();
cov.run();
drv1.run();
drv2.run();
mon1.run();
mon2.run();
sb.run();
join
end
end
endtask
endclass
`endif

