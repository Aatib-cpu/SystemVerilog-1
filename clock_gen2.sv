module clock_gen2 ();

    reg clk = 0, clk50;
    always #5 clk = ~clk;
    
    real Duty_Cycle = 0.5;  //in decimal less than one
    real Frequency = 100;   //in mega hertz
    real periord;
    real Phase = 10;
    real ton;
    real toff;
    

    task calc();
    periord = 1000/Frequency;
    ton = Duty_Cycle*periord;
    toff = periord-ton;
    endtask


    task clk_generate();
        #Phase;
        while (1) begin
            clk50 = 1;
            #ton;
            clk50 = 0;
            #toff;
        end
    endtask

    initial begin
        calc();
        clk_generate();
    end

    initial begin
        $dumpfile("clock_gen2.vcd");
        $dumpvars(0, clock_gen2);
        #100;
        $finish();
    end

endmodule