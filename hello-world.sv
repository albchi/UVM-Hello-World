/*

  A fairly simple UVM "Hello World" program.
  
  At the start of simulation, there are no modules, so the testbench phase starts,
  which is "program main". "run_test("TestHelloWorld")" looks for class TestHelloWorld
  and begins to execute it. The 
*/

import uvm_pkg::*;

program main();

	initial begin

		run_test("TestHelloWorld"); //     uvm_top.run_test();
    
	end // initial 

endprogram

class TestHelloWorld extends uvm_test;
  
	`uvm_component_utils(TestHelloWorld)
	
	function new(input string name, input uvm_component parent);
    		super.new(name, parent);
	endfunction : new

  
	virtual task main_phase( input uvm_phase phase);	
        
	        uvm_objection   objection;
		
		super.main_phase(phase);
		
		       	 /*
			`uvm_info("Main", $sformatf("%d Hello World", $time()), UVM_LOW);
		    	#12;
			`uvm_info("Main", $sformatf("%d Halfway Through  World", $time()), UVM_MEDIUM);
		    	#34;
			`uvm_info("Main", $sformatf("%d Goodbye World", $time()), UVM_HIGH);
			objection = phase.get_objection();
			objection.set_drain_time(this, 1us);
			*/ 
      
	endtask : main_phase
  
	virtual task run_phase( input uvm_phase phase);
		
        	`uvm_info("run_phase()", $sformatf("%d Hello World", $time()), UVM_LOW);
		#12;
		`uvm_info("run_phase()", $sformatf("%d Halfway Through  World", $time()), UVM_MEDIUM);
	    	#34;
		`uvm_info("run_phase()", $sformatf("%d Goodbye World", $time()), UVM_HIGH);

	endtask : run_phase
endclass


/* 

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul  3 17:38 2024
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

UVM_INFO @ 0: reporter [RNTST] Running test TestHelloWorld...
UVM_INFO testbench.sv(52) @ 0: uvm_test_top [run_phase()]                    0 Hello World

--- UVM Report Summary ---

** Report counts by severity
UVM_INFO :    2
UVM_WARNING :    0
UVM_ERROR :    0
UVM_FATAL :    0
** Report counts by id
[RNTST]     1
[run_phase()]     1
$finish called from file "/apps/vcsmx/vcs/U-2023.03-SP2//etc/uvm-1.1/src/base/uvm_root.svh", line 437.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.550 seconds;       Data structure size:   0.2Mb
Wed Jul  3 17:38:11 2024
Done

*/
