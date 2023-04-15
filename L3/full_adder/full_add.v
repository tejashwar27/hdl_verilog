// -------------------------------------------------------
//  Courcine: HDL(2022-23)
//  Project: Full Adder
//  Description: Testbench template for Full Adder
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------


module full_add (
    input a,
    input b,
    input cin,
    output sum,
    output cout
); //{

   // sum = a xor b xor cin
   // cout = a.b+c(a+b)
   //

   wire w1, w2, w3, w4;

   assign sum = a ^ b ^ cin;

   assign w1 = a & b;
   assign w2 = a | b;

   assign w3 = cin & w2;

   assign cout = w1 | w3;

   assign w4 = (a&b)|(cin&(a|b));
endmodule //}
