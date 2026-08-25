#!/bin/sh

LOG_DIR="/storage/.cache"
LOG_FILE="${LOG_DIR}/dovi-status.log"
MODULE="/usr/lib/modules/dovi.ko"

mkdir -p "${LOG_DIR}"
{
  echo "[dovi] $(date)"
  echo "[dovi] kernel: $(uname -r)"

  if [ ! -f "${MODULE}" ]; then
    echo "[dovi] ERROR: ${MODULE} not found"
    exit 1
  fi

  if grep -q '^dovi_gen_\|^dovi ' /proc/modules 2>/dev/null; then
    echo "[dovi] module already loaded"
    exit 0
  fi

  echo "[dovi] loading ${MODULE}"
  if insmod "${MODULE}"; then
    echo "[dovi] module loaded successfully"
  else
    echo "[dovi] ERROR: insmod failed"
    exit 1
  fi
} >>"${LOG_FILE}" 2>&1
