class dram_drv2 extends uvm_driver #(dram_seq_item);
`uvm_component_utils(dram_drv2)
virtual intif inf;

function new(string name="dram_drv2",uvm_component parent);
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
$display("driver2 pkt add=%d
,data_in=%d,wr=%d ",pkt.add,pkt.data_in,pkt.wr);
pkt.en=1;
@(negedge inf.clk);
inf.en=pkt.en;
if(pkt.wr) begin
inf.wr1=pkt.wr;
inf.add1=pkt.add;
$display("drv2 data_in=%d,add=%d,wr=%d",inf.data1_in,inf.add1,inf.wr1);
end
/*else begin
inf.wr=pkt.wr;
inf.add=pkt.add;
//$display("4 data_in=%d,add=%d,wr=%d",inf.data_in,inf.add,inf.wr);

end*/
@(negedge inf.clk);

seq_item_port.item_done();

`uvm_info("DRV2","DRV2 TRANSACTION TO DUT",UVM_NONE);
#5;
end
endtask
endclass
