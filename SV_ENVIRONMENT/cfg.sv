`ifndef _config_
`define _config_

typedef enum{BURST_RD,BURST_WR, WR_RD}cmd_type;
typedef enum{random,constant_addr,incremental,decremental,userpattern}addr_type;
typedef enum{random1,constant_data,incremental1,decremental1,userpattern1}data_type;


class configuration;
rand cmd_type cmd;
rand addr_type addr1;
rand data_type data1;
int num_txns;


rand bit[7:0]txdata;
rand bit[5:0]txaddr;

logic [7:0]user_data[8]='{10,200,25,45,66,55,65,70};
logic [5:0]user_addr[8]='{06,16,26,36,46,56,57,58};

endclass
`endif
