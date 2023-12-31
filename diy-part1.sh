#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# 整合包
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
#sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages;packages' feeds.conf.default

# passwall独立包
#git clone https://github.com/xiaorouji/openwrt-passwall.git -b packages package/custom/passwall-package
#git clone https://github.com/xiaorouji/openwrt-passwall.git -b luci package/custom/luci-app-passwall
#sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' feeds.conf.default

# zerotier独立包
#sed -i '$a src-git zerotier https://github.com/mwarning/zerotier-openwrt.git' feeds.conf.default
#git clone https://github.com/rufengsuixing/luci-app-zerotier -b master package/custom/luci-app-zerotier

# pushbot机器人
#git clone https://github.com/zzsj0928/luci-app-pushbot package/custom/luci-app-pushbot

# design主题
#git clone -b js https://github.com/gngpp/luci-theme-design.git  package/custom/luci-theme-design
#git clone https://github.com/gngpp/luci-app-design-config.git package/custom/luci-app-design-config

# argon主题
#git clone https://github.com/jerrykuku/luci-theme-argon.git  package/custom/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-app-argon-config.git package/custom/luci-app-argon-config

# cpu频率
#git clone https://github.com/openwrt-xiaomi/luci-app-cpufreq package/custom/luci-app-cpufreq

# 广告屏蔽
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/custom/luci-app-adguardhome

git clone https://github.com/hubbylei/openssl package/custom/openssl
