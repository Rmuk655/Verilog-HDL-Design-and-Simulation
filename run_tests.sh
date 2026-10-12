#!/usr/bin/env bash
# Compile and simulate every testbench with Icarus Verilog.
#   ./run_tests.sh            run all testbenches
#   ./run_tests.sh adder      run only testbenches whose path contains "adder"
# Requires iverilog and vvp (Ubuntu/Debian: sudo apt install iverilog).
set -u
command -v iverilog >/dev/null || { echo "iverilog not found. Install it first (sudo apt install iverilog)."; exit 1; }
root=$(cd "$(dirname "$0")" && pwd)
filter=${1:-}
tmp=$(mktemp -d)
pass=0; fail=0
while IFS= read -r tb; do
    [ -n "$filter" ] && [[ "$tb" != *"$filter"* ]] && continue
    dir=$(dirname "$tb"); name=$(basename "$tb")
    # Testbenches `include their design files, so compile from inside their own folder.
    if (cd "$dir" && iverilog -g2012 -o "$tmp/sim.out" "$name" 2>"$tmp/err.txt") &&
       (cd "$tmp" && timeout 30 vvp sim.out >"$tmp/run.log" 2>&1); then
        pass=$((pass+1)); echo "PASS  ${tb#$root/}"
    else
        fail=$((fail+1)); echo "FAIL  ${tb#$root/}"; head -3 "$tmp/err.txt"
    fi
done < <(find "$root" \( -iname '*_tb.v' -o -iname 'tb_*.v' \) | sort)
rm -rf "$tmp"
echo "passed: $pass, failed: $fail"
[ "$fail" -eq 0 ]
