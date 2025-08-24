//dynamic array
module datatypes_array4;

int arr[]; //dynamic array
int farr[10]; //fixed size array
initial begin
	arr = new[7];
	for (int i = 0; i<7 ; i++) begin
		arr[i] = i*9;
	end
	$display("arr: %0p",arr);

	//to increase size of dynamic array "arr = new[10]"
	arr = new[10](arr); //increase size of array while keeping existing array
	$display("arr: %0p",arr);
	farr = arr; //copy data of dynamic array to fixed size array
	arr.delete();//to delete dyanmic array

	$display("arr: %0p",farr);
end


endmodule
