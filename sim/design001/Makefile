all: extract_results

.PHONY:	extract_results

high_speed_comp_tt.raw: high_speed_comp_top.spice testbench.spice
	# Substitute parameters
	cat testbench.spice | sed s/\$$\{RAW_FILE\}/high_speed_comp_tt.raw/g | sed s/\$$\{CORNER\}/tt/g > top_tt.spice	
	ngspice top_tt.spice

high_speed_comp_ff.raw: high_speed_comp_top.spice testbench.spice
	# Substitute parameters
	cat testbench.spice | sed s/\$$\{RAW_FILE\}/high_speed_comp_ff.raw/g | sed s/\$$\{CORNER\}/ff/g > top_ff.spice	
	ngspice top_ff.spice

high_speed_comp_fs.raw: high_speed_comp_top.spice testbench.spice
	# Substitute parameters
	cat testbench.spice | sed s/\$$\{RAW_FILE\}/high_speed_comp_fs.raw/g | sed s/\$$\{CORNER\}/fs/g > top_fs.spice	
	ngspice top_fs.spice

high_speed_comp_sf.raw: high_speed_comp_top.spice testbench.spice
	# Substitute parameters
	cat testbench.spice | sed s/\$$\{RAW_FILE\}/high_speed_comp_sf.raw/g | sed s/\$$\{CORNER\}/sf/g > top_sf.spice	
	ngspice top_sf.spice

high_speed_comp_ss.raw: high_speed_comp_top.spice testbench.spice
	# Substitute parameters
	cat testbench.spice | sed s/\4$\{RAW_FILE\}/high_speed_comp_ss.raw/g | sed s/\$$\{CORNER\}/ss/g > top_ss.spice	
	ngspice top_ss.spice


extract_results: high_speed_comp_tt.raw high_speed_comp_ff.raw high_speed_comp_fs.raw high_speed_comp_sf.raw high_speed_comp_ss.raw
	python3 extract_results.py

clean:
	rm -rf *.raw
