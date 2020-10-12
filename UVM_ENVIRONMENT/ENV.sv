class  dram_env extends uvm_env;
`uvm_component_utils(dram_env)

dram_agent1 agent1;
dram_agent2 agent2;
dram_sb sb;
dram_cov cov;

function new(string name="dram_env",uvm_component parent);
super.new(name,parent);
endfunction

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
agent1=dram_agent1::type_id::create("agent1",this);
agent2=dram_agent2::type_id::create("agent2",this);
sb=dram_sb::type_id::create("sb",this);
cov = dram_cov#(dram_seq_item)::type_id::create("cov",this);
endfunction

virtual function void connect_phase(uvm_phase phase);
super.connect_phase(phase);
agent1.mon1.item_collected_port.connect(sb.ip_fifo.analysis_export);
agent1.mon1.custom_ap.connect(cov.analysis_export);
agent2.mon2.item_collected_port1.connect(sb.op_fifo.analysis_export);
endfunction
endclass
