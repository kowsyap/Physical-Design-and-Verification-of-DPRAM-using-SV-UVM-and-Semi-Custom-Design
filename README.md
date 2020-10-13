# Memory Level Verification of DPRAM using SV and UVM

Memory Level Verification of Dual Port RAM using SystemVerilog and Universal Verification Methodology Environments with assertions,functional coverage and code coverage report

## Design

**Abstract :** Asynchronous multiprocessor systems require a means to transmit data between two independently running processors. Dual port memory provides a common memory accessible to both processors that can be used to share and transmit data and system status between the two processors. The DS1609 is a dual-port memory with 256 bytes of SRAM memory that is accessed via two separate 8-bit multiplexed address/data ports. 

**Definition :** Dual-port RAM (DPRAM) is a type of random-access memory that allows multiple reads or writes to occur at the same time, or nearly the same time, unlike single-port RAM which allows only one access at a time.

**Pin Diagram**

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/architecture/design.jpg)

#### Signals

* **clock signal         :** clk 
* **control signal       :** en
* **8-bit data inputs    :** data0_in,data1_in
* **6-bit address        :** add0,add1
* **write enable signals :** wr0,wr1
* **8-bit data outputs   :** data0_out,data1_out
