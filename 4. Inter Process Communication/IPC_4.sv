//passing the value between tasks
//use of fork and fork
module tb;
bit[7:0] data1, data2;
event done, next;

task generator ();
	for (int i = 0; i < 10; i++) begin
		data1 = $urandom_range(0,10);
		$display("trasfer: %0d",data1);
		#10
		wait(next.triggered);
	end
	->done;
endtask

task receiver();
	forever begin
		#10
		data2 = data1;
		$display("received: %0d",data2);
		->next;
	end
endtask

task wait_event();
	wait(done.triggered)
	$display("completed %0tns",$realtime());
		$finish();
endtask

initial begin
	fork
		generator();
		receiver();
		wait_event();
	join
end

endmodule
