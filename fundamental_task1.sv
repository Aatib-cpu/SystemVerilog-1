module tb;
	bit [3:0]a=4'd4,b=4'd3;
	bit [4:0]y,y1;
	task add1(input bit[3:0]ain=4'd5, input bit[3:0]bin=4'd7, output bit[4:0]res);
		res = ain+bin;
		$display("ain: %0d, bin: %0d, add1: %0d",ain,bin,res);
	endtask
	task add2();
		y=a+b;
      		$display("a: %0d, b: %0d, add2: %0d",a,b,y);
	endtask
	task test();
		a=4'd0;b=4'd9;
		add2();
		a=4'd4;b=4'd8;
		add2();
		a=4'd7;b=4'd9;
		add2();
	endtask
	bit clk = 0;
	always #5 clk = ~clk;
	task test2();
		a = $urandom_range(0,10);
		b = $urandom_range(0,10);
		$display("ouput of urandom_range:-");
		add2();
	endtask
	always@(posedge clk) begin
		test2;
	end
	initial begin
		//add1(); this is wrong
		add1(4'd1,4'd2,y1);
		add2();
		test();
		#40 $finish();
	end
endmodule
