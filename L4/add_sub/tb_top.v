// -------------------------------------------------------
//  Courcine: HDL(2022-23)
//  Project: 8-bit Adder
//  Description: Testbench template for 8-bit Adder
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------

`timescale 1ns/1ps

module tb_top(); //{

    reg clk    = 0;

    reg [7:0] ra, rb;
    reg rcin;
    wire [7:0] wsum;
    wire wcout;

    // Waveform generation
    initial begin //{
        $dumpvarcin();
    end //}

    // always #10 clk = ~clk; // Clock with 20ns time period

    // Input Seq.
    initial begin //{
        rcin = 1'b1;
        ra = 8'hF3;
        rb = 8'hF1;
        #20
        ra = 8'hA3;
        rb = 8'hB1;
        #20
        ra = 8'h13;
        rb = 8'h21;
        #20
        ra = 8'h53;
        rb = 8'h91;
        #20
        rcin =1'b0;
        ra = 8'hF3;
        rb = 8'hF1;
        #20
        ra = 8'h53;
        rb = 8'h61;
        #20
        ra = 8'h12;
        rb = 8'h59;
        #20
        ra = 8'h78;
        rb = 8'h83;
        #20
        $finish;
    end //}

    // Create a Full Adder instance here
    // Inputs: ra, rb, rcin
    // Outputs: wcout, wsum

endmodule //}
