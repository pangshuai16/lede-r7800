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

# istore应用商店
sed -i '$a src-git istore https://github.com/linkease/istore;main' feeds.conf.default

# passwall独立包
sed -i '$a src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages' feeds.conf.default
sed -i '$a src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci' feeds.conf.default  //如果是编译passwall2着不需要否则会加载重复软件包
#sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' feeds.conf.default

# zerotier独立包
sed -i '$a src-git zerotier https://github.com/mwarning/zerotier-openwrt.git' feeds.conf.default
git clone https://github.com/rufengsuixing/luci-app-zerotier -b master package/custom/luci-app-zerotier

# pushbot机器人
git clone https://github.com/zzsj0928/luci-app-pushbot package/custom/luci-app-pushbot

# design主题
git clone -b js https://github.com/gngpp/luci-theme-design.git  package/luci-theme-design
git clone https://github.com/gngpp/luci-app-design-config.git package/luci-app-design-config
