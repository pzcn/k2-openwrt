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
sed -i 's/.140/.113/g' include/kernel-version.mk
sed -i 's/2c657a2df4f2e805ac50aeb39ecf5d1e4cb1501e7fcf15eafd14486b587f7e43/30cde92463c474b75f9eb197654570dd6dbb32ec20695544c5469f292662da47/g' include/kernel-version.mk
curl -o target/linux/generic/pending-5.4/690-net-add-support-for-threaded-NAPI-polling.patch https://raw.githubusercontent.com/coolsnowwolf/lede/5dcbd82a57966f98fc814f9a21dfa73f7c6d41b5/target/linux/generic/pending-5.4/690-net-add-support-for-threaded-NAPI-polling.patch
