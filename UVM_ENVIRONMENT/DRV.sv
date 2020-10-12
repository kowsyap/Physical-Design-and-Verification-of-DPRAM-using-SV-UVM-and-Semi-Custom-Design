class dram_drv extends uvm_driver #(dram_seq_item);
`uvm_component_utils(dram_drv)
virtual intif inf;

function new(string name="dram_drv",uvm_component parent);
super.new(name,parent);
endfunction

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
uvm_config_db #(virtual intif)::get(this,"","inf",inf);
endfunction

 task run_phase(uvm_phase phase);
dram_seq_item pkt;
pkt=dram_seq_item::type_id::create("pkt");
forever
begin
seq_item_port.get_next_item(pkt);
pkt.en=1;
@(negedge inf.clk);
inf.en=pkt.en;
if(pkt.wr==0) begin
inf.wr0=pkt.wr;
inf.data0_in=pkt.data_in;
inf.add0=pkt.add;
`uvm_info("DRV TRANSACTIONS", $sformatf("inf.data0_in=%d,inf.add0=%d, inf.wr0=%b",inf.data0_in,inf.add0,inf.wr0) ,UVM_NONE);
end
else begin
inf.wr1=pkt.wr;
inf.add1=pkt.add;
`uvm_info("DRV TRANSACTIONS", $sformatf("inf.add1=%d, inf.wr1=%b",inf.add1,inf.wr1) ,UVM_NONE);
end

@(negedge inf.clk);

seq_item_port.item_done();

`uvm_info("DRV","DRV TRANSACTION TO DUT",UVM_NONE);
#5;
end
endtask
endclass
