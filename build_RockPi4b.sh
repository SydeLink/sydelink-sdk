#!/bin/bash

# U-boot
./build/mk-uboot.sh rockpi4b

# Kernel
./build/mk-kernel.sh rockpi4b

# Rootfs
ARCH=arm64
RELEASE=stretch TARGET=desktop ARCH=arm64 ./mk-base-debian.sh