ADD = 

clean:
	@rm .[a-z]* -rf
	@ls | grep -v test.c | grep -v top.sv | grep -v vhdl.vhd | grep -v vlog.v | grep -v Makefile | xargs rm -rf

comp:
	vhdlan -full64 -q vhdl.vhd
	vlogan -sverilog  -debug_acc+all -full64 -q vlog.v top.sv
	gcc -w -pipe -fPIC -g -m64 -fPIC -W -Wall -Wno-write-strings -std=c99 -I../ -I${UVM_HOME} -I${VCS_HOME}/include -shared ../dpic_lib.c -o libdpic.so
	gcc -w -pipe -fPIC -g -m64 -fPIC -W -Wall -Wno-write-strings -std=c99 -I../ -shared test.c -L./ -ldpic -o test.so
	vcs -full64 -cflags "-g" -debug_acc+all -timescale=1ns/1ps -top test_top 

run:
	simv ${ADD} -sv_lib test
