#!/bin/bash

for file in `ls ./benchmark_i`
do
    python3 ./call-z3.py --benchmark-path=./benchmark_i/$file
done