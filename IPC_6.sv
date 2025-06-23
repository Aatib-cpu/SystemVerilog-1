//semaphore
class first;
	randc int data1;
	constraint first_data {
		data1>0; data1<10;
	}
endclass

class second;
	randc int data2;
	constraint first_data {
		data2>10; data2<20;
	}
endclass

class main;
	semaphore sem;
	first f;
	second s;

	task send_first();
		sem.get(1);
		for (int i = 0; i < 10; i++) begin
			f.randomize();
			$display("sending first data: %0d",f.data1);
		end
		sem.put(1);
		$display("Semaphore Unoccupied");
	endtask


	task send_second();
		sem.get(1);
		for (int i = 0; i < 10; i++) begin
			s.randomize();
			$display("sending second data: %0d",s.data2);
		end
		sem.put(1);
		$display("Semaphore Unoccupied");
	endtask

	task run();
		sem = new(1);
		f = new();
		s = new();
		fork
			send_first();
			send_second();
		join
	endtask

endclass

module tb;
	main m;
	initial begin
		m = new();
		m.run();
	end
endmodule
