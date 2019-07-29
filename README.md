# 7SegmentTut
Tutorial files for the 7 Segment FPGA demo  
  
These files must be imported into the Lattice Diamond IDE.   
The SegmentLogic_verilog file contains the BCD to 7-Segment coding logic simplified with Karnaugh map.  
The altSegmentLogic_verilog file contains an alternate implementation for the coding module - with a ROM.  
The SegmentTest_verilog file is used for the behavioral simulation of the coder module.  
The TopModule_verilog file contains the main file:   
    one internal oscillator configured for 7MHz,   
    a counter to generate a 1Hz clock signal,  
    a counter for the BCD code (0 - 9),  
    the BCD->7-Segment coder instance.  
The Segment.lpf file contains the I/O constraints and pinouts.  
