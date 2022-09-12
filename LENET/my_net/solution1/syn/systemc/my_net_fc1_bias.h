// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __my_net_fc1_bias_H__
#define __my_net_fc1_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct my_net_fc1_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 120;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(my_net_fc1_bias_ram) {
        ram[0] = "0b1010001010011011";
        ram[1] = "0b1010011000001011";
        ram[2] = "0b1010010100011111";
        ram[3] = "0b1010010011111110";
        ram[4] = "0b0010100100001000";
        ram[5] = "0b1010001101010010";
        ram[6] = "0b0010001101000101";
        ram[7] = "0b0010101110101000";
        ram[8] = "0b0010111110101100";
        ram[9] = "0b1011001000000010";
        ram[10] = "0b1001111011000010";
        ram[11] = "0b1010000110100010";
        ram[12] = "0b0011000011010111";
        ram[13] = "0b1001111011110111";
        ram[14] = "0b1010000001110100";
        ram[15] = "0b1011010000011101";
        ram[16] = "0b1010011100101011";
        ram[17] = "0b1001111001110100";
        ram[18] = "0b0010101110100001";
        ram[19] = "0b0010100011110111";
        ram[20] = "0b0010000010110110";
        ram[21] = "0b1010011000110010";
        ram[22] = "0b0011010000101101";
        ram[23] = "0b1010101011001111";
        ram[24] = "0b0010011100000100";
        ram[25] = "0b1010101011110011";
        ram[26] = "0b1010100000010101";
        ram[27] = "0b1010010001101110";
        ram[28] = "0b0010111101110001";
        ram[29] = "0b0010011000011110";
        ram[30] = "0b0010010001010100";
        ram[31] = "0b1010100100011111";
        ram[32] = "0b0011000000000001";
        ram[33] = "0b1010010101101101";
        ram[34] = "0b1010001011011100";
        ram[35] = "0b0011001011000001";
        ram[36] = "0b1001010110111100";
        ram[37] = "0b0010111010000100";
        ram[38] = "0b0010010100010010";
        ram[39] = "0b0011010010011000";
        ram[40] = "0b0010100011001010";
        ram[41] = "0b0011001010110010";
        ram[42] = "0b0010101111110000";
        ram[43] = "0b0001110110100010";
        ram[44] = "0b0010001000001011";
        ram[45] = "0b1010100101000011";
        ram[46] = "0b0010010111100011";
        ram[47] = "0b0010001011110111";
        ram[48] = "0b1011000000110101";
        ram[49] = "0b0011000010001100";
        ram[50] = "0b1010011101011001";
        ram[51] = "0b0011000110101011";
        ram[52] = "0b0010101111001100";
        ram[53] = "0b1010010000101100";
        ram[54] = "0b1010101110011010";
        ram[55] = "0b0010110010001000";
        ram[56] = "0b0010010010001111";
        ram[57] = "0b0011000000101011";
        ram[58] = "0b0010111110101110";
        ram[59] = "0b1010100110101111";
        ram[60] = "0b1010101100000100";
        ram[61] = "0b0010101010111100";
        ram[62] = "0b1010011000111111";
        ram[63] = "0b0011010000001011";
        ram[64] = "0b1001101111111101";
        ram[65] = "0b0010101111001111";
        ram[66] = "0b0010110110010001";
        ram[67] = "0b0010001011110111";
        ram[68] = "0b0011001110010110";
        ram[69] = "0b1010100001100100";
        ram[70] = "0b1010010011110111";
        ram[71] = "0b0010010100011111";
        ram[72] = "0b1010100011100000";
        ram[73] = "0b0010101001110111";
        ram[74] = "0b1010100101110100";
        ram[75] = "0b0001111101011111";
        ram[76] = "0b1011000101111110";
        ram[77] = "0b1001111110010100";
        ram[78] = "0b0011000000101111";
        ram[79] = "0b1010010010101001";
        ram[80] = "0b0010111111010100";
        ram[81] = "0b1011010001101011";
        ram[82] = "0b1011000000011011";
        ram[83] = "0b0010100010101001";
        ram[84] = "0b0010010111000011";
        ram[85] = "0b0010000100011111";
        ram[86] = "0b0011001001110100";
        ram[87] = "0b0011010101101011";
        ram[88] = "0b0010110100101111";
        ram[89] = "0b0011000011110100";
        ram[90] = "0b1010100100111001";
        ram[91] = "0b1010100000100110";
        ram[92] = "0b0011010010110010";
        ram[93] = "0b0010100111111010";
        ram[94] = "0b1010010010000001";
        ram[95] = "0b1010100110011011";
        ram[96] = "0b1010100000110011";
        ram[97] = "0b0011000100011111";
        ram[98] = "0b0010000001011010";
        ram[99] = "0b0010011001110100";
        ram[100] = "0b0010010100100101";
        ram[101] = "0b1010101001111101";
        ram[102] = "0b1010110000100111";
        ram[103] = "0b1010100100101100";
        ram[104] = "0b0011010111010010";
        ram[105] = "0b0010010010011100";
        ram[106] = "0b1010001101011111";
        ram[107] = "0b0010011001001100";
        ram[108] = "0b1011000111110000";
        ram[109] = "0b0011001011000110";
        ram[110] = "0b1010111011011110";
        ram[111] = "0b0011000000100110";
        ram[112] = "0b0010100011011101";
        ram[113] = "0b0011001001111101";
        ram[114] = "0b0010010000001011";
        ram[115] = "0b0011010110010011";
        ram[116] = "0b1010100100000001";
        ram[117] = "0b1010101000000111";
        ram[118] = "0b0010110101101000";
        ram[119] = "0b1010000110100010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(my_net_fc1_bias) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 120;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


my_net_fc1_bias_ram* meminst;


SC_CTOR(my_net_fc1_bias) {
meminst = new my_net_fc1_bias_ram("my_net_fc1_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~my_net_fc1_bias() {
    delete meminst;
}


};//endmodule
#endif
