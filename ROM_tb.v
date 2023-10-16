//Testbench Code for 16x4 ROM
module ROM_tb();

reg clk,enable;
reg [3:0]address;

wire [3:0]data_out;

ROM dut(.clk(clk),.enable(enable),.address(address),.data_out(data_out));

initial begin
clk=1'b0;
enable=1'b0;
#10;
enable=1'b1;

address=4'b1010;
#10;
address=4'b1001;
#10;
address=4'b1000;
#10;
address=4'b0010;
#10;
address=4'b0001;
#10;
address=4'b1111;
#10;
address=4'b1110;
#10;
address=4'b1101;
#10;
address=4'b1100;

#10 $finish;
end

always #4 clk=~clk;
endmodule
