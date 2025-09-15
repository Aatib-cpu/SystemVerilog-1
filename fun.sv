module fun();
    bit [3:0]arr[4];
    function automatic void init_arr(ref bit [3:0]arr[4]);
        for (int i = 0; i < 4; i++ ) begin
            arr[i]=$urandom_range(0,6);
        end
    endfunction
    initial begin
        init_arr(arr);
        $display("arr = %0p", arr);
    end
endmodule