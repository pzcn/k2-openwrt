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
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sed -i 's/.142/.115/g' include/kernel-version.mk
sed -i 's/99785728968564ba27c7e552d024b560072dcbc885540912eabb5c021e231451/5b4724748527a622a886232b5da1471619eb3aa3bb38a11851275eba09989dd2/g' include/kernel-version.mk
curl -o target/linux/generic/pending-5.4/690-net-add-support-for-threaded-NAPI-polling.patch https://raw.githubusercontent.com/coolsnowwolf/lede/376ec4b6ed491a0f4060a68b10ee733d1a509556/target/linux/generic/pending-5.4/690-net-add-support-for-threaded-NAPI-polling.patch
