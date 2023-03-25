// -------------------------------------------------------
//  Course: HDL(2022-23)
//  Project: 2 to 1 MUX
//  Description: Testbench to test and module
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------

`timescale 1ns/1ps

module tb_top(); //{

    reg clk    = 0;

    reg ra, rb, rs;
    wire [1:0]wc;

    // Waveform generation
    initial begin //{
        $dumpvars();
    end //}

    always #10 clk = ~clk; // Clock with 20ns time period
    
    // Input Seq.
    initial begin //{
        rs = 1; // C = B
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
        rs = 0; // C = A
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

    mux21 DUT (.A(ra), .B(rb), .C(wc), .S(rs));

endmodule //}
