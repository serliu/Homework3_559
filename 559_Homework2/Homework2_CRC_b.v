module Homework2_CRC_b(reset, clock, init, compute_enable, u8, crc_out);

input reset, clock, init, compute_enable; 
input [7:0] u8; 
output [15:0] crc_out;

wire [15:0] Q_next;
wire [7:0] u;
assign u = u8 ^ crc_out[15:8]; 

assign Q_next[15] = crc_out[7] ^ u[3] ^ u[7]; 
assign Q_next[14] = crc_out[6] ^ u[2] ^ u[6]; 
assign Q_next[13] = crc_out[5] ^ u[1] ^ u[5]; 
assign Q_next[12] = crc_out[4] ^ u[0] ^ u[4] ^ u[7];
assign Q_next[11] = crc_out[3] ^ u[6]; 
assign Q_next[10] = crc_out[2] ^ u[5];
assign Q_next[9] = crc_out[1] ^ u[4];
assign Q_next[8] = crc_out[0] ^ u[3] ^ u[7];

assign Q_next[7] = u[2] ^ u[6] ^ u[7];
assign Q_next[6] = u[1] ^ u[5] ^ u[6];
assign Q_next[5] = u[0] ^ u[4] ^ u[5];
assign Q_next[4] = u[4];

assign Q_next[3] = u[2] ^ u[7];
assign Q_next[2] = u[2] ^ u[6];
assign Q_next[1] = u[1] ^ u[5];
assign Q_next[0] = u[0] ^ u[4];

wire clock_enable; 
assign clock_enable = compute_enable | init; 

crc16reg reg16(
	.aclr(reset),
	.clock(clock),
	.data(Q_next),
	.enable(clock_enable),
	.load(1'h1),
	.sset(init),
	.q(crc_out));
	

endmodule 