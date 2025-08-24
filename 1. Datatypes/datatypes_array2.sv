//array integer
module datatypes_array2;

int arr1[] = '{1,3,2,4,7,9};
int arr2[5] = '{5,1,73,345,5};
int arr3[] = '{5{4}};
int arr4[10] = '{default: 40};
int arr5[];

initial begin
arr5 = '{0,10,9,34};
$display("arr1: %0p", arr1);
$display("arr2: %0p", arr2);
$display("arr3: %0p", arr3);
$display("arr4: %0p", arr4);
$display("arr5: %0p", arr5);
end

endmodule
