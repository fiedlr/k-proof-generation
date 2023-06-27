#!/usr/bin/env bash
​
set -euo pipefail
​
directory=$1; shift
program=$1; shift
output_dir=$1; shift
​
depth=10000
​
mkdir "$output_dir"
krun --depth 0 --output kore --output-file "$output_dir"/init-0.kore --directory "$directory" "$program"
​
n=0
while true; do
    export KORE_EXEC_OPTS="--trace-rewrites $output_dir/task-$n.yaml"
    curr_config="$output_dir"/init-$n.kore
    next_config="$output_dir"/init-$((n+1)).kore
    krun --depth "$depth" \
         --parser cat --output kore \
         --directory "$directory" --term \
         "$curr_config" --output-file "$next_config"
    if cmp --silent -- "$curr_config" "$next_config"; then
        break
    fi
    n=$((n+1))
done
