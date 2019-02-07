module Homework2_CRC(reset, clock, init, compute_enable, u, crc_out ); 


input reset, clock, init, compute_enable, u;
output [15:0] crc_out; 

wire clock_enable;
wire [15:0] Q_next;
assign clock_enable = compute_enable | init;
wire ux;
assign ux = crc_out[15]^u; 

assign Q_next[12] = crc_out[15] ^ crc_out[11] ^ ux;
assign Q_next[5] = crc_out[15] ^ crc_out[4] ^ ux;
assign Q_next[0] = crc_out[15] ^ ux;

assign Q_next[1] = crc_out[0];
assign Q_next[2] = crc_out[1];
assign Q_next[3] = crc_out[2];
assign Q_next[4] = crc_out[3];
assign Q_next[6] = crc_out[5];


assign Q_next[7] = crc_out[6];
assign Q_next[8] = crc_out[7];
assign Q_next[9] = crc_out[8];
assign Q_next[10] = crc_out[9];
assign Q_next[11] = crc_out[10];


assign Q_next[13] = crc_out[12];
assign Q_next[14] = crc_out[13];
assign Q_next[15] = crc_out[14];

	
crc16reg reg16(
	reset,
	clock & clock_enable,
	Q_next,
	clock_enable,
	1'h1,
	init,
	crc_out);



endmodule 