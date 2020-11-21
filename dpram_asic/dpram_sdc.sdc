# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.22-s017_1 on Mon Nov 16 23:01:49 IST 2020

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design dpram

create_clock -name "clk" -period 10.0 -waveform {5.0 10.0} [get_ports clk]
set_clock_transition 0.5 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -network_latency_included -add_delay -rise -min 0.0 [get_ports clk]
set_input_delay -clock [get_clocks clk] -clock_fall -network_latency_included -add_delay -fall -min 0.0 [get_ports clk]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports clk]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports wr0]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports wr1]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports en]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_in[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_in[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add0[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add0[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add0[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add0[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add0[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add0[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add1[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add1[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add1[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add1[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add1[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {add1[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data0_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {data1_out[0]}]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells tsmc18/RF1R1WX2]
set_dont_use [get_lib_cells tsmc18/RF2R1WX2]
set_dont_use [get_lib_cells tsmc18/RFRDX1]
set_dont_use [get_lib_cells tsmc18/RFRDX2]
set_dont_use [get_lib_cells tsmc18/RFRDX4]
set_dont_use [get_lib_cells tsmc18/TIEHI]
set_dont_use [get_lib_cells tsmc18/TIELO]
set_clock_uncertainty -setup 0.05 [get_ports clk]
set_clock_uncertainty -hold 0.05 [get_ports clk]
