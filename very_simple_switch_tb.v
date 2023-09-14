module very_simple_switch_tb(

    );
    parameter DWIDTH=64; 
    parameter INPUT_QTY=8,OUTPUT_QTY=8; 
    parameter DEPTH=2**INPUT_QTY; 
    reg clk, reset;
    reg [DWIDTH-1:0] in;
    reg push;
    reg pop;
    wire empty, almostempty, full, almostfull;
    wire [DWIDTH-1:0] out;
    wire [INPUT_QTY:0] num;
    
    integer i;
    very_simple_switch # (.DWIDTH(DWIDTH), .AWIDTH(AWIDTH), .DEPTH(DEPTH)) dut(
        .clk(clk),
        .reset(reset),
        .in(in),
        .push(push),
        .pop(pop),
        .empty(empty),
        .almostempty(almostempty),
        .full(full),
        .almostfull(almostfull),
        .out(out),
        .num(num)
    );
    
    initial begin
        clk = 0;
        forever begin
            #10 clk = ~clk;
        end
    end
    
    initial begin
    reset = 1'b1;
    pop = 1'b0;
    #15
    push = 1'b1;
    #5;
    reset = 1'b0;
        for (i=0; i<2*DEPTH; i=i+1) begin
            in= i;
            #64;
            if (i==3*DEPTH/2) begin
                pop = 1'b1;
            end
        end
        push = 1'b0;
    end
endmodule