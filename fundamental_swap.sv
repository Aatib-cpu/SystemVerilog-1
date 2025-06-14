//swapping in sv
module fundamental_swap;

bit [1:0] a;
bit [1:0] b;

task automatic swap(ref bit[1:0]x,y);
	bit [1:0]temp;
	temp = x;
	x = y;
	y = temp;
	$display("a= %0d and b= %0d", x,y);
endtask

initial begin
	a=2'd1;
	b=2'd3;
	$display("a= %0d and b= %0d", a,b);
	swap(a,b);
	$display("a= %0d and b= %0d", a,b);
end
endmodule

/* swap in c/c++
void swap(int* a,int *b){
	int temp;
	temp = *a;
	*a = *b;
	*b = temp;
};

swap(&x,&y);
*/
