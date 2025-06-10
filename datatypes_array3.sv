//array copy and compare
module datatypes_array3;

int arr1[] = '{3,35,4,23,54,52};
int arr2[] = '{3,43,5,12,45,44};
int arr1_cpy[];
int arr2_cpy[6];
bit status_equal1;
bit status_equal2;
bit status_unequal;

initial begin
	arr1_cpy = arr1;
	arr2_cpy = arr2;
	status_equal1 = (arr1 == arr1_cpy);
	status_equal2= (arr2 == arr2_cpy);
	status_unequal = (arr1 != arr2);
	$display("status_equal1: %0b", status_equal1);
	$display("status_equal2: %0b", status_equal2);
	$display("status_unequal: %0b", status_unequal);
end
endmodule
