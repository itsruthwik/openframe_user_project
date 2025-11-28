module eFPGA_Config #(
	parameter NumberOfRows = 16,
	parameter RowSelectWidth = 5,
	parameter FrameBitsPerRow = 32,
	parameter desync_flag = 20,
	parameter FrameDataWidth = FrameBitsPerRow*(NumberOfRows+2)
)
(CLK, resetn, Rx, ComActive, ReceiveLED, FrameAddressRegister, LongFrameStrobe, FrameData);
	input CLK;
	input resetn;
	// UART configuration port
	input Rx;
	output ComActive;
	output ReceiveLED;
	
	output [FrameBitsPerRow-1:0] FrameAddressRegister;
	output LongFrameStrobe;
	output [FrameDataWidth-1:0] FrameData;

	wire [7:0] Command;
	wire [31:0] UART_WriteData;
	wire UART_WriteStrobe;
	wire UART_ComActive;
	wire UART_LED;
	
	wire FSM_Reset;

	reg [(NumberOfRows*FrameBitsPerRow)-1:0] FrameRegister;
	wire [RowSelectWidth-1:0] RowSelect;

	config_UART INST_config_UART (
	.CLK(CLK),
	.resetn(resetn),
	.Rx(Rx),
	.WriteData(UART_WriteData),
	.ComActive(UART_ComActive),
	.WriteStrobe(UART_WriteStrobe),
	.Command(Command),
	.ReceiveLED(UART_LED)
	);
	
	assign FSM_Reset = UART_ComActive;

	assign ComActive = UART_ComActive;
	assign ReceiveLED = UART_LED;   
	
	always @(posedge CLK or negedge resetn) begin
		if (!resetn) begin
			FrameRegister <= 0;
		end else if (UART_WriteStrobe && (RowSelect < NumberOfRows)) begin
			FrameRegister[(RowSelect-1)*FrameBitsPerRow +: FrameBitsPerRow] <= UART_WriteData;
		end
	end
	
	assign FrameData = {32'h12345678, FrameRegister, 32'h12345678};
	
//	wire [FrameBitsPerRow-1:0] FrameAddressRegister;
//	wire LongFrameStrobe;
//	wire [RowSelectWidth-1:0] RowSelect;
	
	ConfigFSM #(
	.NumberOfRows(NumberOfRows),
	.RowSelectWidth(RowSelectWidth),
	.FrameBitsPerRow(FrameBitsPerRow),
	.desync_flag(desync_flag)
	)
	ConfigFSM_inst
	(.CLK(CLK),
	.resetn(resetn),
	.WriteData(UART_WriteData),
	.WriteStrobe(UART_WriteStrobe),
	.FSM_Reset(FSM_Reset),
	//outputs
	.FrameAddressRegister(FrameAddressRegister),
	.LongFrameStrobe(LongFrameStrobe),
	.RowSelect(RowSelect)
	);
	
endmodule