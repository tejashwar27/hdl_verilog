// -------------------------------------------------------
//  Course: HDL(2022-23)
//  Project: 2 to 1 MUX
//  Description: Module for 2 to 1 MUX
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------

module mux21(
    // Port list
    output [1:0]C,
    input A,
    input B,
    input S
);//{

    // Architecture/Design
    // C = ~S.A + S.B

    wire w1, w2, w3;

    assign C[0] = ((~S)&A) | (S&B);
    not(w1, S);       // w1 = ~S
    and(w2, w1, A);   // w2 = w1.A = ~S.A
    and(w3, S, B);    // w3 = S.B
    or(C[1], w2, w3);

endmodule //}
