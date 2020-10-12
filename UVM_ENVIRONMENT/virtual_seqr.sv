class virtual_seqr extends uvm_sequencer;
`uvm_component_utils(virtual_seqr)

function new(string name="virual_seqr",uvm_component parent);
	super.new(name,parent);
endfunction

dram_seqr1 m_dram_seqr1;
dram_seqr2 m_dram_seqr2;
endclass