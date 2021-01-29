#!/bin/bash

for file in `ls ./benchmark_i`
do
    python3 ./generate_SMT.py --benchmark-path=./benchmark_i/$file
done

cd smt_RQ2
rm -r `find . -name '*.smt' -size +500M`