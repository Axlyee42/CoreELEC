#!/bin/sh
# CoreELEC Homatics Box R 4K Plus
# Automatic Dolby Vision FEL module loader

DOVI_MODULE="/usr/lib/modules/dovi.ko"
DOVI_ALT="/flash/dovi.ko"

log() {
    echo "[dovi-loader] $1" >> /storage/.cache/dovi-loader.log
}

load_dovi() {
    if lsmod | grep -q '^dovi'; then
        log "dovi module already loaded"
        return 0
    fi

    if [ -f "$DOVI_MODULE" ]; then
        log "loading $DOVI_MODULE"
        insmod "$DOVI_MODULE" && return 0
    fi

    if [ -f "$DOVI_ALT" ]; then
        log "loading $DOVI_ALT"
        insmod "$DOVI_ALT" && return 0
    fi

    log "dovi module not found"
    return 1
}

# Wait for kernel modules and DRM initialization
sleep 8

load_dovi

if lsmod | grep -q '^dovi'; then
    log "Dolby Vision module loaded successfully"
else
    log "Dolby Vision module load failed"
fi
