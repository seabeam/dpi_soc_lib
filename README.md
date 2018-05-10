Only for Synopsys VCS environment
UVM lib is needeed

#Compile:
gcc -w -pipe -fPIC -g -m64 -fPIC -W -Wall -Wno-write-strings -std=c99 -I<dpi_soc_lib> -I$UVM_HOME -I$VCS_HOME/include -shared dpic_lib.c -o dpic_lib.so
