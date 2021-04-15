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

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default



# Add luci-theme-darkmatter
sed -i '$a src-git darkmatter https://github.com/apollo-ng/luci-theme-darkmatter' feeds.conf.default



# Add mentohust & luci-app-mentohust
sed -i '$a src-git mentohust https://github.com/BoringCat/luci-app-mentohust' feeds.conf.default
sed -i '$a src-git KyleRicardo https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk' feeds.conf.default



# Add luci-app-onliner
sed -i '$a src-git onliner https://github.com/rufengsuixing/luci-app-onliner' feeds.conf.default



# Add luci-app-dockerman
#rm -rf package/lean/luci-app-docker
#sed -i '$a src-git dockerman https://github.com/KFERMercer/luci-app-dockerman' feeds.conf.default
#sed -i '$a src-git docker https://github.com/lisaac/luci-lib-docker' feeds.conf.default

# Add luci-theme-argon
pushd lede/package/lean
rm -rf luci-theme-argon
sed -i '$a src-git -b 18.06 https://github.com/jerrykuku/luci-theme-argon' feeds.conf.default
sed -i '$a src-git argonconfig https://github.com/jerrykuku/luci-app-argon-config' feeds.conf.default
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile


# Add luci-theme-rosy
sed -i '$a src-git rosy https://github.com/rosywrt/luci-theme-rosy' feeds.conf.default

# Add luci-app-ttnode
sed -i '$a src-git ttnode https://github.com/jerrykuku/luci-app-ttnode' feeds.conf.default

# Add subconverter
sed -i '$a src-git subconverter https://github.com/tindy2013/openwrt-subconverter' feeds.conf.default

# Add luci-udptools
sed -i '$a src-git udp https://github.com/zcy85611/openwrt-luci-kcp-udp' feeds.conf.default

# Add OpenAppFilter
sed -i '$a src-git OpenAppFilter https://github.com/destan19/OpenAppFilter' feeds.conf.default

