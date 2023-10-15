//Verilog code for Dual Port Synchronous RAM
module RAM(clk,reset,write_enable,read_enable,write_address,read_address,data_in,data_out);

parameter RAM_width=8;
parameter RAM_depth=256;
parameter address_size=8;

input clk,reset,write_enable,read_enable;
input [RAM_width-1:0]data_in;
input [address_size-1:0]write_address,read_address;

output reg [RAM_width-1:0]data_out;

reg [RAM_width-1:0]mem[RAM_depth-1:0];

integer i;

always@(posedge clk)
    begin
        if(reset)
          begin
            for(i=0;i<RAM_depth;i=i+1)
              mem[i]<=0;
           data_out<=0;
           end
        else
        begin
          if(write_enable)
           mem[write_address]<=data_in;
          else if(read_enable)
          data_out<=mem[read_address];
        end
    end 
endmodule
