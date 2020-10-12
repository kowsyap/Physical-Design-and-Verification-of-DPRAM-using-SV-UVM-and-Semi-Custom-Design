class virtual_seq extends uvm_sequence;
`uvm_object_utils(virtual_seq)
`uvm_declare_p_sequencer(virtual_seqr)

dram_seq seq1;
dram_seq seq2;

function new(string name="virtual_seq");
	super.new(name);
endfunction

virtual task body();
	seq1 = dram_seq::type_id::create("seq1");
	seq2 = dram_seq::type_id::create("seq2");
	
	`uvm_info("VSEQ" , "Virtual sequence stated",UVM_MEDIUM)
	fork
		seq1.start(p_sequencer.m_dram_seqr1);
		#10 seq2.start(p_sequencer.m_dram_seqr2);
	join
	`uvm_info("VSEQ" , "Virtual sequence ended",UVM_MEDIUM)
endtask
endclass