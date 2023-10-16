//Verilog Code for 16x4 ROM
module ROM(clk,enable,address,data_out);

input clk,enable;
input [3:0]address;

output reg [3:0]data_out;

reg [3:0]mem[15:0];

always@(posedge clk)
begin
    if(enable)
       data_out<=mem[address];
    else 
       data_out<=4'bxxxx;
end

initial begin
mem[0]=4'b1111;
mem[1]=4'b1110;
mem[2]=4'b1101;
mem[3]=4'b1100;
mem[4]=4'b1011;
mem[5]=4'b1010;
mem[6]=4'b1001;
mem[7]=4'b1000;
mem[8]=4'b0111;
mem[9]=4'b0110;
mem[10]=4'b0101;
mem[11]=4'b0100;
mem[12]=4'b0011;
mem[13]=4'b1010;
mem[14]=4'b0001;
mem[15]=4'b0000;
end

endmodule
