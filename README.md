# RTL-Day-26-Dual Port Synchronous RAM
### Problem Statement: Implementing Dual Port Synchronous RAM 256x8
### Theory:
#### RAM
Random Access Memory is the temporary memory used in a processor or 
the digital system which requires larger memory for storing temporary data. 
When designing any system on FPGA, sometimes we require a RAM block 
which is also called BRAM or block RAM. In this post, we'll how to 
describe a RAM in Verilog HDL. Most of the latest FPGAs have BRAM 
and if we synthesize this, it will be synthesized into a BRAM.

A RAM has a data bus (sometimes called width of RAM) form which we 
can access content from the RAM or we can put a content on this, and if we 
give write command to the RAM, it'll write RAM with the content on the 
data bus. RAM has lots of addresses (sometimes called depth of RAM) and 
these addresses can be accessed by the address bus.

Other than data and address bus, RAM has one more input read/write. If it's 
state is changed, let's say if it is high, the content at data bus is written to the 
address provided to the RAM from address bus else the content of the 
address provided by address bus is reflected to the data bus.

![image](https://github.com/tusharshenoy/RTL-Day-26-Dual-Port-Synchronous-RAM/assets/107348474/aa45fa43-eaf0-43d2-b576-64b4c739c26b)
#### FIG: Dual Port Synchronous RAM

#### Schematic:

![image](https://github.com/tusharshenoy/RTL-Day-26-Dual-Port-Synchronous-RAM/assets/107348474/9795dd02-a9b3-4d79-b002-ea991292df1b)
#### Fig: Dual Port Synchronous RAM (not complete schematic)

#### Simulation Output:

![image](https://github.com/tusharshenoy/RTL-Day-26-Dual-Port-Synchronous-RAM/assets/107348474/a80acb28-bbc8-40ec-a2a3-4a0f04e6e2a6)

