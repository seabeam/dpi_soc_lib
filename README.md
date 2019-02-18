# DPI SoC lib

## Description
A DPI/VPI/MHPI lib which enable SoC environment to:
1. Print severity message
2. Wait Verilog/VHDL signal changed

## Compile command
gcc -w -pipe -fPIC -g -m64 -fPIC -W -Wall -Wno-write-strings -std=c99 -I<dpi_soc_lib> -I$UVM_HOME -I$VCS_HOME/include -shared dpic_lib.c -o dpic_lib.so

## More
Only for Synopsys VCS environment, never test under other venders.
Feel free to contact via email: seabeam@yahoo.com
