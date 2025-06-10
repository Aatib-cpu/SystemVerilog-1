//array assignment 2
module array_loop ();
//for loop
int unsigned arr[0:9];
initial begin
	for(int i =0; i < 10; i++) begin
		arr[i] = i*i;
	end
  $display("arr: %0p", arr);
end
//foreach loop
int arr1[10];
initial begin
	foreach (arr1[j]) begin
		arr1[j] = j*j;
	end
	$display("arr1: %0p", arr1);
end
//repeat loop
int arr2[10];
initial begin
	int i=0;
	repeat (10) begin
		arr2[i] = i*i;
		i++;
	end
	$display("arr2: %0p", arr2);
end
endmodule
