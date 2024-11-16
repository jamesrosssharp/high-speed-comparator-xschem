all: extract_results

.PHONY:	extract_results

high_speed_comp.raw: high_speed_comp_top.spice top.spice
	ngspice top.spice

extract_results: high_speed_comp.raw
	python3 extract_results.py

