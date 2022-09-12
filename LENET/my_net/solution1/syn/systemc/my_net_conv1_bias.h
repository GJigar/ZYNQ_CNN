// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __my_net_conv1_bias_H__
#define __my_net_conv1_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct my_net_conv1_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(my_net_conv1_bias_ram) {
        ram[0] = "0b1011000011101101";
        ram[1] = "0b1011000011100100";
        ram[2] = "0b1011000100100010";
        ram[3] = "0b1010110111001011";
        ram[4] = "0b1011000100100000";
        ram[5] = "0b1011010001001010";
        ram[6] = "0b1001100100011111";
        ram[7] = "0b1010101100000000";
        ram[8] = "0b1010010110000001";
        ram[9] = "0b1010110011100100";
        ram[10] = "0b0011000011101111";
        ram[11] = "0b0010011111111101";
        ram[12] = "0b1010010111110000";
        ram[13] = "0b1010110111111001";
        ram[14] = "0b1010100011010000";
        ram[15] = "0b1011010001110001";


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


SC_MODULE(my_net_conv1_bias) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


my_net_conv1_bias_ram* meminst;


SC_CTOR(my_net_conv1_bias) {
meminst = new my_net_conv1_bias_ram("my_net_conv1_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~my_net_conv1_bias() {
    delete meminst;
}


};//endmodule
#endif
