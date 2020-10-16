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

**Design** [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Design/design.v)

**Testbench** [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Design/testbench.v)

**Graph**

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/graph3.PNG)

## VERIFICATION

Verification Environment is used to check the functional correctness of the Design Under Test (DUT) by generating and driving a predefined input sequence to a design, capturing the design output and comparing with-respect-to expected output.

* Verification is the process of experimenting our design with possible test scenarios.
* Verification contains many phases that includes Testcase generation, coverage, monitor ...,etc
* Before tape-out our design should be verified more than 90% successfully

In this project we used 2 different verification methodologies. They are:
* [**SV Verification**](#sv-environment)
* [**UVM Verification**](#uvm-environment)

## SV ENVIRONMENT

### Architecture

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/architecture/sv_architecture.jpg)

### Components and Hierarchy 
* **Mailbox :** Mailbox is a way to allow different processes to exchange data between each other
* **Base Packet :** It is a base class which contains variables or properties which need to be sent and received [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/pkt.sv)
* **Configurations :** It is a class with configurations to different test cases and command types [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/cfg.sv)
* **Tx Generator :**	Generates different input stimulus to be driven to DUT [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/txgen.sv)
* **Cover Group :** Covergroup is a user-defined type that encapsulates the specification of a coverage model. It checks the functional coverage of the model [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/cov.sv) 
* **Driver :**	Drives the generated stimulus to the design 
  - Driver1 -> Drives the stimulus to first port to write data [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/drv1.sv)
  - Driver2 -> Drives the stimulus to second port to read the previous written data [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/drv2.sv)
* **Monitor	:** Monitor the design input-output ports to capture design activity
  - Monitor1 -> Monitor the design input-output ports of first port [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/mon1.sv)
  - Monitor2 -> Monitor the design input-output ports of second port [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/mon2.sv)
* **Scoreboard :**	Checks output from the design with expected behavior from the driver or TxGen [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/sb.sv)
* **Environment	:** Contains all the verification components mentioned above [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/env.sv)
* **Test :**	Contains the environment that can be tweaked with different configuration settings [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/test.sv)
* **DUT :** DUT stands for Design Under Test and is the hardware design written in Verilog or VHDL [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/dut.sv)
* **Interface :**	Contains design signals that can be driven or monitored [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/interface.sv)
* **Top :** Contains all the components, assigns clock and assembles DUT and Test with Interface [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/SV_ENVIRONMENT/top.sv)


### Steps to Compile, Run and generate Coverage report

1. Open Questasim
2. Open project / Change the directory 
3. Go th transcript ad type
```
> vlib work
> vlog -coveropt 3 +cover +acc top.sv
> vsim -coverage -vopt work.top -c -do "coverage save -onexit -directive -codeAll coverage.ucdb; run 1000"
> vcover report -html coverage.ucdb
```

### Result

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/trans1a.PNG)

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/trans1b.PNG)

### Graph

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/graph1.PNG)

### Coverage

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/cover1.PNG)

### Report

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/report1.PNG)

## UVM ENVIRONMENT

The Universal Verification Methodology (UVM) is a standardized methodology for verifying integrated circuit designs. 

### Architecture

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/architecture/uvm_architecture.jpg)

### Components and Hierarchy

Here, used analysis ports to transfer data from one component to another

**OBJECTS :** 

* **UVM SEQUENCE ITEM :** The sequence-item defines the pin level activity generated by agent (to drive to DUT through the driver) or the activity has to be observed by agent (Placeholder for the activity monitored by the monitor on DUT signals). [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/SEQ_ITEM.sv)

* **UVM SEQUENCE :** Defines the sequence in which the data items need to be generated and sent/received to/from the driver. [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/SEQ.sv)

**COMPONENTS :**

* **UVM Agent :** UVM agent groups the uvm_components specific to an interface or protocol.  **Example:** groups the components associated with BFM(Bus Functional Model). 
    - Agent1 [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/AGENT1.sv)
    - Agent2 [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/AGENT2.sv)
    
The components of an agent are,

  1. **UVM DRIVER :** Responsible for driving the packet level data inside sequence_item into pin level (to DUT). Here, it drives sequence_item to first port to write and second port to read. [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/DRV.sv)

  2. **UVM SEQUENCER :** Responsible for routing the data packet’s(sequence_item) generated in sequence to the driver or vice verse.  [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/SEQR.sv)

  3. **UVM MONITOR :** Observes pin level activity on interface signals and converts into packet level which is sent to components such as scoreboards.
      - Monitor1 -> Monitors the inputs of first port [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/MON1.sv)
      - Monitor2 -> Monitors the output of second port [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/MON2.sv)
* **UVM Subscriber :** Could have functional coverage groups and coverpoints in a subscriber and have that sampled whenever it receives an object from the agent. [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/COV.sv)

* **UVM ScoreBoard :** Receives data item’s from monitor’s and compares with expected values. Expected values can be either golden reference values or generated from the reference model. [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/SB.sv)

* **UVM Environment :** The environment is a container component for grouping higher level components like agent’s, scoreboard and Covergroup(subscriber). [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/ENV.sv)

* **UVM test :** The test is the topmost class. [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/TEST.sv)
   - The test is responsible for configuring the testbench.
   - Initiate the testbench components construction process by building the next level down in the hierarchy ex: env.
   - Initiate the stimulus by starting the sequence.

* **DUT :** DUT stands for Design Under Test and is the hardware design written in Verilog or VHDL [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/DUT.sv)

* **Interface :**	Contains design signals that can be driven or monitored [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/INTERFACE.sv)

* **TOP :** Top is the module which assembles test, DUT and interface, assigns clock and runs the test [|source code|](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/UVM_ENVIRONMENT/TOP.sv)

### Steps to Compile, Run and generate Coverage report

1. Download UVM 1.1d library and save it in path: C:/questasim64_10.7c/verilog_src/ (assume questa version be 10.7c)
2. Open Questasim
3. Change dirctory / open project file
4. go to transcript and type
```
> vlog -coveropt 3 +cover +incdir+C:/questasim64_10.7c/verilog_src/uvm-1.1d/src +incdir+C:/questasim64_10.7c/verilog_src/uvm-1.1d/src C:/questasim64_10.7c/verilog_src/uvm-1.1d/src/uvm.sv  +incdir+. TOP.sv +define+UVM_NO_DPI
> vsim -coverage -vopt work.dram_top -c -do "coverage save -onexit -directive -codeAll coverage2.ucdb; run -all"
> vcover report -html coverage2.ucdb
```

### Result

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/trans2a.PNG)

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/trans2b.PNG)

### Graph

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/graph2.PNG)

### Coverage

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/cover2.PNG)

### Report

![](https://github.com/kowsyap/Memory-Level-Verification-of-DPRAM-using-SV-and-UVM/blob/main/Extras/report2.PNG)

```
For queries: 
Email: pranaykowsyap@gmail.com 
Instagram: pk_ledgar
linked in: https://www.linkedin.com/in/kowsyap-pranay-46779917b
```
