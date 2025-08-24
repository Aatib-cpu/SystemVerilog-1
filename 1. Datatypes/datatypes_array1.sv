//arrays
module datatypes_array1;

bit arr1[] = {1,0,1,1,1,0};
bit arr2[4];
bit arr3[]; //it will creat an array of size 0 

initial begin
	$display("size of arr1: %0d",$size(arr1));
	$display("size of arr2: %0d",$size(arr2));
	$display("size of arr3: %0d",$size(arr3));
	$display("arr1[0]: %0d", arr1[0]);
	$display("arr2[0]: %0d", arr2[0]);
	$display("arr3[0]: %0d", arr3[0]); //it will show warning because arr3 in empty index
	arr2[0]= 1;
	$display("arr2[0]: %0d", arr2[0]);
	$display("arr1: %0p",arr1);
	arr2 = {1,1,1,1};
	$display("arr2: %0p",arr2);
	arr3 = {1,0,1,0,1,0};
	$display("arr3: %0p",arr3);

end

endmodule
