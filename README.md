# Memory Level Verification of DPRAM using SV and UVM

Memory Level Verification of Dual Port RAM using SystemVerilog and Universal Verification Methodology Environments with assertions,functional coverage and code coverage report

## Design

**Abstract :** Asynchronous multiprocessor systems require a means to transmit data between two independently running processors. Dual port memory provides a common memory accessible to both processors that can be used to share and transmit data and system status between the two processors. The DS1609 is a dual-port memory with 256 bytes of SRAM memory that is accessed via two separate 8-bit multiplexed address/data ports. 

**Definition :** Dual-port RAM (DPRAM) is a type of random-access memory that allows multiple reads or writes to occur at the same time, or nearly the same time, unlike single-port RAM which allows only one access at a time.

### Pin Diagram

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/architecture/design.jpg)

### Signals

* **clock signal         :** clk 
* **control signal       :** en
* **8-bit data inputs    :** data0_in,data1_in
* **6-bit address        :** add0,add1
* **write enable signals :** wr0,wr1
* **8-bit data outputs   :** data0_out,data1_out

## VERIFICATION

Verification Environment is used to check the functional correctness of the Design Under Test (DUT) by generating and driving a predefined input sequence to a design, capturing the design output and comparing with-respect-to expected output.

* Verification is the process of experimenting our design with possible test scenarios.
* Verification contains many phases that includes Testcase generation, coverage, monitor ...,etc
* Before tape-out our design should be verified more than 90% successfully

## SV ENVIRONMENT

### Architecture

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/architecture/sv_architecture.jpg)

### Components and Hierarchy 
* **Mailbox :** Mailbox is a way to allow different processes to exchange data between each other
* **Base Packet :** It is a base class which contains variables or properties which need to be sent and received [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/pkt.sv)
* ** Configurations :** It is a class with configurations to different test cases and command types [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/cfg.sv)
* **Tx Generator :**	Generates different input stimulus to be driven to DUT [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/txgen.sv)
* **Cover Group :** Covergroup is a user-defined type that encapsulates the specification of a coverage model. It checks the functional coverage of the model [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/cov.sv) 
* **Driver :**	Drives the generated stimulus to the design 
  - Driver1 -> Drives the stimulus to first port to write data [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/drv1.sv)
  - Driver2 -> Drives the stimulus to second port to read the previous written data [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/drv2.sv)
* **Monitor	:** Monitor the design input-output ports to capture design activity
  - Monitor1 -> Monitor the design input-output ports of first port [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/mon1.sv)
  - Monitor1 -> Monitor the design input-output ports of second port [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/mon2.sv)
* **Scoreboard :**	Checks output from the design with expected behavior from the driver or TxGen [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/sb.sv)
* **Environment	:** Contains all the verification components mentioned above [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/env.sv)
* **Test :**	Contains the environment that can be tweaked with different configuration settings [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/test.sv)
* **DUT :** DUT stands for Design Under Test and is the hardware design written in Verilog or VHDL [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/dut.sv)
* **Interface :**	Contains design signals that can be driven or monitored [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/interface.sv)
* **Top :** Contains all the components, assigns clock and assembles DUT and Test with Interface [<sounce code>](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/top.sv)


