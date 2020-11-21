create_clock -name clk -period 10 -waveform {5.0 10.0} [get_ports "clk"]
set_clock_transition -rise 0.5 [get_clocks "clk"]
set_clock_transition -fall 0.5 [get_clocks "clk"]
set_clock_uncertainty 0.05 [get_ports "clk"]

set_input_delay -max 1.0 [all_inputs] -clock [get_clocks "clk"]

set_output_delay -max 1.0 [all_outputs] -clock [get_clocks "clk"]


