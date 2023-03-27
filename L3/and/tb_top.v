// -------------------------------------------------------
//  Course: HDL(2022-23)
//  Project: AND Gate
//  Description: Testbench to test and module
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------

`timescale 1ns/1ps

module tb_top(); //{

    reg clk    = 0;

    reg ra;
    reg rb;
    wire [1:0] wc;

    initial begin //{
        $dumpvars();
    end //}

    always #10 clk = ~clk; // Clock with 20ns time period

    initial begin //{
        ra = 0;
        rb = 0;
        #20
        ra = 1;
        rb = 0;
        #20
        ra = 1;
        rb = 1;
        #20
        ra = 0;
        rb = 1;
        #20
        $finish;
    end //}

    and_module DUT (.a(ra), .b(rb), .c1(wc[0]), .c2(wc[1]));

endmodule //}
