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

    reg wa;
    reg wb;
    wire wc;

    initial begin //{
        $dumpvars();
    end //}

    always #10 clk = ~clk; // Clock with 20ns time period

    initial begin //{
        wa = 0;
        wb = 0;
        #20
        wa = 1;
        wb = 0;
        #20
        wa = 1;
        wb = 1;
        #20
        $finish;
    end //}

    and_module DUT (.a(wa), .b(wb), .c(wc));

endmodule //}
