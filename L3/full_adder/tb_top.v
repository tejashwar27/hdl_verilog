// -------------------------------------------------------
//  Courcine: HDL(2022-23)
//  Project: Full Adder
//  Description: Testbench template for Full Adder
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------

`timescale 1ns/1ps

module tb_top(); //{

    reg clk    = 0;

    reg ra, rb, rcin;
    wire wcout, wsum;

    // Waveform generation
    initial begin //{
        $dumpvars();
    end //}

    always #10 clk = ~clk; // Clock with 20ns time period
    
    // Input Seq.
    initial begin //{
        rcin = 1;
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
        rcin = 0;
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

    // Create a Full Adder instance here
    // Inputs: ra, rb, rcin
    // Outputs: wcout, wsum

    full_add DUT(.a(ra), .b(rb), .cin(rcin), .cout(wcout), .sum(wsum));

endmodule //}
