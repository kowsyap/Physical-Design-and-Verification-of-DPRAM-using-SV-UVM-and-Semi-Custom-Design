class dram_test extends uvm_test;
`uvm_component_utils(dram_test)
dram_env env;


function new(string name="dram_test",uvm_component parent);
		super.new(name,parent);
		//set_config_int("seq","num_txns",10);
        //set_config_string("seq","addr1","random");
        //set_config_string("seq","data1","random1");
endfunction

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
env=dram_env::type_id::create("env",this);
endfunction

task run_phase(uvm_phase phase);
dram_seq seq;
seq=dram_seq::type_id::create("seq",this);

phase.raise_objection(this);
seq.start(env.agent1.seqr);
#50;
phase.drop_objection(this);
endtask
endclass

