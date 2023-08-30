#!/usr/bin/bash

cp out/arch/arm64/boot/Image.gz ~/AnyKernel3
cd ~/AnyKernel3 
zip -r9 Ak3-$(date +"%Y%m%d-%H%M").zip * -x README boot-*.zip
 