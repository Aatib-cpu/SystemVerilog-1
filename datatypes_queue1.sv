//queue
module datatypes_queue1;
int q[$]; //queue performs the operation of dynamic array but takes less space
int j = 20;
initial begin
	q = {1,2,3,2,5}; //while assigning queue we dont need apostpe(`)
	$display("orignal q: %0p", q);

	q.push_front(0);
	$display("q: %0p", q);

	q.push_back(0);
	$display("q: %0p", q);

	q.insert(2,0);
	$display("q: %0p", q);

	q.delete(2);
	$display("q: %0p", q);

	j = q.pop_front();
	$display("j = %0d",j);
	$display("q: %0p", q);

	j = q.pop_back();
	$display("j = %0d",j);
	$display("q: %0p", q);


end

endmodule
