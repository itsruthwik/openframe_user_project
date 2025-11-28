module eFPGA_top
    #(
        parameter include_eFPGA=1,
        parameter NumberOfRows=10,
        parameter NumberOfCols=10,
        parameter FrameBitsPerRow=32,
        parameter MaxFramesPerCol=20,
        parameter desync_flag=20,
        parameter FrameSelectWidth=5,
        parameter RowSelectWidth=5
    )
    (
        //External IO port
        output [15:0] I_top,
        input [15:0] O_top,
        output [15:0] T_top,
        //Config related ports
        input CLK,
        input resetn,
        input Rx,
        output ComActive,
        output ReceiveLED
);

 //Signal declarations
wire[(MaxFramesPerCol*NumberOfCols)-1:0] FrameSelect;
wire[(FrameBitsPerRow*(NumberOfRows+2))-1:0] FrameData;
wire[FrameBitsPerRow-1:0] FrameAddressRegister;
wire LongFrameStrobe;

eFPGA_Config
    #(
    .RowSelectWidth(RowSelectWidth),
    .NumberOfRows(NumberOfRows),
    .desync_flag(desync_flag),
    .FrameBitsPerRow(FrameBitsPerRow)
    )
    eFPGA_Config_inst
    (
    .CLK(CLK),
    .resetn(resetn),
    .Rx(Rx),
    .ComActive(ComActive),
    .ReceiveLED(ReceiveLED),
    .FrameAddressRegister(FrameAddressRegister),
    .LongFrameStrobe(LongFrameStrobe),
    .FrameData(FrameData)
);


Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(0)
    )
    inst_Frame_Select_0
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[0*MaxFramesPerCol+MaxFramesPerCol-1:0*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(1)
    )
    inst_Frame_Select_1
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[1*MaxFramesPerCol+MaxFramesPerCol-1:1*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(2)
    )
    inst_Frame_Select_2
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[2*MaxFramesPerCol+MaxFramesPerCol-1:2*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(3)
    )
    inst_Frame_Select_3
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[3*MaxFramesPerCol+MaxFramesPerCol-1:3*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(4)
    )
    inst_Frame_Select_4
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[4*MaxFramesPerCol+MaxFramesPerCol-1:4*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(5)
    )
    inst_Frame_Select_5
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[5*MaxFramesPerCol+MaxFramesPerCol-1:5*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(6)
    )
    inst_Frame_Select_6
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[6*MaxFramesPerCol+MaxFramesPerCol-1:6*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(7)
    )
    inst_Frame_Select_7
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[7*MaxFramesPerCol+MaxFramesPerCol-1:7*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(8)
    )
    inst_Frame_Select_8
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[8*MaxFramesPerCol+MaxFramesPerCol-1:8*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);

Frame_Select
    #(
    .MaxFramesPerCol(MaxFramesPerCol),
    .FrameSelectWidth(FrameSelectWidth),
    .Col(9)
    )
    inst_Frame_Select_9
    (
    .FrameStrobe_I(FrameAddressRegister[MaxFramesPerCol-1:0]),
    .FrameStrobe_O(FrameSelect[9*MaxFramesPerCol+MaxFramesPerCol-1:9*MaxFramesPerCol]),
    .FrameSelect(FrameAddressRegister[FrameBitsPerRow-1:FrameBitsPerRow-FrameSelectWidth]),
    .FrameStrobe(LongFrameStrobe)
);


eFPGA eFPGA_inst (
    .Tile_X2Y11_B_I_top(I_top[0]),
    .Tile_X2Y11_A_I_top(I_top[1]),
    .Tile_X5Y11_B_I_top(I_top[2]),
    .Tile_X5Y11_A_I_top(I_top[3]),
    .Tile_X8Y11_B_I_top(I_top[4]),
    .Tile_X8Y11_A_I_top(I_top[5]),
    .Tile_X0Y10_B_I_top(I_top[6]),
    .Tile_X0Y10_A_I_top(I_top[7]),
    .Tile_X0Y7_B_I_top(I_top[8]),
    .Tile_X0Y7_A_I_top(I_top[9]),
    .Tile_X0Y4_B_I_top(I_top[10]),
    .Tile_X0Y4_A_I_top(I_top[11]),
    .Tile_X0Y1_B_I_top(I_top[12]),
    .Tile_X0Y1_A_I_top(I_top[13]),
    .Tile_X2Y11_B_O_top(O_top[0]),
    .Tile_X2Y11_A_O_top(O_top[1]),
    .Tile_X5Y11_B_O_top(O_top[2]),
    .Tile_X5Y11_A_O_top(O_top[3]),
    .Tile_X8Y11_B_O_top(O_top[4]),
    .Tile_X8Y11_A_O_top(O_top[5]),
    .Tile_X0Y10_B_O_top(O_top[6]),
    .Tile_X0Y10_A_O_top(O_top[7]),
    .Tile_X0Y7_B_O_top(O_top[8]),
    .Tile_X0Y7_A_O_top(O_top[9]),
    .Tile_X0Y4_B_O_top(O_top[10]),
    .Tile_X0Y4_A_O_top(O_top[11]),
    .Tile_X0Y1_B_O_top(O_top[12]),
    .Tile_X0Y1_A_O_top(O_top[13]),
    .Tile_X2Y11_B_T_top(T_top[0]),
    .Tile_X2Y11_A_T_top(T_top[1]),
    .Tile_X5Y11_B_T_top(T_top[2]),
    .Tile_X5Y11_A_T_top(T_top[3]),
    .Tile_X8Y11_B_T_top(T_top[4]),
    .Tile_X8Y11_A_T_top(T_top[5]),
    .Tile_X0Y10_B_T_top(T_top[6]),
    .Tile_X0Y10_A_T_top(T_top[7]),
    .Tile_X0Y7_B_T_top(T_top[8]),
    .Tile_X0Y7_A_T_top(T_top[9]),
    .Tile_X0Y4_B_T_top(T_top[10]),
    .Tile_X0Y4_A_T_top(T_top[11]),
    .Tile_X0Y1_B_T_top(T_top[12]),
    .Tile_X0Y1_A_T_top(T_top[13]),
    .UserCLK(CLK),
    .FrameData(FrameData),
    .FrameStrobe(FrameSelect)
);


endmodule