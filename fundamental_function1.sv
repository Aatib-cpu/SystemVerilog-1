//function

module fundamental_function1;

bit [7:0] ain = 8'd9;
bit [7:0] bin = 8'd4;

function bit [7:0] add(bit[7:0] a=8'd1,b=8'd1);
	return a+b;
endfunction

function void display_d();
	$display("ain: %0d and bin: %0d",ain,bin);
endfunction

bit[7:0] res;
initial begin
	res = add();
	$display("res: %0d",res);
	res = add(8'd10,8'd19);
	$display("res: %0d",res);
	display_d();
end

endmodule
