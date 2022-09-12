-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Aug  6 17:57:00 2022
-- Host        : MS-QMGTGLWCUXSR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_my_net_0_1_stub.vhdl
-- Design      : design_1_my_net_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CRTL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CRTL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CRTL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CRTL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CRTL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CRTL_BUS_WVALID : in STD_LOGIC;
    s_axi_CRTL_BUS_WREADY : out STD_LOGIC;
    s_axi_CRTL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CRTL_BUS_BVALID : out STD_LOGIC;
    s_axi_CRTL_BUS_BREADY : in STD_LOGIC;
    s_axi_CRTL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CRTL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CRTL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CRTL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CRTL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CRTL_BUS_RVALID : out STD_LOGIC;
    s_axi_CRTL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    input_r_Clk_A : out STD_LOGIC;
    input_r_Rst_A : out STD_LOGIC;
    input_r_EN_A : out STD_LOGIC;
    input_r_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    input_r_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    input_r_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    input_r_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_r_Clk_A : out STD_LOGIC;
    output_r_Rst_A : out STD_LOGIC;
    output_r_EN_A : out STD_LOGIC;
    output_r_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    output_r_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_r_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_r_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CRTL_BUS_AWADDR[3:0],s_axi_CRTL_BUS_AWVALID,s_axi_CRTL_BUS_AWREADY,s_axi_CRTL_BUS_WDATA[31:0],s_axi_CRTL_BUS_WSTRB[3:0],s_axi_CRTL_BUS_WVALID,s_axi_CRTL_BUS_WREADY,s_axi_CRTL_BUS_BRESP[1:0],s_axi_CRTL_BUS_BVALID,s_axi_CRTL_BUS_BREADY,s_axi_CRTL_BUS_ARADDR[3:0],s_axi_CRTL_BUS_ARVALID,s_axi_CRTL_BUS_ARREADY,s_axi_CRTL_BUS_RDATA[31:0],s_axi_CRTL_BUS_RRESP[1:0],s_axi_CRTL_BUS_RVALID,s_axi_CRTL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,input_r_Clk_A,input_r_Rst_A,input_r_EN_A,input_r_WEN_A[3:0],input_r_Addr_A[31:0],input_r_Din_A[31:0],input_r_Dout_A[31:0],output_r_Clk_A,output_r_Rst_A,output_r_EN_A,output_r_WEN_A[3:0],output_r_Addr_A[31:0],output_r_Din_A[31:0],output_r_Dout_A[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_net,Vivado 2019.1";
begin
end;
