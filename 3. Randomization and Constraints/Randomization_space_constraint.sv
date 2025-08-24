//Number of times g.randomize() called that many number of spaces generated.
//Every space are independent so randc occurance of repated value will happen
//in different spaces.
class generator;
  
  randc bit [3:0] a,b; 
  bit [3:0] y;
  
  int min;
  int max;
  
  function void pre_randomize(input int min, input int max);
  this.min = min;
  this.max = max;  
  endfunction
  
  constraint data {
    a inside {[min:max]};
    b inside {[min:max]};
  }
  
  function void post_randomize();
    $display("Value of a :%0d and b: %0d", a,b);
  endfunction
endclass

module tb;
  
  int i =0;
  generator g;
  
  initial begin
    g = new();
    
    $display("SPACE 1"); //space 1 for first randomize
    g.pre_randomize(3,12);
    for(i = 0; i<6;i++)begin
      g.randomize();
      #10;
    end
    $display("SPACE 2"); //space 2 for second randomize
    g.pre_randomize(3,12);//3 4 5 6 7 8 9 10 11 12
     for(i = 0; i<6;i++)begin
      g.randomize();
      #10;
    end
    
    
  end
  
  
endmodule
