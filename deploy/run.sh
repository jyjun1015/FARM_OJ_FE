#!/bin/sh

base=/FARM_OJ_FE

build_vendor_dll()
{
  if [ ! -e "${base}/build/vendor-manifest.json" ]
  then
      npm run build:dll
  fi
}
cd $base
npm install --registry=https://registry.npm.taobao.org && \
build_vendor_dll && \
npm run build

if [ $? -ne 0 ]; then
    echo "Build error, please check node version and package.json"
    exit 1
fi

exec nginx -c /FARM_OJ_FE/deploy/nginx.conf
