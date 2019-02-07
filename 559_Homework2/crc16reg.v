// megafunction wizard: %LPM_SHIFTREG%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_SHIFTREG 

// ============================================================
// File Name: crc16reg.v
// Megafunction Name(s):
// 			LPM_SHIFTREG
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.1.0 Build 196 10/24/2016 SJ Lite Edition
// ************************************************************


//Copyright (C) 2016  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Intel and sold by Intel or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module crc16reg (
	aclr,
	clock,
	data,
	enable,
	load,
	sset,
	q);

	input	  aclr;
	input	  clock;
	input	[15:0]  data;
	input	  enable;
	input	  load;
	input	  sset;
	output	[15:0]  q;

	wire [15:0] sub_wire0;
	wire [15:0] q = sub_wire0[15:0];

	lpm_shiftreg	LPM_SHIFTREG_component (
				.aclr (aclr),
				.clock (clock),
				.data (data),
				.enable (enable),
				.load (load),
				.sset (sset),
				.q (sub_wire0)
				// synopsys translate_off
				,
				.aset (),
				.sclr (),
				.shiftin (),
				.shiftout ()
				// synopsys translate_on
				);
	defparam
		LPM_SHIFTREG_component.lpm_direction = "LEFT",
		LPM_SHIFTREG_component.lpm_type = "LPM_SHIFTREG",
		LPM_SHIFTREG_component.lpm_width = 16;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "1"
// Retrieval info: PRIVATE: ALOAD NUMERIC "0"
// Retrieval info: PRIVATE: ASET NUMERIC "0"
// Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: CLK_EN NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: LeftShift NUMERIC "1"
// Retrieval info: PRIVATE: ParallelDataInput NUMERIC "1"
// Retrieval info: PRIVATE: Q_OUT NUMERIC "1"
// Retrieval info: PRIVATE: SCLR NUMERIC "0"
// Retrieval info: PRIVATE: SLOAD NUMERIC "1"
// Retrieval info: PRIVATE: SSET NUMERIC "1"
// Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: SerialShiftInput NUMERIC "0"
// Retrieval info: PRIVATE: SerialShiftOutput NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "16"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "LEFT"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_SHIFTREG"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: data 0 0 16 0 INPUT NODEFVAL "data[15..0]"
// Retrieval info: USED_PORT: enable 0 0 0 0 INPUT NODEFVAL "enable"
// Retrieval info: USED_PORT: load 0 0 0 0 INPUT NODEFVAL "load"
// Retrieval info: USED_PORT: q 0 0 16 0 OUTPUT NODEFVAL "q[15..0]"
// Retrieval info: USED_PORT: sset 0 0 0 0 INPUT NODEFVAL "sset"
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 16 0 data 0 0 16 0
// Retrieval info: CONNECT: @enable 0 0 0 0 enable 0 0 0 0
// Retrieval info: CONNECT: @load 0 0 0 0 load 0 0 0 0
// Retrieval info: CONNECT: @sset 0 0 0 0 sset 0 0 0 0
// Retrieval info: CONNECT: q 0 0 16 0 @q 0 0 16 0
// Retrieval info: GEN_FILE: TYPE_NORMAL crc16reg.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL crc16reg.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL crc16reg.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL crc16reg.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL crc16reg_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL crc16reg_bb.v FALSE
// Retrieval info: LIB_FILE: lpm