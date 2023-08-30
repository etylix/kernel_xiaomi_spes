#!/usr/bin/bash

cp out/arch/arm64/boot/Image.gz ../AnyKernel3
cd ../AnyKernel3
zip -r9 Ak3-$(date +"%Y%m%d-%H%M").zip * -x README Ak3-*.zip

# mv Ak3-*.zip /mnt/d/OneDrive\ -\ DuckLeeHogn/files.tedomi.tk/Evo/
# wslview /mnt/d/OneDrive\ -\ DuckLeeHogn/files.tedomi.tk/Evo/
# python '/mnt/d/OneDrive - DuckLeeHogn/files.tedomi.tk/index.py'