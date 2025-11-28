`default_nettype none


module efpga_core (
`ifdef USE_POWER_PINS
    inout vccd1,  // User area 1 1.8V supply
    inout vssd1,  // User area 1 digital ground
`endif

    // IOs
    /* verilator lint_off UNUSEDSIGNAL*/
    input  [27:0] io_in,
    output [27:0] io_out,
    output [27:0] io_oeb,
    /* verilator lint_off UNUSEDSIGNAL*/

    input clk,
    input resetn,

    input Rx,
    output ComActive,
    output ReceiveLED

);

	assign O_top = io_in;
	assign io_out = I_top;
	assign io_oeb = T_top;


    /* verilator lint_off UNUSEDSIGNAL*/
    wire [27:0] I_top;
    wire [27:0] T_top;
    wire [27:0] O_top;
    /* verilator lint_off UNUSEDSIGNAL*/


    eFPGA_top eFPGA_top_i (
`ifdef USE_POWER_PINS
        .vccd1(vccd1),  // User area 1 1.8V supply
        .vssd1(vssd1),  // User area 1 digital ground
`endif
        .CLK(clk),
        .resetn(resetn),
        /* verilator lint_off PINCONNECTEMPTY */
        .SelfWriteStrobe(),
        .SelfWriteData(),
        /* verilator lint_on PINCONNECTEMPTY */
        .Rx(Rx),
        .ComActive(ComActive),
        .ReceiveLED(ReceiveLED),
        /* verilator lint_off PINCONNECTEMPTY */
        .s_clk(),
        .s_data(),
        .A_config_C(),
        .B_config_C(),
        .Config_accessC(),
        /* verilator lint_on PINCONNECTEMPTY */
        .I_top(I_top),
        .O_top(O_top),
        .T_top(T_top)
    );


endmodule

`default_nettype wire

