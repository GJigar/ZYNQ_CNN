-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pool is
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
    input_offset : IN STD_LOGIC_VECTOR (5 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of pool is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv12_64 : STD_LOGIC_VECTOR (11 downto 0) := "000001100100";
    constant ap_const_lv10_19 : STD_LOGIC_VECTOR (9 downto 0) := "0000011001";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mul_ln30_fu_169_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_ln30_reg_401 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_ln30_2_fu_175_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal mul_ln30_2_reg_407 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_0_cast8_fu_181_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_0_cast8_reg_412 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_191_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_420 : STD_LOGIC_VECTOR (2 downto 0);
    signal shl_ln30_5_fu_197_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln30_5_reg_425 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln28_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln30_fu_205_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln30_reg_430 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln30_6_fu_209_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal shl_ln30_6_reg_435 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_fu_227_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_443 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln29_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln30_5_fu_286_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln30_5_reg_453 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal output_addr_reg_463 : STD_LOGIC_VECTOR (9 downto 0);
    signal shl_ln33_2_fu_295_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln33_2_reg_468 : STD_LOGIC_VECTOR (3 downto 0);
    signal k_fu_313_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal k_reg_476 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal add_ln33_3_fu_344_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln33_3_reg_481 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln31_fu_307_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal m_fu_360_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal m_reg_489 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal icmp_ln32_fu_354_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal input_load_1_reg_499 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal select_ln33_fu_394_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln33_reg_505 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal i_0_reg_87 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_0_reg_99 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_11_reg_111 : STD_LOGIC_VECTOR (15 downto 0);
    signal k_0_reg_121 : STD_LOGIC_VECTOR (1 downto 0);
    signal empty_13_reg_132 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal m_0_reg_144 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln30_11_fu_263_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln30_13_fu_291_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln33_5_fu_389_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln30_fu_169_p0 : STD_LOGIC_VECTOR (5 downto 0);
    signal mul_ln30_2_fu_175_p0 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_fu_233_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln30_2_fu_241_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln_fu_246_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln30_10_fu_254_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln30_4_fu_258_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln29_fu_217_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln30_3_fu_268_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln30_7_fu_273_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln30_fu_277_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln30_12_fu_282_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln31_fu_303_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln33_fu_319_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln33_4_fu_332_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln33_fu_340_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal shl_ln33_3_fu_324_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln32_fu_350_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln33_4_fu_366_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln33_3_fu_371_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln33_2_fu_375_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln33_4_fu_380_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln33_5_fu_384_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal mul_ln30_2_fu_175_p00 : STD_LOGIC_VECTOR (9 downto 0);
    signal mul_ln30_fu_169_p00 : STD_LOGIC_VECTOR (11 downto 0);

    component my_net_hcmp_16ns_eOg IS
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
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    my_net_hcmp_16ns_eOg_U26 : component my_net_hcmp_16ns_eOg
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => empty_13_reg_132,
        din1 => input_r_q0,
        ce => ap_const_logic_1,
        opcode => ap_const_lv5_4,
        dout => grp_fu_155_p2);





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


    empty_11_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln32_fu_354_p2 = ap_const_lv1_1))) then 
                empty_11_reg_111 <= empty_13_reg_132;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                empty_11_reg_111 <= input_r_q0;
            end if; 
        end if;
    end process;

    empty_13_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln31_fu_307_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                empty_13_reg_132 <= empty_11_reg_111;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                empty_13_reg_132 <= select_ln33_reg_505;
            end if; 
        end if;
    end process;

    i_0_reg_87_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln29_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_87 <= i_reg_420;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_87 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_0_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln31_fu_307_p2 = ap_const_lv1_1))) then 
                j_0_reg_99 <= j_reg_443;
            elsif (((icmp_ln28_fu_185_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_99 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    k_0_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln32_fu_354_p2 = ap_const_lv1_1))) then 
                k_0_reg_121 <= k_reg_476;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                k_0_reg_121 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    m_0_reg_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln31_fu_307_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                m_0_reg_144 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                m_0_reg_144 <= m_reg_489;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln29_fu_221_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                add_ln30_5_reg_453 <= add_ln30_5_fu_286_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln31_fu_307_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    add_ln33_3_reg_481(6 downto 1) <= add_ln33_3_fu_344_p2(6 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    i_0_cast8_reg_412(2 downto 0) <= i_0_cast8_fu_181_p1(2 downto 0);
                i_reg_420 <= i_fu_191_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                input_load_1_reg_499 <= input_r_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_443 <= j_fu_227_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                k_reg_476 <= k_fu_313_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                m_reg_489 <= m_fu_360_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                mul_ln30_2_reg_407 <= mul_ln30_2_fu_175_p2;
                    mul_ln30_reg_401(11 downto 2) <= mul_ln30_fu_169_p2(11 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                output_addr_reg_463 <= zext_ln30_13_fu_291_p1(10 - 1 downto 0);
                    shl_ln33_2_reg_468(3 downto 1) <= shl_ln33_2_fu_295_p3(3 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                select_ln33_reg_505 <= select_ln33_fu_394_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln28_fu_185_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    shl_ln30_5_reg_425(3 downto 1) <= shl_ln30_5_fu_197_p3(3 downto 1);
                    shl_ln30_6_reg_435(4 downto 2) <= shl_ln30_6_fu_209_p3(4 downto 2);
                    zext_ln30_reg_430(3 downto 1) <= zext_ln30_fu_205_p1(3 downto 1);
            end if;
        end if;
    end process;
    mul_ln30_reg_401(1 downto 0) <= "00";
    i_0_cast8_reg_412(3) <= '0';
    shl_ln30_5_reg_425(0) <= '0';
    zext_ln30_reg_430(0) <= '0';
    zext_ln30_reg_430(5 downto 4) <= "00";
    shl_ln30_6_reg_435(1 downto 0) <= "00";
    shl_ln33_2_reg_468(0) <= '0';
    add_ln33_3_reg_481(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln28_fu_185_p2, ap_CS_fsm_state3, icmp_ln29_fu_221_p2, ap_CS_fsm_state5, icmp_ln31_fu_307_p2, ap_CS_fsm_state6, icmp_ln32_fu_354_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln28_fu_185_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln29_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln31_fu_307_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln32_fu_354_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    add_ln30_2_fu_241_p2 <= std_logic_vector(unsigned(tmp_fu_233_p3) + unsigned(zext_ln30_reg_430));
    add_ln30_3_fu_268_p2 <= std_logic_vector(unsigned(i_0_cast8_reg_412) + unsigned(zext_ln29_fu_217_p1));
    add_ln30_4_fu_258_p2 <= std_logic_vector(unsigned(zext_ln30_10_fu_254_p1) + unsigned(mul_ln30_reg_401));
    add_ln30_5_fu_286_p2 <= std_logic_vector(unsigned(zext_ln30_12_fu_282_p1) + unsigned(mul_ln30_2_reg_407));
    add_ln30_fu_277_p2 <= std_logic_vector(unsigned(zext_ln30_7_fu_273_p1) + unsigned(shl_ln30_6_reg_435));
    add_ln33_2_fu_375_p2 <= std_logic_vector(unsigned(add_ln33_3_reg_481) + unsigned(zext_ln33_3_fu_371_p1));
    add_ln33_3_fu_344_p2 <= std_logic_vector(unsigned(zext_ln33_fu_340_p1) + unsigned(shl_ln33_3_fu_324_p3));
    add_ln33_4_fu_366_p2 <= std_logic_vector(unsigned(zext_ln32_fu_350_p1) + unsigned(shl_ln33_2_reg_468));
    add_ln33_5_fu_384_p2 <= std_logic_vector(unsigned(mul_ln30_reg_401) + unsigned(zext_ln33_4_fu_380_p1));
    add_ln33_fu_319_p2 <= std_logic_vector(unsigned(zext_ln31_fu_303_p1) + unsigned(shl_ln30_5_reg_425));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln28_fu_185_p2)
    begin
        if ((((icmp_ln28_fu_185_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln28_fu_185_p2)
    begin
        if (((icmp_ln28_fu_185_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_0_cast8_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_87),4));
    i_fu_191_p2 <= std_logic_vector(unsigned(i_0_reg_87) + unsigned(ap_const_lv3_1));
    icmp_ln28_fu_185_p2 <= "1" when (i_0_reg_87 = ap_const_lv3_5) else "0";
    icmp_ln29_fu_221_p2 <= "1" when (j_0_reg_99 = ap_const_lv3_5) else "0";
    icmp_ln31_fu_307_p2 <= "1" when (k_0_reg_121 = ap_const_lv2_2) else "0";
    icmp_ln32_fu_354_p2 <= "1" when (m_0_reg_144 = ap_const_lv2_2) else "0";

    input_r_address0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state6, zext_ln30_11_fu_263_p1, zext_ln33_5_fu_389_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            input_r_address0 <= zext_ln33_5_fu_389_p1(12 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            input_r_address0 <= zext_ln30_11_fu_263_p1(12 - 1 downto 0);
        else 
            input_r_address0 <= "XXXXXXXXXXXX";
        end if; 
    end process;


    input_r_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    j_fu_227_p2 <= std_logic_vector(unsigned(j_0_reg_99) + unsigned(ap_const_lv3_1));
    k_fu_313_p2 <= std_logic_vector(unsigned(k_0_reg_121) + unsigned(ap_const_lv2_1));
    m_fu_360_p2 <= std_logic_vector(unsigned(m_0_reg_144) + unsigned(ap_const_lv2_1));
    mul_ln30_2_fu_175_p0 <= mul_ln30_2_fu_175_p00(6 - 1 downto 0);
    mul_ln30_2_fu_175_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_offset),10));
    mul_ln30_2_fu_175_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_ln30_2_fu_175_p0) * unsigned(ap_const_lv10_19), 10));
    mul_ln30_fu_169_p0 <= mul_ln30_fu_169_p00(6 - 1 downto 0);
    mul_ln30_fu_169_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_offset),12));
    mul_ln30_fu_169_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_ln30_fu_169_p0) * unsigned(ap_const_lv12_64), 12));

    output_r_address0_assign_proc : process(ap_CS_fsm_state4, output_addr_reg_463, ap_CS_fsm_state9, zext_ln30_13_fu_291_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            output_r_address0 <= output_addr_reg_463;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            output_r_address0 <= zext_ln30_13_fu_291_p1(10 - 1 downto 0);
        else 
            output_r_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    output_r_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    output_r_d0_assign_proc : process(input_r_q0, ap_CS_fsm_state4, select_ln33_reg_505, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            output_r_d0 <= select_ln33_reg_505;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            output_r_d0 <= input_r_q0;
        else 
            output_r_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    output_r_we0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln33_fu_394_p3 <= 
        input_load_1_reg_499 when (grp_fu_155_p2(0) = '1') else 
        empty_13_reg_132;
    shl_ln30_5_fu_197_p3 <= (i_0_reg_87 & ap_const_lv1_0);
    shl_ln30_6_fu_209_p3 <= (i_0_reg_87 & ap_const_lv2_0);
    shl_ln33_2_fu_295_p3 <= (j_0_reg_99 & ap_const_lv1_0);
    shl_ln33_3_fu_324_p3 <= (add_ln33_fu_319_p2 & ap_const_lv3_0);
    shl_ln33_4_fu_332_p3 <= (add_ln33_fu_319_p2 & ap_const_lv1_0);
    shl_ln_fu_246_p3 <= (add_ln30_2_fu_241_p2 & ap_const_lv1_0);
    tmp_fu_233_p3 <= (i_0_reg_87 & j_0_reg_99);
    zext_ln29_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_99),4));
    zext_ln30_10_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_246_p3),12));
    zext_ln30_11_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln30_4_fu_258_p2),64));
    zext_ln30_12_fu_282_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln30_fu_277_p2),10));
    zext_ln30_13_fu_291_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln30_5_reg_453),64));
    zext_ln30_7_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln30_3_fu_268_p2),5));
    zext_ln30_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln30_5_fu_197_p3),6));
    zext_ln31_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_0_reg_121),4));
    zext_ln32_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_0_reg_144),4));
    zext_ln33_3_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln33_4_fu_366_p2),7));
    zext_ln33_4_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln33_2_fu_375_p2),12));
    zext_ln33_5_fu_389_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln33_5_fu_384_p2),64));
    zext_ln33_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln33_4_fu_332_p3),7));
end behav;
