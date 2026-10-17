vlib work
vlog *.*v
vsim -sdfmax /DUT=system_top.sdf -t ns -voptargs="+acc" work.system_top_tb -sdfnoerror
do wave.do
run -all
