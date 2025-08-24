//Create two arrays of reg type capable of storing 15 elements. Use $urandom function to add 15 values to the array. Print the value of all the elements of the array on a single line.

module array_assignment3;

reg [7:0]arr1[14:0];
reg [7:0]arr2[14:0];
int i;
initial begin
	for(i=0;i<15;i++) begin
		arr1[i] = $urandom_range(0,10);
		arr2[i] = $urandom_range(10,20);
	end

	$display("arr1 for range 0 to 10: %0p",arr1);
	$display("arr2 for range 10 to 20: %0p",arr2);
end

endmodule
