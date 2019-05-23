import "DPI-C" context task c_run();
export "DPI-C" task dpisv_wait_time;

task dpisv_wait_time(input int unsigned n, string unit);
  case(unit)
    "ns": repeat(n) #1ns;
    "us": repeat(n) #1us;
  endcase
endtask : dpisv_wait_time

class c_test;
  task run();
    c_run();
  endtask : run
endclass : c_test

module test_top;
  vhdl DUT_VH();
  vlog DUT_VL();

  c_test ct;

  initial begin
    ct = new;
    ct.run();
    $finish;
  end
endmodule
