-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity conv2_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    input_offset : IN STD_LOGIC_VECTOR (1 downto 0);
    weight_offset : IN STD_LOGIC_VECTOR (4 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    output_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of conv2_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (15 downto 0) := "0000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (15 downto 0) := "0000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (15 downto 0) := "0000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (15 downto 0) := "0001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (15 downto 0) := "1000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv12_19 : STD_LOGIC_VECTOR (11 downto 0) := "000000011001";
    constant ap_const_lv5_1C : STD_LOGIC_VECTOR (4 downto 0) := "11100";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv52_0 : STD_LOGIC_VECTOR (51 downto 0) := "0000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal conv1_weight_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal conv1_weight_ce0 : STD_LOGIC;
    signal conv1_weight_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul_ln19_fu_206_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_ln19_reg_376 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_fu_218_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_reg_384 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sub_ln19_fu_248_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln19_reg_389 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln8_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_fu_264_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal c_reg_397 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal output_addr_reg_402 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln11_fu_258_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln14_fu_284_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln14_reg_407 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal kr_fu_294_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal kr_reg_415 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln19_1_fu_300_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln19_1_reg_420 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln14_fu_288_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln_fu_306_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal shl_ln_reg_425 : STD_LOGIC_VECTOR (4 downto 0);
    signal kc_fu_324_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal kc_reg_433 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln17_fu_318_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal input_load_reg_448 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal conv1_weight_load_reg_453 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_162_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_reg_458 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal output_load_reg_463 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_158_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_s_reg_468 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal r_0_reg_112 : STD_LOGIC_VECTOR (4 downto 0);
    signal c_0_reg_124 : STD_LOGIC_VECTOR (4 downto 0);
    signal kr_0_reg_136 : STD_LOGIC_VECTOR (2 downto 0);
    signal kc_0_reg_147 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal zext_ln19_1_fu_279_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_19_fu_336_p5 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln19_3_fu_366_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_18_fu_170_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln19_3_fu_178_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln19_fu_166_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sub_ln19_1_fu_182_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sext_ln19_1_fu_188_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln19_5_fu_192_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln19_3_fu_196_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal mul_ln19_fu_206_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal shl_ln19_1_fu_224_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal shl_ln19_2_fu_236_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln19_2_fu_232_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln19_4_fu_244_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln11_fu_254_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln19_fu_270_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_ln19_fu_275_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln17_fu_314_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln19_2_fu_330_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln19_5_fu_347_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln19_4_fu_352_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln19_6_fu_357_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln19_6_fu_361_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (15 downto 0);

    component my_net_hadd_16ns_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component my_net_hmul_16ns_dEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component conv2_1_conv1_weibkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    conv1_weight_U : component conv2_1_conv1_weibkb
    generic map (
        DataWidth => 16,
        AddressRange => 1200,
        AddressWidth => 11)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => conv1_weight_address0,
        ce0 => conv1_weight_ce0,
        q0 => conv1_weight_q0);

    my_net_hadd_16ns_cud_U1 : component my_net_hadd_16ns_cud
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => output_load_reg_463,
        din1 => tmp_reg_458,
        ce => ap_const_logic_1,
        dout => grp_fu_158_p2);

    my_net_hmul_16ns_dEe_U2 : component my_net_hmul_16ns_dEe
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => input_load_reg_448,
        din1 => conv1_weight_load_reg_453,
        ce => ap_const_logic_1,
        dout => grp_fu_162_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    c_0_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln14_fu_288_p2 = ap_const_lv1_1))) then 
                c_0_reg_124 <= c_reg_397;
            elsif (((icmp_ln8_fu_212_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c_0_reg_124 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    kc_0_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                kc_0_reg_147 <= kc_reg_433;
            elsif (((icmp_ln14_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                kc_0_reg_147 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    kr_0_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln17_fu_318_p2 = ap_const_lv1_1))) then 
                kr_0_reg_136 <= kr_reg_415;
            elsif (((icmp_ln11_fu_258_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                kr_0_reg_136 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    r_0_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln11_fu_258_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                r_0_reg_112 <= r_reg_384;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                r_0_reg_112 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln14_fu_288_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                add_ln19_1_reg_420 <= add_ln19_1_fu_300_p2;
                    shl_ln_reg_425(4 downto 2) <= shl_ln_fu_306_p3(4 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                c_reg_397 <= c_fu_264_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                conv1_weight_load_reg_453 <= conv1_weight_q0;
                input_load_reg_448 <= input_r_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                kc_reg_433 <= kc_fu_324_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                kr_reg_415 <= kr_fu_294_p2;
                    zext_ln14_reg_407(2 downto 0) <= zext_ln14_fu_284_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                mul_ln19_reg_376 <= mul_ln19_fu_206_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln11_fu_258_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                output_addr_reg_402 <= zext_ln19_1_fu_279_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                output_load_reg_463 <= output_r_q0;
                tmp_reg_458 <= grp_fu_162_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                r_reg_384 <= r_fu_218_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln8_fu_212_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    sub_ln19_reg_389(10 downto 2) <= sub_ln19_fu_248_p2(10 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state15)) then
                tmp_s_reg_468 <= grp_fu_158_p2;
            end if;
        end if;
    end process;
    sub_ln19_reg_389(1 downto 0) <= "00";
    zext_ln14_reg_407(4 downto 3) <= "00";
    shl_ln_reg_425(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln8_fu_212_p2, ap_CS_fsm_state3, icmp_ln11_fu_258_p2, ap_CS_fsm_state4, icmp_ln14_fu_288_p2, ap_CS_fsm_state5, icmp_ln17_fu_318_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln8_fu_212_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln11_fu_258_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln14_fu_288_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln17_fu_318_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln19_1_fu_300_p2 <= std_logic_vector(unsigned(zext_ln14_fu_284_p1) + unsigned(r_0_reg_112));
    add_ln19_2_fu_330_p2 <= std_logic_vector(unsigned(c_0_reg_124) + unsigned(zext_ln17_fu_314_p1));
    add_ln19_3_fu_196_p2 <= std_logic_vector(signed(sext_ln19_1_fu_188_p1) + signed(zext_ln19_5_fu_192_p1));
    add_ln19_4_fu_352_p2 <= std_logic_vector(unsigned(add_ln19_5_fu_347_p2) + unsigned(zext_ln14_reg_407));
    add_ln19_5_fu_347_p2 <= std_logic_vector(unsigned(shl_ln_reg_425) + unsigned(zext_ln17_fu_314_p1));
    add_ln19_6_fu_361_p2 <= std_logic_vector(unsigned(zext_ln19_6_fu_357_p1) + unsigned(mul_ln19_reg_376));
    add_ln19_fu_270_p2 <= std_logic_vector(unsigned(sub_ln19_reg_389) + unsigned(zext_ln11_fu_254_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln8_fu_212_p2)
    begin
        if ((((icmp_ln8_fu_212_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln8_fu_212_p2)
    begin
        if (((icmp_ln8_fu_212_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_fu_264_p2 <= std_logic_vector(unsigned(c_0_reg_124) + unsigned(ap_const_lv5_1));
    conv1_weight_address0 <= sext_ln19_3_fu_366_p1(11 - 1 downto 0);

    conv1_weight_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            conv1_weight_ce0 <= ap_const_logic_1;
        else 
            conv1_weight_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln11_fu_258_p2 <= "1" when (c_0_reg_124 = ap_const_lv5_1C) else "0";
    icmp_ln14_fu_288_p2 <= "1" when (kr_0_reg_136 = ap_const_lv3_5) else "0";
    icmp_ln17_fu_318_p2 <= "1" when (kc_0_reg_147 = ap_const_lv3_5) else "0";
    icmp_ln8_fu_212_p2 <= "1" when (r_0_reg_112 = ap_const_lv5_1C) else "0";
    input_r_address0 <= tmp_19_fu_336_p5(12 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    kc_fu_324_p2 <= std_logic_vector(unsigned(kc_0_reg_147) + unsigned(ap_const_lv3_1));
    kr_fu_294_p2 <= std_logic_vector(unsigned(kr_0_reg_136) + unsigned(ap_const_lv3_1));
    mul_ln19_fu_206_p0 <= add_ln19_3_fu_196_p2;
    mul_ln19_fu_206_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln19_fu_206_p0) * signed('0' &ap_const_lv12_19))), 12));
    output_r_address0 <= output_addr_reg_402;

    output_r_ce0_assign_proc : process(ap_CS_fsm_state16, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state16))) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= tmp_s_reg_468;

    output_r_we0_assign_proc : process(ap_CS_fsm_state16)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    r_fu_218_p2 <= std_logic_vector(unsigned(r_0_reg_112) + unsigned(ap_const_lv5_1));
        sext_ln19_1_fu_188_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln19_1_fu_182_p2),9));

        sext_ln19_3_fu_366_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln19_6_fu_361_p2),64));

        sext_ln19_fu_275_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln19_fu_270_p2),32));

    shl_ln19_1_fu_224_p3 <= (r_0_reg_112 & ap_const_lv5_0);
    shl_ln19_2_fu_236_p3 <= (r_0_reg_112 & ap_const_lv2_0);
    shl_ln_fu_306_p3 <= (kr_0_reg_136 & ap_const_lv2_0);
    sub_ln19_1_fu_182_p2 <= std_logic_vector(unsigned(zext_ln19_3_fu_178_p1) - unsigned(zext_ln19_fu_166_p1));
    sub_ln19_fu_248_p2 <= std_logic_vector(unsigned(zext_ln19_2_fu_232_p1) - unsigned(zext_ln19_4_fu_244_p1));
    tmp_18_fu_170_p3 <= (weight_offset & ap_const_lv2_0);
    tmp_19_fu_336_p5 <= (((ap_const_lv52_0 & input_offset) & add_ln19_1_reg_420) & add_ln19_2_fu_330_p2);
    zext_ln11_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_0_reg_124),11));
    zext_ln14_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(kr_0_reg_136),5));
    zext_ln17_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(kc_0_reg_147),5));
    zext_ln19_1_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln19_fu_275_p1),64));
    zext_ln19_2_fu_232_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln19_1_fu_224_p3),11));
    zext_ln19_3_fu_178_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_18_fu_170_p3),8));
    zext_ln19_4_fu_244_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln19_2_fu_236_p3),11));
    zext_ln19_5_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_offset),9));
    zext_ln19_6_fu_357_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln19_4_fu_352_p2),12));
    zext_ln19_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(weight_offset),8));
end behav;