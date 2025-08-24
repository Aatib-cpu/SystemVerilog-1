/*Create a task that will generate stimulus for addr, wr, and en signal as mentioned in a waveform of the Instruction tab.
Assume address is 6-bit wide while en and wr both are 1-bit wide. 
The stimulus should be sent on a positive edge of 25 MHz clock signal.*/

module tb;
	bit en,wr;
  	bit clk=0;
	bit [5:0]addr;
	always #20 clk=~clk;
  
	task stim();
      @(posedge clk) begin
		en=1;wr=1;addr =6'd12;
		#40 en=1;wr=1;addr =6'd14;
		#40 en=1;wr=0;addr =6'd23;
		#40 en=1;wr=0;addr =6'd48;
		#40 en=0;wr=0;addr =6'd56;
      end
	endtask

  	initial 
		stim();

	initial begin
		$dumpfile("dump.vcd");
        	$dumpvars;
		#200 $finish();
	end
  
endmodule
