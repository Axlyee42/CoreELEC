# SPDX-License-Identifier: GPL-2.0-or-later
# Homatics Box R 4K Plus / Amlogic-no Dolby Vision FEL module

PKG_NAME="dovi"
PKG_VERSION="5.15_2.6_patched_fix_fel"
PKG_SHA256="f6c26659a255447685ceac9441e399c999b1fae9c6435c48d70e14a14dd7f8f7"
PKG_ARCH="aarch64"
PKG_LICENSE="AML"
PKG_SITE="https://discourse.coreelec.org/t/fel-amlogic-no-support/58631"
PKG_URL=""
PKG_SECTION="kernel"
PKG_LONGDESC="Patched Amlogic Dolby Vision kernel module with FEL support for CoreELEC 22 Amlogic-no on licensed SoCs."
PKG_TOOLCHAIN="manual"
PKG_IS_KERNEL_PKG="yes"

unpack() {
  mkdir -p "${PKG_BUILD}"
  cp "${PKG_DIR}/files/dovi.ko" "${PKG_BUILD}/dovi.ko"
}

make_target() {
  :
}

makeinstall_target() {
  install -Dm0644 "${PKG_BUILD}/dovi.ko" "${INSTALL}/usr/lib/modules/dovi.ko"
  install -Dm0755 "${PKG_DIR}/files/load-dovi.sh" "${INSTALL}/usr/bin/load-dovi.sh"
  install -Dm0644 "${PKG_DIR}/files/dovi-load.service" "${INSTALL}/usr/lib/systemd/system/dovi-load.service"
  mkdir -p "${INSTALL}/etc/systemd/system/multi-user.target.wants"
  ln -sf /usr/lib/systemd/system/dovi-load.service "${INSTALL}/etc/systemd/system/multi-user.target.wants/dovi-load.service"
}
