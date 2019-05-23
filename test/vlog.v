module vlog();
  logic [3:0] s;

  initial begin
    s = 0;
    repeat(10) begin
      #1ns;
      s++;
    end
  end
endmodule
