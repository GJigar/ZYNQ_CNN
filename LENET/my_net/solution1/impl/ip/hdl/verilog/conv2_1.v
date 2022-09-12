// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module conv2_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        input_offset,
        weight_offset,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        output_r_q0
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
input  [1:0] input_offset;
input  [4:0] weight_offset;
output  [9:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [15:0] output_r_d0;
input  [15:0] output_r_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] conv1_weight_address0;
reg    conv1_weight_ce0;
wire   [15:0] conv1_weight_q0;
wire   [11:0] mul_ln19_fu_206_p2;
reg   [11:0] mul_ln19_reg_376;
wire   [4:0] r_fu_218_p2;
reg   [4:0] r_reg_384;
wire    ap_CS_fsm_state2;
wire   [10:0] sub_ln19_fu_248_p2;
reg   [10:0] sub_ln19_reg_389;
wire   [0:0] icmp_ln8_fu_212_p2;
wire   [4:0] c_fu_264_p2;
reg   [4:0] c_reg_397;
wire    ap_CS_fsm_state3;
reg   [9:0] output_addr_reg_402;
wire   [0:0] icmp_ln11_fu_258_p2;
wire   [4:0] zext_ln14_fu_284_p1;
reg   [4:0] zext_ln14_reg_407;
wire    ap_CS_fsm_state4;
wire   [2:0] kr_fu_294_p2;
reg   [2:0] kr_reg_415;
wire   [4:0] add_ln19_1_fu_300_p2;
reg   [4:0] add_ln19_1_reg_420;
wire   [0:0] icmp_ln14_fu_288_p2;
wire   [4:0] shl_ln_fu_306_p3;
reg   [4:0] shl_ln_reg_425;
wire   [2:0] kc_fu_324_p2;
reg   [2:0] kc_reg_433;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln17_fu_318_p2;
reg   [15:0] input_load_reg_448;
wire    ap_CS_fsm_state6;
reg   [15:0] conv1_weight_load_reg_453;
wire   [15:0] grp_fu_162_p2;
reg   [15:0] tmp_reg_458;
wire    ap_CS_fsm_state10;
reg   [15:0] output_load_reg_463;
wire   [15:0] grp_fu_158_p2;
reg   [15:0] tmp_s_reg_468;
wire    ap_CS_fsm_state15;
reg   [4:0] r_0_reg_112;
reg   [4:0] c_0_reg_124;
reg   [2:0] kr_0_reg_136;
reg   [2:0] kc_0_reg_147;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln19_1_fu_279_p1;
wire   [63:0] tmp_19_fu_336_p5;
wire  signed [63:0] sext_ln19_3_fu_366_p1;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state7;
wire   [6:0] tmp_18_fu_170_p3;
wire   [7:0] zext_ln19_3_fu_178_p1;
wire   [7:0] zext_ln19_fu_166_p1;
wire   [7:0] sub_ln19_1_fu_182_p2;
wire  signed [8:0] sext_ln19_1_fu_188_p1;
wire   [8:0] zext_ln19_5_fu_192_p1;
wire   [8:0] add_ln19_3_fu_196_p2;
wire  signed [8:0] mul_ln19_fu_206_p0;
wire   [9:0] shl_ln19_1_fu_224_p3;
wire   [6:0] shl_ln19_2_fu_236_p3;
wire   [10:0] zext_ln19_2_fu_232_p1;
wire   [10:0] zext_ln19_4_fu_244_p1;
wire   [10:0] zext_ln11_fu_254_p1;
wire   [10:0] add_ln19_fu_270_p2;
wire  signed [31:0] sext_ln19_fu_275_p1;
wire   [4:0] zext_ln17_fu_314_p1;
wire   [4:0] add_ln19_2_fu_330_p2;
wire   [4:0] add_ln19_5_fu_347_p2;
wire   [4:0] add_ln19_4_fu_352_p2;
wire   [11:0] zext_ln19_6_fu_357_p1;
wire   [11:0] add_ln19_6_fu_361_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
end

conv2_1_conv1_weibkb #(
    .DataWidth( 16 ),
    .AddressRange( 1200 ),
    .AddressWidth( 11 ))
conv1_weight_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(conv1_weight_address0),
    .ce0(conv1_weight_ce0),
    .q0(conv1_weight_q0)
);

my_net_hadd_16ns_cud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
my_net_hadd_16ns_cud_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(output_load_reg_463),
    .din1(tmp_reg_458),
    .ce(1'b1),
    .dout(grp_fu_158_p2)
);

