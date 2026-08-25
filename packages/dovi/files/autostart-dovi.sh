#!/bin/sh
# Auto load Dolby Vision FEL driver for Homatics Box R 4K Plus
# CoreELEC 22 / Amlogic-no / S905X4-K

DOVI_MODULE="/usr/lib/modules/dovi.ko"
DOVI_FALLBACK="/flash/dovi.ko"

load_dovi() {
    if lsmod | grep -q '^dovi'; then
        exit 0
    fi

    if [ -f "$DOVI_MODULE" ]; then
        insmod "$DOVI_MODULE" && exit 0
    fi

    if [ -f "$DOVI_FALLBACK" ]; then
        insmod "$DOVI_FALLBACK" && exit 0
    fi
}

# Wait for kernel modules and HDMI subsystem
sleep 5
load_dovi

exit 0
