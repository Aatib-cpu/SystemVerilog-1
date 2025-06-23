//example of mailbox
class generator;
	int data_g = 10;
	mailbox #(int) mbx;
	task run();
		mbx.put(data_g);
		$display("[GEN]: Data send from generator: %0d", data_g);
	endtask
endclass

class driver;
	int data_d;
	mailbox #(int) mbx;
	task run();
		mbx.get(data_d);
		$display("[DRV]: Data received in driver: %0d", data_d);
	endtask
endclass

module tb;
	mailbox #(int) mbx;
	generator g;
	driver d;

	initial begin
		mbx = new();
		g = new();
		d = new();
		g.mbx = mbx;
		d.mbx = mbx;
		g.run();
		d.run();
	end

endmodule
