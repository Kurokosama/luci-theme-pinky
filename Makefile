#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=Pinky Theme
LUCI_DEPENDS:=

PKG_LICENSE:=Apache-2.0

include $(TOPDIR)/feeds/luci/luci.mk


define Package/luci-theme-pinky/postinst
#!/bin/sh
[ -n "${IPKG_INSTROOT}" ] || {
        ( . /etc/uci-defaults/luci-theme-pinky ) &&        rm -f /etc/uci-defaults/luci-theme-pinky
}

# call BuildPackage - OpenWrt buildroot signature