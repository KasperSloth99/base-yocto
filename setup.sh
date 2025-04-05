#!/bin/sh

MACHINE_NAME="rpi"
BUILD_NAME="build-${MACHINE_NAME}"
BUILD_DIR="${SCRIPT_DIR}/${BUILD_NAME}"

echo "Setting up bitbake environment..."
echo ""

. poky/oe-init-build-env "${BUILD_NAME}"
