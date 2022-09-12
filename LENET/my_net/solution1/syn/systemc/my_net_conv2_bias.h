// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __my_net_conv2_bias_H__
#define __my_net_conv2_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct my_net_conv2_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(my_net_conv2_bias_ram) {
        ram[0] = "0b1010110101001000";
        ram[1] = "0b0001101001011001";
        ram[2] = "0b0011000001111101";
        ram[3] = "0b1010011110010100";
        ram[4] = "0b1010101101010010";
        ram[5] = "0b0011001111010011";
        ram[6] = "0b0011001000011111";
        ram[7] = "0b0010101010100001";
        ram[8] = "0b0011001000000000";
        ram[9] = "0b0011000001011101";
        ram[10] = "0b0010111010110010";
        ram[11] = "0b0011001011101001";
        ram[12] = "0b0010100110001011";
        ram[13] = "0b1011000111010100";
        ram[14] = "0b1011010011010010";
        ram[15] = "0b0010111110000010";
        ram[16] = "0b1010100111110100";
        ram[17] = "0b1011000011010111";
        ram[18] = "0b1011001101110001";
        ram[19] = "0b1010110001011100";
        ram[20] = "0b1010100100001011";
        ram[21] = "0b0011011011010001";
        ram[22] = "0b0011001000111001";
        ram[23] = "0b1010101010110010";
        ram[24] = "0b1011000000110100";
        ram[25] = "0b0010011110111011";
        ram[26] = "0b0011001000100110";
        ram[27] = "0b1001111101011111";
        ram[28] = "0b0011010000101110";
        ram[29] = "0b1011000111110111";
        ram[30] = "0b0001110011010000";
        ram[31] = "0b0010100101111110";


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


SC_MODULE(my_net_conv2_bias) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


my_net_conv2_bias_ram* meminst;


SC_CTOR(my_net_conv2_bias) {
meminst = new my_net_conv2_bias_ram("my_net_conv2_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~my_net_conv2_bias() {
    delete meminst;
}


};//endmodule
#endif
