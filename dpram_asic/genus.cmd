# Cadence Genus(TM) Synthesis Solution, Version 17.22-s017_1, built Apr  1 2018

# Date: Mon Nov 16 21:45:40 2020
# Host: IIITDMKEC-13 (x86_64 w/Linux 3.10.0-1062.el7.x86_64) (6cores*12cpus*1physical cpu*Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz 12288KB)
# OS:   Red Hat Enterprise Linux Server release 7.7 (Maipo)

read_lib "/home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib"
read_lib "/home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib"
read_lib "/home/install/FOUNDRY/digital/180nm/dig/lib/slow.lib"
read_hdl design.v
elaborate
read_sdc clocking.sdc
syn_generic
write_hdl
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge > delays.sdf
write_hdl
syn_map
write_hdl
report_power
report_area
report_gates
report_timing -unconstrained
report_timing -lint
write_hdl > dpram_netlist.v
write_sdc > dpram_sdc.sdc
gui_show
gui_show
report timing > dpram_timing.rep
report timing
report power > dpram_power.rep
report area > dpram_area.rep
report gates > dpram_gates.rep
history
exittttttttttttttttttttttttt
exit
