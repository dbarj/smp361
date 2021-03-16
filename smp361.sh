#!/bin/sh
# smp361 tool
echo "Start smp361."

export moat370_pre_sw_output_fdr=`pwd`/output

export SHELLOPTS
bash ./moat370/sh/moat370_0a_main.sh "$@"
