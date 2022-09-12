// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __my_net_fc2_bias_H__
#define __my_net_fc2_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct my_net_fc2_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 84;
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


   SC_CTOR(my_net_fc2_bias_ram) {
        ram[0] = "0b1010100101111110";
        ram[1] = "0b0011001001111111";
        ram[2] = "0b0011001001011101";
        ram[3] = "0b0010100001111011";
        ram[4] = "0b1010111011100001";
        ram[5] = "0b1010110000100001";
        ram[6] = "0b0011000110100011";
        ram[7] = "0b0010100000110011";
        ram[8] = "0b1010111101000111";
        ram[9] = "0b0010100100011000";
        ram[10] = "0b0011000110011101";
        ram[11] = "0b1010101000011000";
        ram[12] = "0b1010001000111111";
        ram[13] = "0b1010110001111101";
        ram[14] = "0b0011010111011111";
        ram[15] = "0b0011001101001101";
        ram[16] = "0b1010101000000001";
        ram[17] = "0b0011000101000010";
        ram[18] = "0b0011001101001111";
        ram[19] = "0b1010011100010001";
        ram[20] = "0b1010111100110010";
        ram[21] = "0b1010010011100100";
        ram[22] = "0b0010110001101100";
        ram[23] = "0b0010100110100101";
        ram[24] = "0b0001110110001000";
        ram[25] = "0b0011011101100111";
        ram[26] = "0b0010111110101110";
        ram[27] = "0b1011001100100010";
        ram[28] = "0b0011001101111111";
        ram[29] = "0b0011001011110010";
        ram[30] = "0b0010100001101010";
        ram[31] = "0b1011000000110100";
        ram[32] = "0b1010010011001010";
        ram[33] = "0b1010111110110101";
        ram[34] = "0b0010110100001011";
        ram[35] = "0b1010110100111111";
        ram[36] = "0b0010111010011110";
        ram[37] = "0b1011000011010001";
        ram[38] = "0b0010111011010111";
        ram[39] = "0b1010110101111001";
        ram[40] = "0b1001111001110100";
        ram[41] = "0b0010100101100111";
        ram[42] = "0b1011000001010001";
        ram[43] = "0b0010001111111101";
        ram[44] = "0b0011000111100011";
        ram[45] = "0b0010001001011001";
        ram[46] = "0b1011000100111101";
        ram[47] = "0b0010110011110010";
        ram[48] = "0b0011001010010010";
        ram[49] = "0b0010100011001010";
        ram[50] = "0b0011000111011100";
        ram[51] = "0b0011001110101101";
        ram[52] = "0b1010100100000101";
        ram[53] = "0b1010100100000101";
        ram[54] = "0b0011010010111111";
        ram[55] = "0b1010000100111001";
        ram[56] = "0b0011000110000011";
        ram[57] = "0b0011010010111001";
        ram[58] = "0b0010111010001001";
        ram[59] = "0b0011010000100110";
        ram[60] = "0b0011000110001111";
        ram[61] = "0b0010110011101010";
        ram[62] = "0b0011010010000111";
        ram[63] = "0b1011001000101000";
        ram[64] = "0b1010101101001111";
        ram[65] = "0b1010101000111111";
        ram[66] = "0b1010110101101101";
        ram[67] = "0b0010110100101111";
        ram[68] = "0b0001100010000001";
        ram[69] = "0b1001101011110111";
        ram[70] = "0b1010010011101010";
        ram[71] = "0b0010111000001001";
        ram[72] = "0b1011000110010011";
        ram[73] = "0b0010110011011101";
        ram[74] = "0b0011000011100010";
        ram[75] = "0b0011010110101111";
        ram[76] = "0b0011000111010110";
        ram[77] = "0b0011010110001001";
        ram[78] = "0b1010100010011100";
        ram[79] = "0b0011011110100001";
        ram[80] = "0b1010110000000011";
        ram[81] = "0b1010111101000101";
        ram[82] = "0b1010110010010011";
        ram[83] = "0b0010110011101100";


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


SC_MODULE(my_net_fc2_bias) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 84;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


my_net_fc2_bias_ram* meminst;


SC_CTOR(my_net_fc2_bias) {
meminst = new my_net_fc2_bias_ram("my_net_fc2_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~my_net_fc2_bias() {
    delete meminst;
}


};//endmodule
#endif
