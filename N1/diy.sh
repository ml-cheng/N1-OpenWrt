#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

# Add packages
git clone https://github.com/kenzok8/small package/small
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic
