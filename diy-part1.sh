#!/bin/bash
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# Add luci-theme-argon
#sed -i '$a git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon' feeds.conf.default
#sed -i '$a src-git argonconfig https://github.com/jerrykuku/luci-app-argon-config' feeds.conf.default

# Add luci-app-dockerman
#sed -i '$a src-git https://github.com/KFERMercer/luci-app-dockerman' feeds.conf.default
#sed -i '$a src-git lisaac https://github.com/lisaac/luci-lib-docker' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git small8 -b 18.06 https://github.com/kenzok8/small-package' feeds.conf.default

# Add luci-theme-darkmatter
sed -i '$a src-git darkmatter https://github.com/apollo-ng/luci-theme-darkmatter' feeds.conf.default

# Add mentohust & luci-app-mentohust
#sed -i '$a src-git BoringCat https://github.com/BoringCat/luci-app-mentohust' feeds.conf.default
#sed -i '$a src-git KyleRicardo https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk' feeds.conf.default

# Add luci-app-onliner
#sed -i '$a src-git rufengsuixing https://github.com/rufengsuixing/luci-app-onliner' feeds.conf.default

# Add luci-theme-rosy
sed -i '$a src-git rosy https://github.com/rosywrt/luci-theme-rosy' feeds.conf.default

# Add luci-app-ttnode
sed -i '$a src-git jerrykuku https://github.com/jerrykuku/luci-app-ttnode' feeds.conf.default

# Add subconverter
sed -i '$a src-git tindy2013 https://github.com/tindy2013/openwrt-subconverter' feeds.conf.default

# Add luci-udptools
sed -i '$a src-git zcy85611 https://github.com/zcy85611/openwrt-luci-kcp-udp' feeds.conf.default

# Add OpenAppFilter
#git clone https://github.com/destan19/OpenAppFilter.git
