#!/bin/sh

SCRIPT_DIR="$(pwd)"
MACHINE_NAME="rpi0w"
BUILD_NAME="build-${MACHINE_NAME}"
BUILD_DIR="${SCRIPT_DIR}/${BUILD_NAME}"
IMAGE_DIR="${BUILD_DIR}/tmp/deploy/images"


if [ "$#" -lt 2 ]; then
    echo "Please provide a device and an image name"
    exit 1
fi

SD_CARD="$1"
IMAGE_NAME="$2"
FULL_IMAGE="${IMAGE_DIR}/${IMAGE_NAME}-"

echo "Preparing device ${SD_CARD}"

if [ ! -d "${IMAGE_DIR}" ]; then
    echo "Image  directory ${IMAGE_DIR} does not exist"
    echo "Did you build a image?"
    exit 1
fi

if [ ! -e "$FULL_IMAGE"]; then
    echo "Could not find image ${FULL_IMAGE}"
    exit 1
fi

sudo bmaptool copy "${FULL_IMAGE}" "${SD_CARD}"