my_net_hmul_16ns_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
my_net_hmul_16ns_dEe_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(input_load_reg_448),
    .din1(conv1_weight_load_reg_453),
    .ce(1'b1),
    .dout(grp_fu_162_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln14_fu_288_p2 == 1'd1))) begin
        c_0_reg_124 <= c_reg_397;
    end else if (((icmp_ln8_fu_212_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c_0_reg_124 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        kc_0_reg_147 <= kc_reg_433;
    end else if (((icmp_ln14_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        kc_0_reg_147 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln17_fu_318_p2 == 1'd1))) begin
        kr_0_reg_136 <= kr_reg_415;
    end else if (((icmp_ln11_fu_258_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        kr_0_reg_136 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_258_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        r_0_reg_112 <= r_reg_384;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        r_0_reg_112 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln14_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln19_1_reg_420 <= add_ln19_1_fu_300_p2;
        shl_ln_reg_425[4 : 2] <= shl_ln_fu_306_p3[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        c_reg_397 <= c_fu_264_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv1_weight_load_reg_453 <= conv1_weight_q0;
        input_load_reg_448 <= input_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        kc_reg_433 <= kc_fu_324_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        kr_reg_415 <= kr_fu_294_p2;
        zext_ln14_reg_407[2 : 0] <= zext_ln14_fu_284_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_ln19_reg_376 <= mul_ln19_fu_206_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_258_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        output_addr_reg_402 <= zext_ln19_1_fu_279_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_load_reg_463 <= output_r_q0;
        tmp_reg_458 <= grp_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_reg_384 <= r_fu_218_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln8_fu_212_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sub_ln19_reg_389[10 : 2] <= sub_ln19_fu_248_p2[10 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_s_reg_468 <= grp_fu_158_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln8_fu_212_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln8_fu_212_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        conv1_weight_ce0 = 1'b1;
    end else begin
        conv1_weight_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state16))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln8_fu_212_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln11_fu_258_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln14_fu_288_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln17_fu_318_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln19_1_fu_300_p2 = (zext_ln14_fu_284_p1 + r_0_reg_112);

assign add_ln19_2_fu_330_p2 = (c_0_reg_124 + zext_ln17_fu_314_p1);

assign add_ln19_3_fu_196_p2 = ($signed(sext_ln19_1_fu_188_p1) + $signed(zext_ln19_5_fu_192_p1));

assign add_ln19_4_fu_352_p2 = (add_ln19_5_fu_347_p2 + zext_ln14_reg_407);

assign add_ln19_5_fu_347_p2 = (shl_ln_reg_425 + zext_ln17_fu_314_p1);

assign add_ln19_6_fu_361_p2 = (zext_ln19_6_fu_357_p1 + mul_ln19_reg_376);

assign add_ln19_fu_270_p2 = (sub_ln19_reg_389 + zext_ln11_fu_254_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign c_fu_264_p2 = (c_0_reg_124 + 5'd1);

assign conv1_weight_address0 = sext_ln19_3_fu_366_p1;

assign icmp_ln11_fu_258_p2 = ((c_0_reg_124 == 5'd28) ? 1'b1 : 1'b0);

assign icmp_ln14_fu_288_p2 = ((kr_0_reg_136 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln17_fu_318_p2 = ((kc_0_reg_147 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln8_fu_212_p2 = ((r_0_reg_112 == 5'd28) ? 1'b1 : 1'b0);

assign input_r_address0 = tmp_19_fu_336_p5;

assign kc_fu_324_p2 = (kc_0_reg_147 + 3'd1);

assign kr_fu_294_p2 = (kr_0_reg_136 + 3'd1);

assign mul_ln19_fu_206_p0 = add_ln19_3_fu_196_p2;

assign mul_ln19_fu_206_p2 = ($signed(mul_ln19_fu_206_p0) * $signed('h19));

assign output_r_address0 = output_addr_reg_402;

assign output_r_d0 = tmp_s_reg_468;

assign r_fu_218_p2 = (r_0_reg_112 + 5'd1);

assign sext_ln19_1_fu_188_p1 = $signed(sub_ln19_1_fu_182_p2);

assign sext_ln19_3_fu_366_p1 = $signed(add_ln19_6_fu_361_p2);

assign sext_ln19_fu_275_p1 = $signed(add_ln19_fu_270_p2);

assign shl_ln19_1_fu_224_p3 = {{r_0_reg_112}, {5'd0}};

assign shl_ln19_2_fu_236_p3 = {{r_0_reg_112}, {2'd0}};

assign shl_ln_fu_306_p3 = {{kr_0_reg_136}, {2'd0}};

assign sub_ln19_1_fu_182_p2 = (zext_ln19_3_fu_178_p1 - zext_ln19_fu_166_p1);

assign sub_ln19_fu_248_p2 = (zext_ln19_2_fu_232_p1 - zext_ln19_4_fu_244_p1);

assign tmp_18_fu_170_p3 = {{weight_offset}, {2'd0}};

assign tmp_19_fu_336_p5 = {{{{{{52'd0}, {input_offset}}}, {add_ln19_1_reg_420}}}, {add_ln19_2_fu_330_p2}};

assign zext_ln11_fu_254_p1 = c_0_reg_124;

assign zext_ln14_fu_284_p1 = kr_0_reg_136;

assign zext_ln17_fu_314_p1 = kc_0_reg_147;

assign zext_ln19_1_fu_279_p1 = $unsigned(sext_ln19_fu_275_p1);

assign zext_ln19_2_fu_232_p1 = shl_ln19_1_fu_224_p3;

assign zext_ln19_3_fu_178_p1 = tmp_18_fu_170_p3;

assign zext_ln19_4_fu_244_p1 = shl_ln19_2_fu_236_p3;

assign zext_ln19_5_fu_192_p1 = input_offset;

assign zext_ln19_6_fu_357_p1 = add_ln19_4_fu_352_p2;

assign zext_ln19_fu_166_p1 = weight_offset;

always @ (posedge ap_clk) begin
    sub_ln19_reg_389[1:0] <= 2'b00;
    zext_ln14_reg_407[4:3] <= 2'b00;
    shl_ln_reg_425[1:0] <= 2'b00;
end

endmodule //conv2_1
