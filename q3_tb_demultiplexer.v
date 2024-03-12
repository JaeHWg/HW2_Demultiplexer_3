module demultiplexer_tb();
    reg [1:0]A;
    reg [1:0]SEL;
    wire [1:0]W;
    wire [1:0]X;
    wire [1:0]Y;
    wire [1:0]Z;
   
demultiplexer d1(A,SEL,W,X,Y,Z);

initial begin
    #0 A <= 2'b00;
    #0 SEL <= 2'b00;
    
    #10 A <= 2'b01;
    #0 SEL <= 2'b01;
    
    #10 A <= 2'b11;
    #0 SEL <= 2'b11;
    
    #10 A <= 2'b11;
    #0 SEL <= 2'b10;
    
    #10 A <= 2'b10;
    #0 SEL <= 2'b01;
    
    #10 $stop;
    
    end
    
endmodule