//example of transfer of resource between 2 initial block
module tb;
int data1, data2;
event done,next;
initial begin
	for (int i = 0; i < 10; i++) begin
		data1 = $urandom_range(0,10);
		$display("transfer data: %0d",data1);
		#10;
		wait(next.triggered);
	end
	->done;
end

initial begin
	forever begin
		#10;
		data2 = data1;
		$display("received data: %0d",data2);
		->next;
	end
end

initial begin
	wait(done.triggered);
		$finish();
	$display("finished");
end

endmodule
