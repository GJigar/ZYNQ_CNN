// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __my_net_fexp_32ns_lbW__HH__
#define __my_net_fexp_32ns_lbW__HH__
#include "ACMP_fexp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(my_net_fexp_32ns_lbW) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_fexp<ID, 9, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_fexp_U;

    SC_CTOR(my_net_fexp_32ns_lbW):  ACMP_fexp_U ("ACMP_fexp_U") {
        ACMP_fexp_U.clk(clk);
        ACMP_fexp_U.reset(reset);
        ACMP_fexp_U.ce(ce);
        ACMP_fexp_U.din0(din0);
        ACMP_fexp_U.din1(din1);
        ACMP_fexp_U.dout(dout);

    }

};

#endif //
