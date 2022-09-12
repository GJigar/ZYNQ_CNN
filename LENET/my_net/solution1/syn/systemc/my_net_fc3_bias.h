// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __my_net_fc3_bias_H__
#define __my_net_fc3_bias_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct my_net_fc3_bias_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 10;
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


   SC_CTOR(my_net_fc3_bias_ram) {
        ram[0] = "0b1010110101010000";
        ram[1] = "0b1011001110111011";
        ram[2] = "0b1010110111111110";
        ram[3] = "0b0010111111011111";
        ram[4] = "0b0011010010000001";
        ram[5] = "0b1010101101110011";
        ram[6] = "0b0010100001100111";
        ram[7] = "0b1011001011001011";
        ram[8] = "0b0011000010001010";
        ram[9] = "0b1010111100101000";


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


SC_MODULE(my_net_fc3_bias) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


my_net_fc3_bias_ram* meminst;


SC_CTOR(my_net_fc3_bias) {
meminst = new my_net_fc3_bias_ram("my_net_fc3_bias_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~my_net_fc3_bias() {
    delete meminst;
}


};//endmodule
#endif
