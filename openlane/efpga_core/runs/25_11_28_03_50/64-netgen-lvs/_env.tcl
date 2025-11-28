set ::env(STEP_ID) Netgen.LVS
set ::env(TECH_LEF) /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
set ::env(MACRO_LEFS) ""
set ::env(STD_CELL_LIBRARY) sky130_fd_sc_hd
set ::env(VDD_PIN) VPWR
set ::env(VDD_PIN_VOLTAGE) 1.80
set ::env(GND_PIN) VGND
set ::env(TECH_LEFS) "\"nom_*\" /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef \"min_*\" /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__min.tlef \"max_*\" /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__max.tlef"
set ::env(GPIO_PADS_LEF) "/mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_io/lef/sky130_fd_io.lef /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_io/lef/sky130_ef_io.lef"
set ::env(GPIO_PADS_LEF_CORE_SIDE) "/mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.tech/openlane/custom_cells/lef/sky130_fd_io_core.lef /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.tech/openlane/custom_cells/lef/sky130_ef_io_core.lef"
set ::env(GPIO_PADS_VERILOG) /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_io/verilog/sky130_ef_io.v
set ::env(GPIO_PAD_CELLS) "\"sky130_fd_io*\" \"sky130_ef_io*\""
set ::env(PRIMARY_GDSII_STREAMOUT_TOOL) magic
set ::env(DEFAULT_CORNER) nom_tt_025C_1v80
set ::env(STA_CORNERS) "nom_tt_025C_1v80 nom_ss_100C_1v60 nom_ff_n40C_1v95 min_tt_025C_1v80 min_ss_100C_1v60 min_ff_n40C_1v95 max_tt_025C_1v80 max_ss_100C_1v60 max_ff_n40C_1v95"
set ::env(FP_TRACKS_INFO) /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/tracks.info
set ::env(FP_TAPCELL_DIST) 13
set ::env(FP_IO_HLAYER) met3
set ::env(FP_IO_VLAYER) met2
set ::env(RT_MIN_LAYER) met1
set ::env(RT_MAX_LAYER) met4
set ::env(SCL_GROUND_PINS) "VGND VNB"
set ::env(SCL_POWER_PINS) "VPWR VPB"
set ::env(TRISTATE_CELLS) "\"sky130_fd_sc_hd__ebuf*\""
set ::env(FILL_CELL) "\"sky130_fd_sc_hd__fill*\""
set ::env(DECAP_CELL) sky130_ef_sc_hd__decap_40_12
set ::env(LIB) "\"*_tt_025C_1v80\" /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib \"*_ss_100C_1v60\" /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib \"*_ff_n40C_1v95\" /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib"
set ::env(CELL_LEFS) "/mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_ef_sc_hd.lef"
set ::env(CELL_GDS) /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
set ::env(CELL_VERILOG_MODELS) "/mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v"
set ::env(CELL_BB_VERILOG_MODELS) "/mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd__blackbox.v /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd__blackbox_pp.v"
set ::env(CELL_SPICE_MODELS) "/mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_12.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_20_12.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_40_12.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_60_12.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_80_12.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_12.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_2.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_4.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_8.spice /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice"
set ::env(SYNTH_EXCLUDED_CELL_FILE) /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/no_synth.cells
set ::env(PNR_EXCLUDED_CELL_FILE) /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.tech/openlane/sky130_fd_sc_hd/drc_exclude.cells
set ::env(OUTPUT_CAP_LOAD) 33.442
set ::env(MAX_FANOUT_CONSTRAINT) 10
set ::env(MAX_TRANSITION_CONSTRAINT) 1.5
set ::env(MAX_CAPACITANCE_CONSTRAINT) 0.2
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.1499999999999999944488848768742172978818416595458984375
set ::env(TIME_DERATING_CONSTRAINT) 5
set ::env(IO_DELAY_CONSTRAINT) 20
set ::env(SYNTH_DRIVING_CELL) sky130_fd_sc_hd__inv_2/Y
set ::env(SYNTH_TIEHI_CELL) sky130_fd_sc_hd__conb_1/HI
set ::env(SYNTH_TIELO_CELL) sky130_fd_sc_hd__conb_1/LO
set ::env(SYNTH_BUFFER_CELL) sky130_fd_sc_hd__buf_2/A/X
set ::env(WELLTAP_CELL) sky130_fd_sc_hd__tapvpwrvgnd_1
set ::env(ENDCAP_CELL) sky130_fd_sc_hd__decap_3
set ::env(PLACE_SITE) unithd
set ::env(CELL_PAD_EXCLUDE) "\"sky130_fd_sc_hd__tap*\" \"sky130_fd_sc_hd__decap*\" \"sky130_ef_sc_hd__decap*\" \"sky130_fd_sc_hd__fill*\""
set ::env(DIODE_CELL) sky130_fd_sc_hd__diode_2/DIODE
set ::env(DESIGN_NAME) efpga_core
set ::env(CLOCK_PERIOD) 40
set ::env(CLOCK_PORT) clk
set ::env(CLOCK_NET) clk
set ::env(VDD_NETS) vccd1
set ::env(GND_NETS) vssd1
set ::env(DIE_AREA) "0 0 2920 3520"
set ::env(EXTRA_LEFS) "/mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/BlockRAM_1KB.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/DSP.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/LUT4AB.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/N_term_DSP.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/N_term_RAM_IO.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/N_term_single.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/N_term_single2.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/RAM_IO.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/RegFile.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/S_term_DSP.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/S_term_RAM_IO.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/S_term_single.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/S_term_single2.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/W_IO.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/eFPGA_Config.lef /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lef/sky130_sram_1kbyte_1rw1r_32x256_8.lef"
set ::env(EXTRA_VERILOG_MODELS) "/mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/BB/BlockRAM_1KB.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/BB/eFPGA_Config.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/BB/sky130_sram_1kbyte_1rw1r_32x256_8.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/DSP/DSP.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/LUT4AB/LUT4AB.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/N_term_DSP/N_term_DSP.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/N_term_RAM_IO/N_term_RAM_IO.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/N_term_single/N_term_single.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/N_term_single2/N_term_single2.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/RAM_IO/RAM_IO.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/RegFile/RegFile.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/S_term_DSP/S_term_DSP.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/S_term_RAM_IO/S_term_RAM_IO.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/S_term_single/S_term_single.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/S_term_single2/S_term_single2.v /mnt/vault0/rsunketa/openframe_user_project/efpga_core/verilog/rtl/Tile/W_IO/W_IO.v"
set ::env(EXTRA_LIBS) "/mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/BlockRAM_1KB.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/DSP.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/LUT4AB.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/N_term_DSP.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/N_term_RAM_IO.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/N_term_single.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/N_term_single2.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/RAM_IO.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/RegFile.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/S_term_DSP.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/S_term_RAM_IO.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/S_term_single.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/S_term_single2.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/W_IO.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/eFPGA_Config.lib /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/lib/sky130_sram_1kbyte_1rw1r_32x256_8_TT_1p8V_25C.lib"
set ::env(EXTRA_GDS_FILES) "/mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/BlockRAM_1KB.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/DSP.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/LUT4AB.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/N_term_DSP.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/N_term_RAM_IO.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/N_term_single.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/N_term_single2.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/RAM_IO.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/RegFile.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/S_term_DSP.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/S_term_RAM_IO.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/S_term_single.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/S_term_single2.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/W_IO.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/eFPGA_Config.gds /mnt/vault0/rsunketa/openframe_user_project/efpga_core/macro/gds/sky130_sram_1kbyte_1rw1r_32x256_8.gds"
set ::env(FALLBACK_SDC_FILE) /mnt/vault0/rsunketa/openframe_user_project/openlane/efpga_core/base_user_project_wrapper.sdc
set ::env(MAGIC_EXT_USE_GDS) 0
set ::env(NETGEN_SETUP) /mnt/vault0/rsunketa/openframe_user_project/dependencies/pdks/sky130A/libs.tech/netgen/sky130A_setup.tcl
set ::env(LVS_INCLUDE_MARCO_NETLISTS) 0
set ::env(CURRENT_SPICE) /mnt/vault0/rsunketa/openframe_user_project/openlane/efpga_core/runs/25_11_28_03_50/62-magic-spiceextraction/efpga_core.spice
set ::env(CURRENT_POWERED_NETLIST) /mnt/vault0/rsunketa/openframe_user_project/openlane/efpga_core/runs/25_11_28_03_50/52-openroad-fillinsertion/efpga_core.pnl.v
