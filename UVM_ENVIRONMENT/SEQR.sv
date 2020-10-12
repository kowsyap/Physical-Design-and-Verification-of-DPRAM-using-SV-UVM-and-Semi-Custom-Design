class dram_seqr extends uvm_sequencer#(dram_seq_item);

`uvm_component_utils(dram_seqr)

function new(string name="dram_seqr",uvm_component parent);
super.new(name,parent);
endfunction

endclass
