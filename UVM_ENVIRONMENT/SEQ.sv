class dram_seq extends uvm_sequence#(dram_seq_item);
`uvm_object_utils(dram_seq)
dram_seq_item pkt;
/*
integer num_txns;
string data1,addr1;

rand bit[7:0]datainout;
rand bit[5:0]addrinout;
logic [7:0]user_data[8]='{10,200,25,45,66,55,65,70};
logic [5:0]user_addr[8]='{06,16,26,36,46,56,57,58};
int i;
int j;*/

function new(string name="dram_seq");
super.new(name);
endfunction

/*task pre_body();
  //  super.build();
    void'(get_config_int("num_txns",num_txns));
    void'(get_config_string("addr1",addr1));
    void'(get_config_string("data1",data1));
    uvm_report_info(get_full_name(),$psprintf("num_txns %0d : addr1 %0s data1 %0s ",num_txns,addr1,data1),UVM_LOW);
endtask
*/
task body();
pkt=dram_seq_item::type_id::create("pkt");
repeat(10)
begin
start_item(pkt);
//pkt.add=calc_addr(addr1);
//pkt.data_in=calc_datain(data1);
assert(pkt.randomize());
pkt.wr=0;
pkt.print();
//$display("1 data_in=%d,add=%d,wr=%d",pkt.data_in,pkt.add,pkt.wr);
finish_item(pkt);

start_item(pkt);
pkt.wr=1;
pkt.print();
//$display("2 data_in=%d,add=%d,wr=%d",pkt.data_in,pkt.add,pkt.wr);
finish_item(pkt);

`uvm_info("SEQ","SEQUENCE TRANSACTIONS",UVM_NONE);
end
endtask
/*
function bit[7:0]calc_addr(string addr1);
begin

case(addr1)
	"random":begin addrinout=$random; return addrinout;end                                                                                                    
	"constant_addr":begin return addrinout;end
	"incremental":begin  return addrinout++;end
	"decremental":begin return addrinout--;end
	"userpattern":begin addrinout=user_addr[i++];return addrinout;end
endcase
end
endfunction


function bit[7:0]calc_datain(string data1);
begin

case(data1)
	"random1":begin datainout=$random; return datainout;end                                                                                                    
	"constant_data":begin return datainout;end
	"incremental1":begin  return datainout++;end
	"decremental1":begin return datainout--;end
	"userpattern1":begin datainout=user_data[j++];return datainout;end
endcase
end
endfunction
*/
endclass
