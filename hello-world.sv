import uvm_pkg::*;

program main();

  initial begin

		`uvm_info("main_phase", $sformatf("%d Hello World", $time()), UVM_HIGH); 
		#12; 
		`uvm_info("main_phase", $sformatf("%d Halfway Through  World", $time()), UVM_HIGH);
	    #34;
    	`uvm_info("main_phase", $sformatf("%d Goodbye World", $time()), UVM_HIGH);
    
  end // initial 

endprogram



/* 

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul  3 18:33 2024
----------------------------------------------------------------
UVM-1.1d.Synopsys
(C) 2007-2013 Mentor Graphics Corporation
(C) 2007-2013 Cadence Design Systems, Inc.
(C) 2006-2013 Synopsys, Inc.
(C) 2011-2013 Cypress Semiconductor Corp.
----------------------------------------------------------------

  ***********       IMPORTANT RELEASE NOTES         ************

  You are using a version of the UVM library that has been compiled
  with `UVM_NO_DEPRECATED undefined.
  See http://www.eda.org/svdb/view.php?id=3313 for more details.

  You are using a version of the UVM library that has been compiled
  with `UVM_OBJECT_MUST_HAVE_CONSTRUCTOR undefined.
  See http://www.eda.org/svdb/view.php?id=3770 for more details.

      (Specify +UVM_NO_RELNOTES to turn off this notice)

UVM_INFO testbench.sv(7) @ 0: reporter [main_phase]                    0 Hello World
UVM_INFO testbench.sv(9) @ 12: reporter [main_phase]                   12 Halfway Through  World
UVM_INFO testbench.sv(11) @ 46: reporter [main_phase]                   46 Goodbye World
$finish at simulation time                   46
           V C S   S i m u l a t i o n   R e p o r t 
Time: 46 ns
CPU Time:      0.460 seconds;       Data structure size:   0.1Mb
Wed Jul  3 18:33:17 2024
Done

*/
