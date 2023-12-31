#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
#sed -i 's/+kmod-ipsec/+kmod-ipsec +iptables-mod-physdev/g' package/qca/nss/qca-nss-ecm/Makefile
#sed -i 's/+kmod-ipsec/+kmod-ipsec +iptables-mod-physdev/g' package/qca/qca-nss-ecm/Makefile
#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

del_data="
./feeds/luci/applications/luci-app-serverchan
./feeds/packages/net/dns2socks
./feeds/packages/net/ipt2socks
./feeds/packages/net/microsocks
./feeds/packages/net/pdnsd-alt
./feeds/packages/net/v2ray-geodata
./package/libs/openssl
"
# ./feeds/luci/themes/luci-theme-bootstrap
# ./feeds/packages/net/smartdns

for cmd in $del_data;
do
	rm -rf $cmd
	echo "Deleted $cmd"
done

sed -i 's/OpenWrt/LEDE/g' package/lean/default-settings/files/zzz-default-settings
sed -i '/--to-ports 53/d' package/lean/default-settings/files/zzz-default-settings

sed -i 's/;Listen = 0.0.0.0:1688/Listen = 0.0.0.0:1688/g' feeds/packages/net/vlmcsd/files/vlmcsd.ini
