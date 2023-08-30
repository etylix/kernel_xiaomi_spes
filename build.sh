#!/usr/bin/bash

# This path
THIS_PATH="$PWD"

# # In case there is already an out folder enter in and clean it, if not, create the out folder
# if [[ -d "out" ]]; then
# cd out && make clean && make distclean && make mrproper && cd ..
# else
# mkdir -p out 
# fi

# Do a compiler path variable
cd ../clang-prelude
CLANG_PATH="$PWD"
cd "$THIS_PATH"

# Export compiler path
export PATH="$CLANG_PATH/bin:$PATH"

# Build the kernel
make O=out ARCH=arm64 vendor/spes-perf_defconfig
make O=out ARCH=arm64 CC='ccache clang' CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- LLVM=1 -j$(nproc --all)