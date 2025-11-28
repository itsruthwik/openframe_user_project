###############################################################################
# Created by write_sdc
###############################################################################
current_design efpga_core
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 40.0000 
set_clock_uncertainty 0.2500 clk
create_clock -name jtag_clk -period 200.0000 
set_clock_uncertainty 0.2500 jtag_clk
set_clock_groups -name clock_group -logically_exclusive \
 -group [get_clocks {clk}]\
 -group [get_clocks {jtag_clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {ComActive}]
set_load -pin_load 0.1900 [get_ports {ReceiveLED}]
set_load -pin_load 0.1900 [get_ports {io_oeb[27]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[26]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[25]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[24]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[23]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[22]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[21]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[20]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[19]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[18]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[17]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[16]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[15]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[14]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[13]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[12]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[11]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[10]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[9]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[8]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[7]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[6]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[5]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[4]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[3]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[2]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[1]}]
set_load -pin_load 0.1900 [get_ports {io_oeb[0]}]
set_load -pin_load 0.1900 [get_ports {io_out[27]}]
set_load -pin_load 0.1900 [get_ports {io_out[26]}]
set_load -pin_load 0.1900 [get_ports {io_out[25]}]
set_load -pin_load 0.1900 [get_ports {io_out[24]}]
set_load -pin_load 0.1900 [get_ports {io_out[23]}]
set_load -pin_load 0.1900 [get_ports {io_out[22]}]
set_load -pin_load 0.1900 [get_ports {io_out[21]}]
set_load -pin_load 0.1900 [get_ports {io_out[20]}]
set_load -pin_load 0.1900 [get_ports {io_out[19]}]
set_load -pin_load 0.1900 [get_ports {io_out[18]}]
set_load -pin_load 0.1900 [get_ports {io_out[17]}]
set_load -pin_load 0.1900 [get_ports {io_out[16]}]
set_load -pin_load 0.1900 [get_ports {io_out[15]}]
set_load -pin_load 0.1900 [get_ports {io_out[14]}]
set_load -pin_load 0.1900 [get_ports {io_out[13]}]
set_load -pin_load 0.1900 [get_ports {io_out[12]}]
set_load -pin_load 0.1900 [get_ports {io_out[11]}]
set_load -pin_load 0.1900 [get_ports {io_out[10]}]
set_load -pin_load 0.1900 [get_ports {io_out[9]}]
set_load -pin_load 0.1900 [get_ports {io_out[8]}]
set_load -pin_load 0.1900 [get_ports {io_out[7]}]
set_load -pin_load 0.1900 [get_ports {io_out[6]}]
set_load -pin_load 0.1900 [get_ports {io_out[5]}]
set_load -pin_load 0.1900 [get_ports {io_out[4]}]
set_load -pin_load 0.1900 [get_ports {io_out[3]}]
set_load -pin_load 0.1900 [get_ports {io_out[2]}]
set_load -pin_load 0.1900 [get_ports {io_out[1]}]
set_load -pin_load 0.1900 [get_ports {io_out[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 1.5000 [current_design]
set_max_fanout 10.0000 [current_design]
