

src_files=crc32.v crc32_tb.v
out_test_bench=crc32_tb.vpp
synth:
	iverilog -o${out_test_bench} ${src_files}
sim: synth
	vvp ${out_test_bench}
