#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /D/xilinx_workspace/test_direct_dma/solution1/.autopilot/db/a.g.bc ${1+"$@"}
