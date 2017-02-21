////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ALUControl_map.v
// /___/   /\     Timestamp: Wed Jan 25 15:04:07 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf ALUControl.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim ALUControl_map.ncd ALUControl_map.v 
// Device	: 3s500efg320-5 (PRODUCTION 1.27 2013-10-13)
// Input file	: ALUControl_map.ncd
// Output file	: D:\CECS341\lab2b\netgen\map\ALUControl_map.v
// # of Modules	: 1
// Design Name	: ALUControl
// Xilinx        : D:\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ALUControl (
ALUoperation, ALUOp, OpCodefield
);
  output [3 : 0] ALUoperation;
  input [1 : 0] ALUOp;
  input [10 : 0] OpCodefield;
  wire OpCodefield_10_IBUF_128;
  wire OpCodefield_0_IBUF_129;
  wire OpCodefield_1_IBUF_130;
  wire OpCodefield_2_IBUF_131;
  wire OpCodefield_3_IBUF_132;
  wire OpCodefield_4_IBUF_133;
  wire OpCodefield_5_IBUF_134;
  wire OpCodefield_6_IBUF_135;
  wire OpCodefield_8_IBUF_137;
  wire OpCodefield_9_IBUF_138;
  wire ALUOp_0_IBUF_142;
  wire ALUOp_1_IBUF_144;
  wire \ALUoperation<1>_bdd0 ;
  wire \ALUoperation<0>_bdd1_0 ;
  wire \ALUoperation<0>_bdd14 ;
  wire \ALUoperation<0>_bdd4 ;
  wire \ALUoperation<0>_bdd2_0 ;
  wire \ALUoperation<0>_bdd8 ;
  wire N01_0;
  wire \OpCodefield<0>/INBUF ;
  wire \OpCodefield<1>/INBUF ;
  wire \OpCodefield<10>/INBUF ;
  wire \OpCodefield<9>/INBUF ;
  wire \ALUoperation<0>/O ;
  wire \ALUoperation<1>/O ;
  wire \OpCodefield<5>/INBUF ;
  wire \OpCodefield<3>/INBUF ;
  wire \ALUoperation<2>/O ;
  wire \OpCodefield<6>/INBUF ;
  wire \ALUOp<0>/INBUF ;
  wire \OpCodefield<8>/INBUF ;
  wire \OpCodefield<2>/INBUF ;
  wire \OpCodefield<7>/INBUF ;
  wire \OpCodefield<4>/INBUF ;
  wire \ALUOp<1>/INBUF ;
  wire \ALUoperation<0>_bdd1 ;
  wire \ALUoperation<0>_bdd4_pack_1 ;
  wire \ALUoperation_0_OBUF/F5MUX_335 ;
  wire \ALUoperation<0>1 ;
  wire \ALUoperation_0_OBUF/BXINV_328 ;
  wire \ALUoperation<0>11_326 ;
  wire \ALUoperation_2_OBUF/F5MUX_285 ;
  wire N14;
  wire \ALUoperation_2_OBUF/BXINV_277 ;
  wire N13;
  wire \ALUoperation<3>/O ;
  wire \ALUoperation<0>_bdd8/F5MUX_360 ;
  wire \ALUoperation<0>_bdd8/F ;
  wire \ALUoperation<0>_bdd8/BXINV_349 ;
  wire \ALUoperation<0>6 ;
  wire \ALUoperation_3_OBUF/F5MUX_310 ;
  wire N12;
  wire \ALUoperation_3_OBUF/BXINV_303 ;
  wire N11;
  wire \ALUoperation<0>_bdd14/F5MUX_385 ;
  wire \ALUoperation<0>_bdd14/F ;
  wire \ALUoperation<0>_bdd14/BXINV_374 ;
  wire \ALUoperation<0>10 ;
  wire ALUoperation_1_OBUF_408;
  wire \ALUoperation<1>_bdd0_pack_1 ;
  wire N01;
  wire \ALUoperation<0>_bdd2 ;
  wire VCC;
  initial $sdf_annotate("netgen/map/alucontrol_map.sdf");
  X_IPAD   \OpCodefield<0>/PAD  (
    .PAD(OpCodefield[0])
  );
  X_BUF   OpCodefield_0_IBUF (
    .I(OpCodefield[0]),
    .O(\OpCodefield<0>/INBUF )
  );
  X_IPAD   \OpCodefield<1>/PAD  (
    .PAD(OpCodefield[1])
  );
  X_BUF   OpCodefield_1_IBUF (
    .I(OpCodefield[1]),
    .O(\OpCodefield<1>/INBUF )
  );
  X_IPAD   \OpCodefield<10>/PAD  (
    .PAD(OpCodefield[10])
  );
  X_BUF   OpCodefield_10_IBUF (
    .I(OpCodefield[10]),
    .O(\OpCodefield<10>/INBUF )
  );
  X_IPAD   \OpCodefield<9>/PAD  (
    .PAD(OpCodefield[9])
  );
  X_BUF   OpCodefield_9_IBUF (
    .I(OpCodefield[9]),
    .O(\OpCodefield<9>/INBUF )
  );
  X_OPAD   \ALUoperation<0>/PAD  (
    .PAD(ALUoperation[0])
  );
  X_OBUF   ALUoperation_0_OBUF (
    .I(\ALUoperation<0>/O ),
    .O(ALUoperation[0])
  );
  X_OPAD   \ALUoperation<1>/PAD  (
    .PAD(ALUoperation[1])
  );
  X_OBUF   ALUoperation_1_OBUF (
    .I(\ALUoperation<1>/O ),
    .O(ALUoperation[1])
  );
  X_IPAD   \OpCodefield<5>/PAD  (
    .PAD(OpCodefield[5])
  );
  X_BUF   OpCodefield_5_IBUF (
    .I(OpCodefield[5]),
    .O(\OpCodefield<5>/INBUF )
  );
  X_IPAD   \OpCodefield<3>/PAD  (
    .PAD(OpCodefield[3])
  );
  X_BUF   OpCodefield_3_IBUF (
    .I(OpCodefield[3]),
    .O(\OpCodefield<3>/INBUF )
  );
  X_OPAD   \ALUoperation<2>/PAD  (
    .PAD(ALUoperation[2])
  );
  X_OBUF   ALUoperation_2_OBUF (
    .I(\ALUoperation<2>/O ),
    .O(ALUoperation[2])
  );
  X_IPAD   \OpCodefield<6>/PAD  (
    .PAD(OpCodefield[6])
  );
  X_BUF   OpCodefield_6_IBUF (
    .I(OpCodefield[6]),
    .O(\OpCodefield<6>/INBUF )
  );
  X_IPAD   \ALUOp<0>/PAD  (
    .PAD(ALUOp[0])
  );
  X_BUF   ALUOp_0_IBUF (
    .I(ALUOp[0]),
    .O(\ALUOp<0>/INBUF )
  );
  X_IPAD   \OpCodefield<8>/PAD  (
    .PAD(OpCodefield[8])
  );
  X_BUF   OpCodefield_8_IBUF (
    .I(OpCodefield[8]),
    .O(\OpCodefield<8>/INBUF )
  );
  X_IPAD   \OpCodefield<2>/PAD  (
    .PAD(OpCodefield[2])
  );
  X_BUF   OpCodefield_2_IBUF (
    .I(OpCodefield[2]),
    .O(\OpCodefield<2>/INBUF )
  );
  X_IPAD   \OpCodefield<7>/PAD  (
    .PAD(OpCodefield[7])
  );
  X_BUF   OpCodefield_7_IBUF (
    .I(OpCodefield[7]),
    .O(\OpCodefield<7>/INBUF )
  );
  X_IPAD   \OpCodefield<4>/PAD  (
    .PAD(OpCodefield[4])
  );
  X_BUF   OpCodefield_4_IBUF (
    .I(OpCodefield[4]),
    .O(\OpCodefield<4>/INBUF )
  );
  X_IPAD   \ALUOp<1>/PAD  (
    .PAD(ALUOp[1])
  );
  X_BUF   ALUOp_1_IBUF (
    .I(ALUOp[1]),
    .O(\ALUOp<1>/INBUF )
  );
  X_BUF   \ALUoperation<0>_bdd1/XUSED  (
    .I(\ALUoperation<0>_bdd1 ),
    .O(\ALUoperation<0>_bdd1_0 )
  );
  X_BUF   \ALUoperation<0>_bdd1/YUSED  (
    .I(\ALUoperation<0>_bdd4_pack_1 ),
    .O(\ALUoperation<0>_bdd4 )
  );
  X_MUX2   \ALUoperation_0_OBUF/F5MUX  (
    .IA(\ALUoperation<0>11_326 ),
    .IB(\ALUoperation<0>1 ),
    .SEL(\ALUoperation_0_OBUF/BXINV_328 ),
    .O(\ALUoperation_0_OBUF/F5MUX_335 )
  );
  X_BUF   \ALUoperation_0_OBUF/BXINV  (
    .I(OpCodefield_3_IBUF_132),
    .O(\ALUoperation_0_OBUF/BXINV_328 )
  );
  X_MUX2   \ALUoperation_2_OBUF/F5MUX  (
    .IA(N13),
    .IB(N14),
    .SEL(\ALUoperation_2_OBUF/BXINV_277 ),
    .O(\ALUoperation_2_OBUF/F5MUX_285 )
  );
  X_BUF   \ALUoperation_2_OBUF/BXINV  (
    .I(ALUOp_1_IBUF_144),
    .O(\ALUoperation_2_OBUF/BXINV_277 )
  );
  X_OPAD   \ALUoperation<3>/PAD  (
    .PAD(ALUoperation[3])
  );
  X_OBUF   ALUoperation_3_OBUF (
    .I(\ALUoperation<3>/O ),
    .O(ALUoperation[3])
  );
  X_BUF   \ALUoperation<0>_bdd8/XUSED  (
    .I(\ALUoperation<0>_bdd8/F5MUX_360 ),
    .O(\ALUoperation<0>_bdd8 )
  );
  X_MUX2   \ALUoperation<0>_bdd8/F5MUX  (
    .IA(\ALUoperation<0>6 ),
    .IB(\ALUoperation<0>_bdd8/F ),
    .SEL(\ALUoperation<0>_bdd8/BXINV_349 ),
    .O(\ALUoperation<0>_bdd8/F5MUX_360 )
  );
  X_BUF   \ALUoperation<0>_bdd8/BXINV  (
    .I(\OpCodefield<7>/INBUF ),
    .O(\ALUoperation<0>_bdd8/BXINV_349 )
  );
  X_MUX2   \ALUoperation_3_OBUF/F5MUX  (
    .IA(N11),
    .IB(N12),
    .SEL(\ALUoperation_3_OBUF/BXINV_303 ),
    .O(\ALUoperation_3_OBUF/F5MUX_310 )
  );
  X_BUF   \ALUoperation_3_OBUF/BXINV  (
    .I(OpCodefield_3_IBUF_132),
    .O(\ALUoperation_3_OBUF/BXINV_303 )
  );
  X_BUF   \ALUoperation<0>_bdd14/XUSED  (
    .I(\ALUoperation<0>_bdd14/F5MUX_385 ),
    .O(\ALUoperation<0>_bdd14 )
  );
  X_MUX2   \ALUoperation<0>_bdd14/F5MUX  (
    .IA(\ALUoperation<0>10 ),
    .IB(\ALUoperation<0>_bdd14/F ),
    .SEL(\ALUoperation<0>_bdd14/BXINV_374 ),
    .O(\ALUoperation<0>_bdd14/F5MUX_385 )
  );
  X_BUF   \ALUoperation<0>_bdd14/BXINV  (
    .I(OpCodefield_9_IBUF_138),
    .O(\ALUoperation<0>_bdd14/BXINV_374 )
  );
  X_BUF   \ALUoperation_1_OBUF/YUSED  (
    .I(\ALUoperation<1>_bdd0_pack_1 ),
    .O(\ALUoperation<1>_bdd0 )
  );
  X_BUF   \N01/XUSED  (
    .I(N01),
    .O(N01_0)
  );
  X_BUF   \N01/YUSED  (
    .I(\ALUoperation<0>_bdd2 ),
    .O(\ALUoperation<0>_bdd2_0 )
  );
  X_BUF   \OpCodefield<4>/IFF/IMUX  (
    .I(\OpCodefield<4>/INBUF ),
    .O(OpCodefield_4_IBUF_133)
  );
  X_BUF   \OpCodefield<10>/IFF/IMUX  (
    .I(\OpCodefield<10>/INBUF ),
    .O(OpCodefield_10_IBUF_128)
  );
  X_BUF   \OpCodefield<5>/IFF/IMUX  (
    .I(\OpCodefield<5>/INBUF ),
    .O(OpCodefield_5_IBUF_134)
  );
  X_BUF   \OpCodefield<2>/IFF/IMUX  (
    .I(\OpCodefield<2>/INBUF ),
    .O(OpCodefield_2_IBUF_131)
  );
  X_BUF   \OpCodefield<3>/IFF/IMUX  (
    .I(\OpCodefield<3>/INBUF ),
    .O(OpCodefield_3_IBUF_132)
  );
  X_BUF   \OpCodefield<1>/IFF/IMUX  (
    .I(\OpCodefield<1>/INBUF ),
    .O(OpCodefield_1_IBUF_130)
  );
  X_BUF   \OpCodefield<6>/IFF/IMUX  (
    .I(\OpCodefield<6>/INBUF ),
    .O(OpCodefield_6_IBUF_135)
  );
  X_BUF   \OpCodefield<0>/IFF/IMUX  (
    .I(\OpCodefield<0>/INBUF ),
    .O(OpCodefield_0_IBUF_129)
  );
  X_BUF   \ALUOp<0>/IFF/IMUX  (
    .I(\ALUOp<0>/INBUF ),
    .O(ALUOp_0_IBUF_142)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \ALUoperation<2>1_F  (
    .ADR0(\ALUoperation<0>_bdd14 ),
    .ADR1(ALUOp_0_IBUF_142),
    .ADR2(OpCodefield_10_IBUF_128),
    .ADR3(OpCodefield_3_IBUF_132),
    .O(N13)
  );
  X_BUF   \OpCodefield<9>/IFF/IMUX  (
    .I(\OpCodefield<9>/INBUF ),
    .O(OpCodefield_9_IBUF_138)
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ))
  \ALUoperation<2>1_G  (
    .ADR0(OpCodefield_3_IBUF_132),
    .ADR1(\ALUoperation<1>_bdd0 ),
    .ADR2(\ALUoperation<0>_bdd1_0 ),
    .ADR3(VCC),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'hFE32 ))
  \ALUoperation<3>1_F  (
    .ADR0(\ALUoperation<0>_bdd14 ),
    .ADR1(ALUOp_1_IBUF_144),
    .ADR2(OpCodefield_10_IBUF_128),
    .ADR3(\ALUoperation<1>_bdd0 ),
    .O(N11)
  );
  X_BUF   \OpCodefield<8>/IFF/IMUX  (
    .I(\OpCodefield<8>/INBUF ),
    .O(OpCodefield_8_IBUF_137)
  );
  X_BUF   \ALUOp<1>/IFF/IMUX  (
    .I(\ALUOp<1>/INBUF ),
    .O(ALUOp_1_IBUF_144)
  );
  X_LUT4 #(
    .INIT ( 16'hFDFF ))
  \ALUoperation<3>1_G  (
    .ADR0(OpCodefield_10_IBUF_128),
    .ADR1(\ALUoperation<0>_bdd4 ),
    .ADR2(ALUOp_0_IBUF_142),
    .ADR3(ALUOp_1_IBUF_144),
    .O(N12)
  );
  X_LUT4 #(
    .INIT ( 16'hFDFF ))
  \ALUoperation<0>41  (
    .ADR0(OpCodefield_4_IBUF_133),
    .ADR1(\ALUoperation<0>_bdd8 ),
    .ADR2(OpCodefield_8_IBUF_137),
    .ADR3(OpCodefield_6_IBUF_135),
    .O(\ALUoperation<0>_bdd4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \ALUoperation<0>91  (
    .ADR0(\ALUoperation<0>_bdd14 ),
    .ADR1(ALUOp_0_IBUF_142),
    .ADR2(OpCodefield_10_IBUF_128),
    .ADR3(VCC),
    .O(\ALUoperation<0>_bdd2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEF ))
  \ALUoperation<1>2  (
    .ADR0(\ALUoperation<0>_bdd8 ),
    .ADR1(OpCodefield_9_IBUF_138),
    .ADR2(OpCodefield_6_IBUF_135),
    .ADR3(N01_0),
    .O(\ALUoperation<1>_bdd0_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEF ))
  \ALUoperation<0>81  (
    .ADR0(OpCodefield_9_IBUF_138),
    .ADR1(ALUOp_0_IBUF_142),
    .ADR2(OpCodefield_10_IBUF_128),
    .ADR3(\ALUoperation<0>_bdd4 ),
    .O(\ALUoperation<0>_bdd1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \ALUoperation<0>101  (
    .ADR0(\ALUoperation<0>_bdd8 ),
    .ADR1(OpCodefield_8_IBUF_137),
    .ADR2(OpCodefield_6_IBUF_135),
    .ADR3(OpCodefield_4_IBUF_133),
    .O(\ALUoperation<0>10 )
  );
  X_LUT4 #(
    .INIT ( 16'hDFDF ))
  \ALUoperation<1>2_SW0  (
    .ADR0(OpCodefield_4_IBUF_133),
    .ADR1(ALUOp_0_IBUF_142),
    .ADR2(OpCodefield_10_IBUF_128),
    .ADR3(VCC),
    .O(N01)
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ))
  \ALUoperation<0>12  (
    .ADR0(ALUOp_1_IBUF_144),
    .ADR1(\ALUoperation<0>_bdd2_0 ),
    .ADR2(\ALUoperation<0>_bdd1_0 ),
    .ADR3(VCC),
    .O(\ALUoperation<0>11_326 )
  );
  X_LUT4 #(
    .INIT ( 16'hEFEF ))
  \ALUoperation<1>11  (
    .ADR0(OpCodefield_3_IBUF_132),
    .ADR1(\ALUoperation<1>_bdd0 ),
    .ADR2(ALUOp_1_IBUF_144),
    .ADR3(VCC),
    .O(ALUoperation_1_OBUF_408)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \ALUoperation<0>61  (
    .ADR0(OpCodefield_5_IBUF_134),
    .ADR1(OpCodefield_2_IBUF_131),
    .ADR2(OpCodefield_1_IBUF_130),
    .ADR3(OpCodefield_0_IBUF_129),
    .O(\ALUoperation<0>6 )
  );
  X_LUT4 #(
    .INIT ( 16'hFDFF ))
  \ALUoperation<0>11  (
    .ADR0(ALUOp_1_IBUF_144),
    .ADR1(\ALUoperation<0>_bdd4 ),
    .ADR2(ALUOp_0_IBUF_142),
    .ADR3(OpCodefield_10_IBUF_128),
    .O(\ALUoperation<0>1 )
  );
  X_BUF   \ALUoperation<0>/OUTPUT/OFF/OMUX  (
    .I(\ALUoperation_0_OBUF/F5MUX_335 ),
    .O(\ALUoperation<0>/O )
  );
  X_BUF   \ALUoperation<1>/OUTPUT/OFF/OMUX  (
    .I(ALUoperation_1_OBUF_408),
    .O(\ALUoperation<1>/O )
  );
  X_BUF   \ALUoperation<2>/OUTPUT/OFF/OMUX  (
    .I(\ALUoperation_2_OBUF/F5MUX_285 ),
    .O(\ALUoperation<2>/O )
  );
  X_BUF   \ALUoperation<3>/OUTPUT/OFF/OMUX  (
    .I(\ALUoperation_3_OBUF/F5MUX_310 ),
    .O(\ALUoperation<3>/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ))
  \ALUoperation<0>_bdd8/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\ALUoperation<0>_bdd8/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ))
  \ALUoperation<0>_bdd14/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\ALUoperation<0>_bdd14/F )
  );
  X_ONE   NlwBlock_ALUControl_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

