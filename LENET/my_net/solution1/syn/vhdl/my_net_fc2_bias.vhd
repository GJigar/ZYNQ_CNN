-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity my_net_fc2_bias_rom is 
    generic(
             DWIDTH     : integer := 16; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 84
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of my_net_fc2_bias_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010100101111110", 1 => "0011001001111111", 2 => "0011001001011101", 
    3 => "0010100001111011", 4 => "1010111011100001", 5 => "1010110000100001", 
    6 => "0011000110100011", 7 => "0010100000110011", 8 => "1010111101000111", 
    9 => "0010100100011000", 10 => "0011000110011101", 11 => "1010101000011000", 
    12 => "1010001000111111", 13 => "1010110001111101", 14 => "0011010111011111", 
    15 => "0011001101001101", 16 => "1010101000000001", 17 => "0011000101000010", 
    18 => "0011001101001111", 19 => "1010011100010001", 20 => "1010111100110010", 
    21 => "1010010011100100", 22 => "0010110001101100", 23 => "0010100110100101", 
    24 => "0001110110001000", 25 => "0011011101100111", 26 => "0010111110101110", 
    27 => "1011001100100010", 28 => "0011001101111111", 29 => "0011001011110010", 
    30 => "0010100001101010", 31 => "1011000000110100", 32 => "1010010011001010", 
    33 => "1010111110110101", 34 => "0010110100001011", 35 => "1010110100111111", 
    36 => "0010111010011110", 37 => "1011000011010001", 38 => "0010111011010111", 
    39 => "1010110101111001", 40 => "1001111001110100", 41 => "0010100101100111", 
    42 => "1011000001010001", 43 => "0010001111111101", 44 => "0011000111100011", 
    45 => "0010001001011001", 46 => "1011000100111101", 47 => "0010110011110010", 
    48 => "0011001010010010", 49 => "0010100011001010", 50 => "0011000111011100", 
    51 => "0011001110101101", 52 to 53=> "1010100100000101", 54 => "0011010010111111", 
    55 => "1010000100111001", 56 => "0011000110000011", 57 => "0011010010111001", 
    58 => "0010111010001001", 59 => "0011010000100110", 60 => "0011000110001111", 
    61 => "0010110011101010", 62 => "0011010010000111", 63 => "1011001000101000", 
    64 => "1010101101001111", 65 => "1010101000111111", 66 => "1010110101101101", 
    67 => "0010110100101111", 68 => "0001100010000001", 69 => "1001101011110111", 
    70 => "1010010011101010", 71 => "0010111000001001", 72 => "1011000110010011", 
    73 => "0010110011011101", 74 => "0011000011100010", 75 => "0011010110101111", 
    76 => "0011000111010110", 77 => "0011010110001001", 78 => "1010100010011100", 
    79 => "0011011110100001", 80 => "1010110000000011", 81 => "1010111101000101", 
    82 => "1010110010010011", 83 => "0010110011101100" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity my_net_fc2_bias is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 84;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of my_net_fc2_bias is
    component my_net_fc2_bias_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    my_net_fc2_bias_rom_U :  component my_net_fc2_bias_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


