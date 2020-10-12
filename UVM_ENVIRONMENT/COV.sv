class dram_cov #(type T=dram_seq_item) extends uvm_subscriber #(T);
`uvm_component_utils(dram_cov)
//dram_seq_item pkt;
T pkt;

covergroup CovPort;	//@(posedge intf.clk);
  address : coverpoint pkt.add {
    bins low    = {[0:20]};
    bins med    = {[21:42]};
    bins high   = {[43:63]};
  }
  data : coverpoint  pkt.data_in {
    bins low    = {[0:50]};
    bins med    = {[51:150]};
    bins high   = {[151:255]};
  }
endgroup

function new (string name = "dram_cov", uvm_component parent);
      super.new (name, parent);
	  CovPort = new;
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
	//pkt=dram_seq_item::type_id::create("pkt");
    //CovPort = new("CovPort",this);
endfunction
	  
virtual function void write (T t);
	`uvm_info("SEQ","SEQUENCE TRANSACTIONS",UVM_NONE);
	pkt = t;
	CovPort.sample();
endfunction

endclass