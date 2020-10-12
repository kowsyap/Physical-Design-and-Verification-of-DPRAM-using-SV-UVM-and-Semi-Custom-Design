class dram_agent1 extends uvm_agent;
`uvm_component_utils(dram_agent1)


dram_seqr seqr;
dram_drv drv;
dram_mon1 mon1;

function new(string name="dram_agent1",uvm_component parent);
super.new(name,parent);
endfunction

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
seqr=dram_seqr::type_id::create("seqr1",this);
drv=dram_drv::type_id::create("drv",this);
mon1=dram_mon1::type_id::create("mon1",this);
endfunction

virtual function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
drv.seq_item_port.connect(seqr.seq_item_export);
endfunction

endclass

