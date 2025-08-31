`timescale 1ns/1ps

module clock_gen();
    
    reg clk;
    real Phase = 5;        //in nano seconds
    real Duty_Cycle = 0.5;  //in decimal less than one
    real Frequency = 100;   //in mega hertz
    int sample = 10;
    real periord;
    real ton;
    real toff;
    // input real sample, input real Phase, input real Duty_Cycle, input real Frequency, output real ton, output real toff

task calc();
    periord = 1000/Frequency;
    ton = Duty_Cycle*periord;
    toff = periord-ton;
endtask

task gen(); begin
    #Phase;
    repeat(sample) begin
    clk=1;
    #ton;
    clk=0;
    #toff;
    end
end
endtask

initial begin
    calc();
    gen();
end

initial begin
    $dumpfile("clock_gen.vcd");
    $dumpvars(0,clock_gen);
    #200;
    $finish();
end
      

endmodule