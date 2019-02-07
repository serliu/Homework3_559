//lpm_shiftreg CBX_SINGLE_OUTPUT_FILE="ON" LPM_DIRECTION="LEFT" LPM_TYPE="LPM_SHIFTREG" LPM_WIDTH=15 aclr clock data enable load q sset
//VERSION_BEGIN 16.1 cbx_mgl 2016:10:24:15:05:03:SJ cbx_stratixii 2016:10:24:15:04:16:SJ cbx_util_mgl 2016:10:24:15:04:16:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2016  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel MegaCore Function License Agreement, or other 
//  applicable license agreement, including, without limitation, 
//  that your use is for the sole purpose of programming logic 
//  devices manufactured by Intel and sold by Intel or its 
//  authorized distributors.  Please refer to the applicable 
//  agreement for further details.



//synthesis_resources = lpm_shiftreg 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgtac
	( 
	aclr,
	clock,
	data,
	enable,
	load,
	q,
	sset) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	input   [14:0]  data;
	input   enable;
	input   load;
	output   [14:0]  q;
	input   sset;

	wire  [14:0]   wire_mgl_prim1_q;

	lpm_shiftreg   mgl_prim1
	( 
	.aclr(aclr),
	.clock(clock),
	.data(data),
	.enable(enable),
	.load(load),
	.q(wire_mgl_prim1_q),
	.sset(sset));
	defparam
		mgl_prim1.lpm_direction = "LEFT",
		mgl_prim1.lpm_type = "LPM_SHIFTREG",
		mgl_prim1.lpm_width = 15;
	assign
		q = wire_mgl_prim1_q;
endmodule //mgtac
//VALID FILE
