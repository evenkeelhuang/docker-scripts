#!/bin/sh

if [ $# -eq 0 ]; then
    echo "$0 <PROJECT_NAME>"
    exit 1
fi

# 這邊主要是包 BOOT.bin 與 zynqmp_fsbl.elf
# 其實事情應該在 petalinux-build 那邊就做完了

petalinux-package --project $1 --boot --format BIN --fsbl $1/images/linux/zynqmp_fsbl.elf --u-boot $1/images/linux/u-boot.elf --atf $1/images/linux/bl31.elf --pmufw $1/images/linux/pmufw.elf --fpga $1/images/linux/*.bit --force

# petalinux-package --project $1 --boot --format BIN --wic --extra-bootfiles "rootfs.cpio.gz.u-boot" --fsbl $1/images/linux/zynqmp_fsbl.elf --u-boot $1/images/linux/u-boot.elf --atf $1/images/linux/bl31.elf --pmufw $1/images/linux/pmufw.elf --fpga $1/images/linux/*.bit --force
