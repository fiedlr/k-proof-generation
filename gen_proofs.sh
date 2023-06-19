#!/bin/bash

mm_compress() {
  metamath "read '$1'" "save proof * /compressed" "write source '$1'" "exit"
  rm $1~1
}

python3 -m scripts.prove_symbolic examples/csl23/$1/imp.k IMP examples/csl23/$1/$2 --standalone --output examples/csl23/$1/$3
mm_compress examples/csl23/$1/$3
cp examples/csl23/$1/$3 risc0-metamath-15/$3

cd risc0-metamath-15
RUST_BACKTRACE=full cargo run $3
