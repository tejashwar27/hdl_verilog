// -------------------------------------------------------
//  Courcine: HDL(2022-23)
//  Project: FSM
//  Description: Testbench template for FSM
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------

`timescale 1ns/1ps

module tb_top(); //{

    reg r_clk      = 0;
    reg r_reset    = 0;
    reg r_x        = 0;

    wire wz;

    // Waveform generation
    initial begin //{
        $dumpvars();
    end //}

    always #10 r_clk = ~r_clk; // Clock with 20ns time period

    // Input Seq.
    initial begin //{
        r_reset = 1;
        r_x = 0;
        #20
        r_reset = 0;
        #40
        r_x = 1;
        #20
        r_x = 0;
        #20
        r_x = 1;
        #20
        r_x = 0;
        #20
        r_x = 1;
        #100
        $finish;
    end //}

    // FSM Instance

    fsm DUT (.clk(r_clk),
             .reset(r_reset),
             .x(r_x),
             .z(wz));


endmodule //}
