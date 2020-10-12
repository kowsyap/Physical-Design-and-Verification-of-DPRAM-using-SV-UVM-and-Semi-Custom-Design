class dram_agent2 extends uvm_agent;
`uvm_component_utils(dram_agent2)

dram_mon2 mon2;

function new(string name="dram_agent2",uvm_component parent);
super.new(name,parent);
endfunction

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
mon2=dram_mon2::type_id::create("mon2",this);
endfunction


endclass
