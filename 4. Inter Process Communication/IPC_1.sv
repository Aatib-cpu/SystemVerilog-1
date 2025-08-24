//example of event, @, wait
//@ is blocking and wait() is non-blocking
module tb;

event a1,a2;

/*initial begin
	//this will not run because triggers and captrure cannot happen same
	//time so both even will in 2nd initial block is not executed
	->a1;
	->a2;
end*/

/*initial begin
	//Only 1st display command will run becaue @ in blocking so if both
	//event are taking place simultaneously than a1 event blocks the
	//a2 execution
	#1
	->a1;
	->a2;
end*/

initial begin
	//Both the display command will run becaue of additional time is
	//provided through delay so both @ can capture it
	#1
	->a1;
	#10
	->a2;
end


initial begin
	@(a1)
	$display("a1 is triggered: %0tns",$time());
	@(a2)
	$display("a2 is triggered: %0tns",$time());
end

endmodule
