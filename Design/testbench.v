module dpram_tb;

reg clk,en,wr0,wr1;
reg[7:0] data0_in,data1_in;
reg[5:0] add0,add1;
wire[7:0] data0_out,data1_out;
integer i;

dpram dut(.clk(clk),.wr0(wr0),.wr1(wr1),.en(en),
		  .data0_in(data0_in),.data1_in(data1_in),
		  .add0(add0),.add1(add1),
		  .data0_out(data0_out),.data1_out(data1_out));

always #5 clk = ~clk;

initial begin
        // Initialize Inputs
        clk = 0;
        en = 0;
		add0 = 0;
        add1 = 0;
        wr0 = 0;
        wr1 = 0;
        data0_in = 0;
        data1_in = 0;
        #20;
        //Write in the locations of DPRAM
        en = 1;  
        wr0 = 0;
      for(i=1; i <= 8; i = i + 1) begin
            data0_in = $random;
            add0 = i-1;
            #10;
      end
        wr1 = 1;
        //Read from second port from the locations of DPRAM.
      for(i=1; i <= 8; i = i + 1) begin
            add1 = i-1;
            #10;
      end
		wr1 = 0;
        en = 0;
end
      
endmodule