#!/usr/bin/bash

THIS_PATH="$PWD"
cd ~/clang-prelude
CLANG_PATH="$PWD"
cd "$THIS_PATH"
 
# Export compiler path
export PATH="$CLANG_PATH/bin:$PATH"

# Build the kernel
make O=out ARCH=arm64 vendor/spes-perf_defconfig
make O=out ARCH=arm64 CC='ccache clang' CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- -j$(nproc --all)