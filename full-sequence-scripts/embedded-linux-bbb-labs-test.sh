#!/bin/bash

set -e

# Training info
export LABBOARD="beaglebone"
export SESSION_NAME="embedded-linux-bbb"
export LAB_URL="https://bootlin.com/doc/training/embedded-linux-bbb/embedded-linux-bbb-labs.tar.xz"
export LAB_KERNEL_VERSION=6.1

export LAB_DIR=$PWD/out/$SESSION_NAME-labs

cd lab-scripts

# Test sequence
./setup.sh
./sysdev-toolchain.sh
./sysdev-u-boot-bbb.sh
./sysdev-kernel-fetch-sources.sh
./sysdev-kernel-cross-compiling.sh