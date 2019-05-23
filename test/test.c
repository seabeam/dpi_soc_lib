#include <stdio.h>
#include "dpic_lib.h"

void c_run() {
  vpi_printf("c test start\n");


  dpic_set_top("top");
  dpic_set_prefix("ABCD");
  dpic_set_top("test_top");
  dpic_info("Time unit is set to %s", dpic_get_time_unit());

  dpisv_wait_time(3, "ns");
  int value = 0;
  /*vpi_printf("%s\n", __FILE__);*/
  dpic_get("/test_top/DUT_VH/S", &value);
  dpic_set_severity(dpi_debug);
  dpic_debug("VH value is 0x%0X\n", value);

  dpisv_wait_time(2, "ns");
  dpic_get("/test_top/DUT_VL/s", &value);
  dpic_debug("VL value is 0x%0X\n", value);

  dpisv_wait_time(5, "ns");


  vpi_printf("c test finish\n");
}
