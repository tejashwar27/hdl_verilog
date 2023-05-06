module fsm (
    input clk,
    input reset,   // Synchronous reset
    input x,
    output reg z
);
    reg [2:0] q;
    reg [2:0] nq;

    always @(posedge clk) begin //{
        if (reset == 'b1) begin //{
            q <= 3'b000;
        end //}
        else begin //{
            q <= nq;
        end //}
    end //}

    always @(*) begin //{
        case (q)
            3'b000: begin //{
                z <= 'b0;
                if (x == 'b0) begin //{
                    nq <= 3'b000;
                end //}
                else begin //{
                    nq <= 3'b001;
                end //}
            end //}
            3'b001: begin //{
                z <= 'b0;
                if (x == 'b0) begin //{
                    nq <= 3'b001;
                end //}
                else begin //{
                    nq <= 3'b100;
                end //}
            end //}
            3'b010: begin //{
                z <= 'b0;
                if (x == 'b0) begin //{
                    nq <= 3'b010;
                end //}
                else begin //{
                    nq <= 3'b001;
                end //}
            end //}
            3'b011: begin //{
                z <= 'b1;
                if (x == 'b0) begin //{
                    nq <= 3'b001;
                end //}
                else begin //{
                    nq <= 3'b010;
                end //}
            end //}
            3'b100: begin //{
                z <= 'b1;
                if (x == 'b0) begin //{
                    nq <= 3'b011;
                end //}
                else begin //{
                    nq <= 3'b100;
                end //}
            end //}
            default: begin //{
                z <= 'b0;
                nq <= 3'b000;
            end //}
        endcase
    end //}

endmodule
