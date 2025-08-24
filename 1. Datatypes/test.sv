//First code on Eda Playgraound
class transaction;
      
      
      randc bit [7:0] data;
      
      task display();
        $display("Value of Data : %0d", this.data);
      endtask
      
     
      
    endclass
     
     
     
    module tb;
      
      transaction t;
      reg [7:0] data;
      
      
      initial begin
        t = new();
        
        for(int i = 0; i<10; i++) begin
          t.randomize();
          data = t.data;
          t.display();
          #10;
        end
        
        
      end
      
      initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
        #200;
        $finish();
        
      end
      
      
    endmodule


