//Testbench for Dual Port Synchronous RAM
module RAM_tb;

parameter RAM_width = 8;
parameter RAM_depth = 256;
parameter address_size = 8;

reg clk;
reg reset;
reg write_enable;
reg read_enable;
reg [RAM_width-1:0] data_in;
reg [address_size-1:0] write_address;
reg [address_size-1:0] read_address;

wire [RAM_width-1:0] data_out;

RAM dut(.clk(clk),.reset(reset),.write_enable(write_enable),.read_enable(read_enable),.write_address(write_address),.read_address(read_address),.data_in(data_in),.data_out(data_out)
);

initial begin
    
    clk = 1'b0;
    reset = 1'b0;
    write_enable =1'b0;
    read_enable = 1'b0;
    data_in = 8'b0;
    write_address = 8'b0;
    read_address = 8'b0;

  
    reset = 1;
    #10;
    reset = 0;


    write_enable = 1;
    data_in = 8'b10101010;
    write_address = 8'b00100011;
    #10;
    write_enable = 0;

  
    read_enable = 1;
    read_address = 8'b00100011;
    #10;
    read_enable = 0;
    
    // Add more testcases Here
    $finish;
end

always  #5 clk = ~clk; 


endmodule
