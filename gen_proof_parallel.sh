#!/usr/bin/env bash

bash ./gen_hints.sh $1
ls $1/*.yaml | parallel -j$6 python3 -m scripts.prove_symbolic $2 $3 $4 --standalone --output $5 --yaml-file
