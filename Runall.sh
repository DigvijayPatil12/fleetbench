#!/bin/bash

OUTPUT_FILE="bench_res_Hw_off_fin.txt"

bazel run --config=opt fleetbench/libc:mem_benchmark >> "$OUTPUT_FILE" 
bazel run --config=opt fleetbench/compression:compression_benchmark "$OUTPUT_FILE" 
bazel run --config=opt fleetbench/hashing:hashing_benchmark >> "$OUTPUT_FILE" 
bazel run --config=opt fleetbench/proto:proto_benchmark >> "$OUTPUT_FILE" 
bazel run --config=opt fleetbench/stl:cord_benchmark >> "$OUTPUT_FILE" 
bazel run --config=opt fleetbench/swissmap:swissmap_benchmark >> "$OUTPUT_FILE" 
bazel run --config=opt fleetbench/tcmalloc:empirical_driver >> "$OUTPUT_FILE" 


echo "Benchmarking output has been saved to $OUTPUT_FILE"
