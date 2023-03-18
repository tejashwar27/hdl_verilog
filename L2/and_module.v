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
    output c
);//{
    assign c = a & b; // And of two inputs
endmodule //}
