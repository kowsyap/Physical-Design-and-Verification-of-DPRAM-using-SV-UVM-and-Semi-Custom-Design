class dram_seqr2 extends uvm_sequencer#(dram_seq_item);

`uvm_component_utils(dram_seqr2)

function new(string name="dram_seqr2",uvm_component parent);
super.new(name,parent);
endfunction

endclass
