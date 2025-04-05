#!/bin/sh

export BB_ENV_PASSTHROUGH_ADDITIONS="DL_DIR SSTATE_DIR"
export DL_DIR="/home/kasper/.yocto-cache/downloads"
export SSTATE_DIR="/home/kasper/.yocto-cache/sstate-cache"

MACHINE_NAME="rpi"
BUILD_NAME="build-${MACHINE_NAME}"
BUILD_DIR="${SCRIPT_DIR}/${BUILD_NAME}"

echo "Setting up bitbake environment..."
echo ""

TEMPLATECONF=/home/kasper/Desktop/repo/base-yocto/meta-custom/conf/templates/rpi0

. poky/oe-init-build-env "${BUILD_NAME}-test"
