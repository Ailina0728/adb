#!/bin/bash
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)

pushd customfeeds
mkdir temp
git clone https://github.com/immortalwrt/packages -b openwrt-18.06 temp/packages
git clone https://github.com/immortalwrt/luci -b openwrt-18.06 temp/luci
cp -r temp/luci/applications/luci-app-adguardhome luci/applications/luci-app-adguardhome
cp -r temp/packages/net/adguardhome packages/net/adguardhome
cp -r temp/packages/lang/node-yarn packages/lang/node-yarn
cp -r temp/packages/devel/packr packages/devel/packr
cp -r temp/luci/applications/luci-app-gowebdav luci/applications/luci-app-gowebdav
cp -r temp/packages/net/gowebdav packages/net/gowebdav
rm -rf packages/admin/netdata
rm -rf ../package/lean/luci-app-netdata
cp -r temp/luci/applications/luci-app-netdata luci/applications/luci-app-netdata
cp -r temp/packages/admin/netdata packages/admin/netdata
cp -r temp/luci/applications/luci-app-smartdns luci/applications/luci-app-smartdns
cp -r temp/packages/net/smartdns packages/net/smartdns
cp -r temp/packages/net/tmate packages/net/tmate
cp -r temp/packages/libs/msgpack-c packages/libs/msgpack-c
cp -r temp/packages/admin/gotop packages/admin/gotop
rm -rf temp
popd

# Add luci-theme-argon
#sed -i '$a git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon' feeds.conf.default
#sed -i '$a src-git argonconfig https://github.com/jerrykuku/luci-app-argon-config' feeds.conf.default

# Add luci-app-dockerman
sed -i '$a src-git https://github.com/KFERMercer/luci-app-dockerman' feeds.conf.default
sed -i '$a src-git lisaac https://github.com/lisaac/luci-lib-docker' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default
pushd openwrt/feeds/small8
rm -rf adguardhome
rm -rf luci-app-adguardhome
rm -rf luci-app-aliddns
rm -rf luci-app-gost
rm -rf luci-app-bypass
popd
# Add luci-theme-darkmatter
sed -i '$a src-git darkmatter https://github.com/apollo-ng/luci-theme-darkmatter' feeds.conf.default

# Add luci-app-onliner
sed -i '$a src-git rufengsuixing https://github.com/rufengsuixing/luci-app-onliner' feeds.conf.default

# Add luci-theme-rosy
sed -i '$a src-git rosy https://github.com/rosywrt/luci-theme-rosy' feeds.conf.default

# Add luci-app-ttnode
sed -i '$a src-git jerrykuku https://github.com/jerrykuku/luci-app-ttnode' feeds.conf.default

# Add subconverter
sed -i '$a src-git tindy2013 https://github.com/tindy2013/openwrt-subconverter' feeds.conf.default

# Add luci-udptools
sed -i '$a src-git zcy85611 https://github.com/zcy85611/openwrt-luci-kcp-udp' feeds.conf.default

# Add OpenAppFilter
sed -i '$a src-git openappfilter https://github.com/destan19/OpenAppFilter' feeds.conf.default

