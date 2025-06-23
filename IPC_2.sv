//example of "wait(a.triggered)" which is level sensitive and non-blocking in natrue
module tb;
event a1,a2;
initial begin
	->a1;
	->a2;
end
initial begin
	wait(a1.triggered)
		$display("a1 is triggered: %0t",$realtime());
	wait(a2.triggered)
		$display("a2 is triggered: %0t",$realtime());
end

endmodule
