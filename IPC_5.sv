//Example of fork join_none and fork join_any

//In fork join, all the parameters that present inside it will run in parallel. Next
//statement after Fork join will run when all parameters of fork join is
//completed

//In fork join_any, any parameter that present inside it is completed then
//next statemnt after fork join_none will start.

//In fork join_none, any paramter that present after it will run doesnt matter
//what inside it

module tb;
task task1();
	$display("Task 1 starts: %0t",$realtime());
	#10
	$display("Task 1 finished: %0t",$realtime());
endtask

task task2();
	$display("Task 2 starts: %0t",$realtime());
	#20
	$display("Task 2 finished: %0t",$realtime());
endtask

task task3();
	$display("Task 3 starts: %0t",$realtime());
	#30
	$display("Task 3 finished: %0t",$realtime());
endtask

initial begin //task1 and task2 start in parallel while task3 starts when fork join completed
	fork 
		task1();
		task2();
	join
	task3();
end

/*initial begin //task1 and task2 start in parallel while task3 starts when any of the fork join task in completed
	fork 
		task1();
		task2();
	join_any
	task3();
end*/

/*initial begin //task1, task2 and task3 all started in parallel
	fork 
		task1();
		task2();
	join_none
	task3();
end*/

endmodule
