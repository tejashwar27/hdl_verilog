// -------------------------------------------------------
//  Course: HDL(2022-23)
//  Project: AND Gate
//  Description: And gate module using assign statement
//  Owner: Tejeshwar
//  Indian Institute of Technology Bombay
// -------------------------------------------------------

module and_module (
    input a,
    input b,
    output c1, 
    output c2
);//{
    assign c1 = a & b; // And of two inputs
    
    or (c2, a, b);
endmodule //}
