// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pool_1 (
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
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
input  [4:0] input_offset;
output  [11:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [15:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] input_r_address0;
reg input_r_ce0;
reg output_r_ce0;
reg output_r_we0;
reg[15:0] output_r_d0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [14:0] mul_ln30_fu_441_p2;
reg   [14:0] mul_ln30_reg_447;
wire   [12:0] mul_ln30_1_fu_179_p2;
reg   [12:0] mul_ln30_1_reg_453;
wire   [3:0] i_fu_191_p2;
reg   [3:0] i_reg_461;
wire    ap_CS_fsm_state2;
wire   [9:0] sub_ln30_fu_221_p2;
reg   [9:0] sub_ln30_reg_466;
wire   [0:0] icmp_ln28_fu_185_p2;
wire   [4:0] shl_ln30_4_fu_239_p3;
reg   [4:0] shl_ln30_4_reg_471;
wire   [8:0] sub_ln30_1_fu_251_p2;
reg   [8:0] sub_ln30_1_reg_476;
wire   [3:0] j_fu_267_p2;
reg   [3:0] j_reg_484;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln29_fu_261_p2;
reg   [11:0] output_addr_reg_494;
wire    ap_CS_fsm_state4;
wire   [10:0] zext_ln33_fu_331_p1;
reg   [10:0] zext_ln33_reg_504;
wire   [1:0] k_fu_345_p2;
reg   [1:0] k_reg_512;
wire    ap_CS_fsm_state5;
wire   [10:0] sub_ln33_fu_380_p2;
reg   [10:0] sub_ln33_reg_517;
wire   [0:0] icmp_ln31_fu_339_p2;
wire   [1:0] m_fu_392_p2;
reg   [1:0] m_reg_525;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln32_fu_386_p2;
reg   [15:0] input_load_1_reg_535;
wire    ap_CS_fsm_state7;
wire   [15:0] select_ln33_fu_434_p3;
reg   [15:0] select_ln33_reg_541;
wire    ap_CS_fsm_state8;
reg   [3:0] i_0_reg_98;
reg   [3:0] j_0_reg_109;
reg   [15:0] empty_6_reg_121;
reg   [1:0] k_0_reg_131;
reg   [15:0] empty_8_reg_142;
wire    ap_CS_fsm_state9;
reg   [1:0] m_0_reg_154;
wire  signed [63:0] sext_ln30_1_fu_299_p1;
wire  signed [63:0] sext_ln30_3_fu_318_p1;
wire  signed [63:0] sext_ln33_1_fu_429_p1;
wire   [4:0] mul_ln30_1_fu_179_p0;
wire   [8:0] shl_ln30_1_fu_197_p3;
wire   [5:0] shl_ln30_2_fu_209_p3;
wire   [9:0] zext_ln30_fu_205_p1;
wire   [9:0] zext_ln30_3_fu_217_p1;
wire   [7:0] shl_ln30_3_fu_227_p3;
wire   [8:0] zext_ln30_4_fu_235_p1;
wire   [8:0] zext_ln30_5_fu_247_p1;
wire   [9:0] zext_ln30_6_fu_273_p1;
wire   [9:0] add_ln30_1_fu_277_p2;
wire   [10:0] tmp_3_fu_282_p3;
wire  signed [14:0] sext_ln30_fu_290_p1;
(* use_dsp48 = "no" *) wire   [14:0] add_ln30_2_fu_294_p2;
wire   [8:0] zext_ln29_fu_257_p1;
wire   [8:0] add_ln30_fu_304_p2;
wire  signed [12:0] sext_ln30_2_fu_309_p1;
wire   [12:0] add_ln30_3_fu_313_p2;
wire   [4:0] shl_ln_fu_323_p3;
wire   [4:0] zext_ln31_fu_335_p1;
wire   [4:0] add_ln33_fu_351_p2;
wire   [9:0] shl_ln33_1_fu_356_p3;
wire   [6:0] shl_ln33_2_fu_368_p3;
wire   [10:0] zext_ln33_1_fu_364_p1;
wire   [10:0] zext_ln33_2_fu_376_p1;
wire   [8:0] tmp_2_fu_398_p4;
wire   [10:0] tmp_fu_407_p3;
wire   [10:0] add_ln33_1_fu_415_p2;
wire  signed [14:0] sext_ln33_fu_420_p1;
(* use_dsp48 = "no" *) wire   [14:0] add_ln33_2_fu_424_p2;
wire   [0:0] grp_fu_165_p2;
wire   [4:0] mul_ln30_fu_441_p0;
wire   [10:0] mul_ln30_fu_441_p1;
reg   [8:0] ap_NS_fsm;
wire   [12:0] mul_ln30_1_fu_179_p00;
wire   [14:0] mul_ln30_fu_441_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
end

my_net_hcmp_16ns_eOg #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 1 ))
my_net_hcmp_16ns_eOg_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(empty_8_reg_142),
    .din1(input_r_q0),
    .ce(1'b1),
    .opcode(5'd4),
    .dout(grp_fu_165_p2)
);

my_net_mul_mul_5nfYi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 15 ))
my_net_mul_mul_5nfYi_U11(
    .din0(mul_ln30_fu_441_p0),
    .din1(mul_ln30_fu_441_p1),
    .dout(mul_ln30_fu_441_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln32_fu_386_p2 == 1'd1))) begin
        empty_6_reg_121 <= empty_8_reg_142;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_6_reg_121 <= input_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_339_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        empty_8_reg_142 <= empty_6_reg_121;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_8_reg_142 <= select_ln33_reg_541;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_fu_261_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_98 <= i_reg_461;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_98 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_339_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        j_0_reg_109 <= j_reg_484;
    end else if (((icmp_ln28_fu_185_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_109 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln32_fu_386_p2 == 1'd1))) begin
        k_0_reg_131 <= k_reg_512;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        k_0_reg_131 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_339_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        m_0_reg_154 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        m_0_reg_154 <= m_reg_525;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_461 <= i_fu_191_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_load_1_reg_535 <= input_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_484 <= j_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        k_reg_512 <= k_fu_345_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m_reg_525 <= m_fu_392_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        mul_ln30_1_reg_453[12 : 2] <= mul_ln30_1_fu_179_p2[12 : 2];
        mul_ln30_reg_447 <= mul_ln30_fu_441_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_fu_261_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        output_addr_reg_494 <= sext_ln30_3_fu_318_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        select_ln33_reg_541 <= select_ln33_fu_434_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln28_fu_185_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shl_ln30_4_reg_471[4 : 1] <= shl_ln30_4_fu_239_p3[4 : 1];
        sub_ln30_1_reg_476[8 : 1] <= sub_ln30_1_fu_251_p2[8 : 1];
        sub_ln30_reg_466[9 : 2] <= sub_ln30_fu_221_p2[9 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_339_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        sub_ln33_reg_517[10 : 2] <= sub_ln33_fu_380_p2[10 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        zext_ln33_reg_504[4 : 1] <= zext_ln33_fu_331_p1[4 : 1];
    end
end

always @ (*) begin
    if ((((icmp_ln28_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln28_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_r_address0 = sext_ln33_1_fu_429_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input_r_address0 = sext_ln30_1_fu_299_p1;
    end else begin
        input_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state9))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_r_d0 = select_ln33_reg_541;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_r_d0 = input_r_q0;
    end else begin
        output_r_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state9))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln28_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln29_fu_261_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln31_fu_339_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln32_fu_386_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln30_1_fu_277_p2 = (sub_ln30_reg_466 + zext_ln30_6_fu_273_p1);

assign add_ln30_2_fu_294_p2 = ($signed(sext_ln30_fu_290_p1) + $signed(mul_ln30_reg_447));

assign add_ln30_3_fu_313_p2 = ($signed(sext_ln30_2_fu_309_p1) + $signed(mul_ln30_1_reg_453));

assign add_ln30_fu_304_p2 = (zext_ln29_fu_257_p1 + sub_ln30_1_reg_476);

assign add_ln33_1_fu_415_p2 = (zext_ln33_reg_504 + tmp_fu_407_p3);

assign add_ln33_2_fu_424_p2 = ($signed(sext_ln33_fu_420_p1) + $signed(mul_ln30_reg_447));

assign add_ln33_fu_351_p2 = (zext_ln31_fu_335_p1 + shl_ln30_4_reg_471);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign i_fu_191_p2 = (i_0_reg_98 + 4'd1);

assign icmp_ln28_fu_185_p2 = ((i_0_reg_98 == 4'd14) ? 1'b1 : 1'b0);

assign icmp_ln29_fu_261_p2 = ((j_0_reg_109 == 4'd14) ? 1'b1 : 1'b0);

assign icmp_ln31_fu_339_p2 = ((k_0_reg_131 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln32_fu_386_p2 = ((m_0_reg_154 == 2'd2) ? 1'b1 : 1'b0);

assign j_fu_267_p2 = (j_0_reg_109 + 4'd1);

assign k_fu_345_p2 = (k_0_reg_131 + 2'd1);

assign m_fu_392_p2 = (m_0_reg_154 + 2'd1);

assign mul_ln30_1_fu_179_p0 = mul_ln30_1_fu_179_p00;

assign mul_ln30_1_fu_179_p00 = input_offset;

assign mul_ln30_1_fu_179_p2 = (mul_ln30_1_fu_179_p0 * $signed('hC4));

assign mul_ln30_fu_441_p0 = mul_ln30_fu_441_p00;

assign mul_ln30_fu_441_p00 = input_offset;

assign mul_ln30_fu_441_p1 = 15'd784;

assign output_r_address0 = output_addr_reg_494;

assign select_ln33_fu_434_p3 = ((grp_fu_165_p2[0:0] === 1'b1) ? input_load_1_reg_535 : empty_8_reg_142);

assign sext_ln30_1_fu_299_p1 = $signed(add_ln30_2_fu_294_p2);

assign sext_ln30_2_fu_309_p1 = $signed(add_ln30_fu_304_p2);

assign sext_ln30_3_fu_318_p1 = $signed(add_ln30_3_fu_313_p2);

assign sext_ln30_fu_290_p1 = $signed(tmp_3_fu_282_p3);

assign sext_ln33_1_fu_429_p1 = $signed(add_ln33_2_fu_424_p2);

assign sext_ln33_fu_420_p1 = $signed(add_ln33_1_fu_415_p2);

assign shl_ln30_1_fu_197_p3 = {{i_0_reg_98}, {5'd0}};

assign shl_ln30_2_fu_209_p3 = {{i_0_reg_98}, {2'd0}};

assign shl_ln30_3_fu_227_p3 = {{i_0_reg_98}, {4'd0}};

assign shl_ln30_4_fu_239_p3 = {{i_0_reg_98}, {1'd0}};

assign shl_ln33_1_fu_356_p3 = {{add_ln33_fu_351_p2}, {5'd0}};

assign shl_ln33_2_fu_368_p3 = {{add_ln33_fu_351_p2}, {2'd0}};

assign shl_ln_fu_323_p3 = {{j_0_reg_109}, {1'd0}};

assign sub_ln30_1_fu_251_p2 = (zext_ln30_4_fu_235_p1 - zext_ln30_5_fu_247_p1);

assign sub_ln30_fu_221_p2 = (zext_ln30_fu_205_p1 - zext_ln30_3_fu_217_p1);

assign sub_ln33_fu_380_p2 = (zext_ln33_1_fu_364_p1 - zext_ln33_2_fu_376_p1);

assign tmp_2_fu_398_p4 = {{sub_ln33_reg_517[10:2]}};

assign tmp_3_fu_282_p3 = {{add_ln30_1_fu_277_p2}, {1'd0}};

assign tmp_fu_407_p3 = {{tmp_2_fu_398_p4}, {m_0_reg_154}};

assign zext_ln29_fu_257_p1 = j_0_reg_109;

assign zext_ln30_3_fu_217_p1 = shl_ln30_2_fu_209_p3;

assign zext_ln30_4_fu_235_p1 = shl_ln30_3_fu_227_p3;

assign zext_ln30_5_fu_247_p1 = shl_ln30_4_fu_239_p3;

assign zext_ln30_6_fu_273_p1 = j_0_reg_109;

assign zext_ln30_fu_205_p1 = shl_ln30_1_fu_197_p3;

assign zext_ln31_fu_335_p1 = k_0_reg_131;

assign zext_ln33_1_fu_364_p1 = shl_ln33_1_fu_356_p3;

assign zext_ln33_2_fu_376_p1 = shl_ln33_2_fu_368_p3;

assign zext_ln33_fu_331_p1 = shl_ln_fu_323_p3;

always @ (posedge ap_clk) begin
    mul_ln30_1_reg_453[1:0] <= 2'b00;
    sub_ln30_reg_466[1:0] <= 2'b00;
    shl_ln30_4_reg_471[0] <= 1'b0;
    sub_ln30_1_reg_476[0] <= 1'b0;
    zext_ln33_reg_504[0] <= 1'b0;
    zext_ln33_reg_504[10:5] <= 6'b000000;
    sub_ln33_reg_517[1:0] <= 2'b00;
end

endmodule //pool_1
