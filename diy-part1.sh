#!/bin/bash
###
 # @Author       : Leon Lee
 # @Date         : 2025-07-02 09:19:54
 # @LastEditors  : Leon
 # @LastEditTime : 2025-07-02 09:57:42
 # @Description  : file content
 # @FilePath     : /mi-ac2100-immortalwrt/diy-part1.sh
### 
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.defaultault

#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

#sed -i 's@coolsnowwolf/packages@P3TERX/packages@' feeds.conf.default

#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

#sed -i '$a src-git helloworld https://github.com/P3TERX/helloworld' feeds.conf.default

# 添加 daed 插件（如需自定义操作可在此处添加）
# 示例：拉取 luci-app-daed 到 package 目录（如有需要可取消注释）
git clone https://github.com/QiuSimons/luci-app-daed.git package/luci-app-daed
