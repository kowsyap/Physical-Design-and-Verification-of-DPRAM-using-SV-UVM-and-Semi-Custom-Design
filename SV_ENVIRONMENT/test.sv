`include "env.sv"
`include "cfg.sv"

program dram_tb(dram_if.tb infc);
configuration cfg;
dram_env env;
initial
begin
cfg=new();
cfg.num_txns=10;
cfg.cmd=WR_RD;
cfg.addr1=random;
cfg.data1=random1;
env=new(infc,cfg);
env.env_run();
end
endprogram

