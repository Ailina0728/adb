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
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git https://github.com/Lienol/openwrt-package' feeds.conf.default

#sed -i '$a src-git 281677160 https://github.com/281677160/openwrt-package' feeds.conf.default

# Add luci-theme-darkmatter
sed -i '$a src-git https://github.com/apollo-ng/luci-theme-darkmatter.git' feeds.conf.default

# Add luci-app-passwall
sed -i '$a src-git https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# Add luci-app-vssr 
sed -i '$a src-git https://github.com/jerrykuku/lua-maxminddb.git' feeds.conf.default
sed -i '$a src-git https://github.com/jerrykuku/luci-app-vssr' feeds.conf.default

# Add mentohust & luci-app-mentohust
sed -i '$a src-git https://github.com/BoringCat/luci-app-mentohust' feeds.conf.default
sed -i '$a src-git https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk' feeds.conf.default

# Add luci-proto-minieap
sed -i '$a src-git https://github.com/ysc3839/luci-proto-minieap' feeds.conf.default

# Add ServerChan
sed -i '$a src-git https://github.com/tty228/luci-app-serverchan' feeds.conf.default

# Add OpenClash
sed -i '$a src-git -b master https://github.com/vernesong/OpenClash' feeds.conf.default

# Add luci-app-onliner
sed -i '$a src-git https://github.com/rufengsuixing/luci-app-onliner' feeds.conf.default

# Add luci-app-diskman
#sed -i '$a src-git https://github.com/SuLingGG/luci-app-diskman' feeds.conf.default
#mkdir parted
#cp luci-app-diskman/Parted.Makefile parted/Makefile

# Add luci-app-dockerman
rm -rf ../lean/luci-app-docker
sed -i '$a src-git https://github.com/KFERMercer/luci-app-dockerman' feeds.conf.default
sed -i '$a src-git https://github.com/lisaac/luci-lib-docker' feeds.conf.default

# Add luci-theme-argon
rm -rf ../lean/luci-theme-argon
sed -i '$a src-git -b 18.06 https://github.com/jerrykuku/luci-theme-argon' feeds.conf.default
sed -i '$a src-git https://github.com/jerrykuku/luci-app-argon-config' feeds.conf.default
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Add luci-theme-infinityfreedom
sed -i '$a src-git https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom' feeds.conf.default

# Add luci-theme-atmaterial
sed -i '$a svn co https://github.com/281677160/openwrt-package/trunk/luci-theme-atmaterial' feeds.conf.default

# Add luci-app-advancedsetting
sed -i '$a svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-advancedsetting' feeds.conf.default

# Add luci-app-smartinfo
sed -i '$a svn co https://github.com/281677160/openwrt-package/trunk/luci-app-smartinfo' feeds.conf.default

# Add luci-app-dnsfilter
sed -i '$a svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-dnsfilter' feeds.conf.default

# Add luci-theme-opentomcat
sed -i '$a svn co https://github.com/281677160/openwrt-package/trunk/luci-theme-opentomcat' feeds.conf.default

# Add luci-theme-opentopd
sed -i '$a svn co https://github.com/281677160/openwrt-package/trunk/luci-theme-opentopd' feeds.conf.default

# Add luci-theme-rosy
sed -i '$a svn co https://github.com/281677160/openwrt-package/trunk/luci-theme-rosy' feeds.conf.default

# Add luci-app-ttnode
sed -i '$a svn co https://github.com/281677160/openwrt-package/trunk/luci-app-ttnode' feeds.conf.default

# Add subconverter
sed -i '$a src-git https://github.com/tindy2013/openwrt-subconverter' feeds.conf.default

# Add luci-udptools
sed -i '$a src-git https://github.com/zcy85611/openwrt-luci-kcp-udp' feeds.conf.default

# Add OpenAppFilter
sed -i '$a src-git https://github.com/destan19/OpenAppFilter' feeds.conf.default

# Use Lienol's https-dns-proxy package
#pushd feeds/packages/net
#rm -rf https_dns_proxy
#sed -i '$a svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy' feeds.conf.default
#popd

# Use snapshots' syncthing package
#pushd package/utils
#mkdir syncthing
#rm -rf syncthing
#sed -i '$a svn co https://github.com/openwrt/packages/trunk/utils/syncthing' feeds.conf.default
#popd

sed -i '$a svn co https://github.com/281677160/openwrt-package/trunk/luci-app-syncthing' feeds.conf.default
# Add luci-AdGuardHome
sed -i '$a src-git https://github.com/AdguardTeam/AdGuardHome' feeds.conf.default

# Change default shell to zsh
#sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# Mod zzz-default-settings
#pushd package/lean/default-settings/files
#sed -i '/http/d' zzz-default-settings
#export orig_version="$(cat "zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')"
#sed -i "s/${orig_version}/${orig_version} ($(date +"%Y-%m-%d"))/g" zzz-default-settings
#popd

# Add luci-app-adguardhome
#cp -r temp/luci/applications/luci-app-adguardhome luci/applications/luci-app-adguardhome
#cp -r temp/packages/net/adguardhome packages/net/adguardhome
#cp -r temp/packages/lang/node-yarn packages/lang/node-yarn
#cp -r temp/packages/devel/packr packages/devel/packr

# Add luci-app-gowebdav
#cp -r temp/luci/applications/luci-app-gowebdav luci/applications/luci-app-gowebdav
#cp -r temp/packages/net/gowebdav packages/net/gowebdav

# Add netdata
#rm -rf packages/admin/netdata
#rm -rf ../package/lean/luci-app-netdata
#cp -r temp/luci/applications/luci-app-netdata luci/applications/luci-app-netdata
#cp -r temp/packages/admin/netdata packages/admin/netdata

# Add luci-app-smartdns
#cp -r temp/luci/applications/luci-app-smartdns luci/applications/luci-app-smartdns
#cp -r temp/packages/net/smartdns packages/net/smartdns

# Add tmate
#cp -r temp/packages/net/tmate packages/net/tmate
#cp -r temp/packages/libs/msgpack-c packages/libs/msgpack-c

# Add gotop
#cp -r temp/packages/admin/gotop packages/admin/gotop

# Add minieap
#cp -r temp/packages/net/minieap packages/net/minieap
#rm -rf temp
#popd

