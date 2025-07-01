#!/bin/bash
###
 # @Author       : Leon Lee
 # @Date         : 2025-07-02 00:20:02
 # @LastEditors  : Leon
 # @LastEditTime : 2025-07-02 02:03:21
 # @Description  : file content
 # @FilePath     : /mi-ac2100-immortalwrt/diy-part2.sh
### 
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify hostname
sed -i 's/OpenWrt/Newifi-D1/g' package/base-files/files/bin/config_generate

# 添加 kwrt package 源（避免重复添加）
grep -q "src-git kwrt" feeds.conf.default || echo "src-git kwrt https://github.com/be-engineer/kwrt-packages" >> feeds.conf.default
