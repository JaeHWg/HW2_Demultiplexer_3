//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );
    
//YOUR CODE HERE
reg [1:0]w = 0;  //register variable "w" to be 0
assign W=w;  //assign W to varible "w"
reg [1:0]x = 0;
assign X=x;
reg [1:0]y = 0; 
assign Y=y;  
reg [1:0]z = 0;
assign Z=z;

always@(A,SEL) begin  //while there's inputs A or SEL begin loop
    
    if (SEL==2'b00) begin
        w=A;
        {x,y,z}=0;
    end
    else begin
        w=0;
    end
    
    if (SEL==2'b01) begin
        x=A;
        {w,y,z}=0;
    end
    else begin
        x=0;
    end
    
    if (SEL==2'b10) begin
        y=A;
        {w,x,z}=0;
    end
    else begin
        y=0;
    end
    
     if (SEL==2'b11) begin
        z=A;
        {w,x,y}=0;
    end
    else begin
        z=0;
    end

/*begin
assign w = (SEL==2'b00)? A : 2'b00;
assign x = (SEL==2'b01)? A : 2'b00;
assign w = (SEL==2'b00)? A : 2'b00;
assign w = (SEL==2'b00)? A : 2'b00;
end*/

end
endmodule