//fundamental of class
class first;
	//default parameters of class in public still we can declare parameters as local(private), public and portected
	reg [7:0] data1= 8'd34; 
	reg [7:0] data2= 8'd89;
endclass
// <class name> <object name> = new <class name> //format to creat object in C++
module fundamental_Class1();
	first f; //all class in System Verilog are dynamic by nature
	initial begin
		f = new(); //creating an object
		#10
		$display("data1: %0d \ndata2: %0d",f.data1, f.data2);
		f.data1 = 8'd11;
		f.data2 = 8'd99;
		$display("new data1: %0d \nnewdata2: %0d",f.data1, f.data2);
		f = null; //deallocate the object
		$finish();
	end
endmodule
