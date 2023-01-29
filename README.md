# TWRP for TAB-A04-BR3 (MT8167)

## 概要
[twrpdtgen](https://github.com/twrpdtgen/twrpdtgen)を用いて生成したものを一部修正したものです。  
TAB-A04-BR3用のTWRPです。

## ビルド手順
Ubuntuを前提としています。
```bash
user@ubuntu:/home/user$ mkdir a04br3-twrp
user@ubuntu:/home/user$ docker run -it --name a04br3-build -h BuildPC-CT3 -v $HOME/a04br3-twrp:/a04br3-twrp awayume/a04br3-build:latest
root@BuildPC-CT3:/# cd /a04br3-twrp
root@BuildPC-CT3:/a04br3-twrp# repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1
root@BuildPC-CT3:/a04br3-twrp# repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1
root@BuildPC-CT3:/a04br3-twrp# repo sync -j8
root@BuildPC-CT3:/a04br3-twrp# mkdir -p device/sts-tottori
root@BuildPC-CT3:/a04br3-twrp# git clone https://github.com/Awayume/android_device_a04br3_mt8167_twrp.git device/sts-tottori/a04br3
root@BuildPC-CT3:/a04br3-twrp# source build/envsetup.sh
root@BuildPC-CT3:/a04br3-twrp# lunch a04br3-user
root@BuildPC-CT3:/a04br3-twrp# make clean
root@BuildPC-CT3:/a04br3-twrp# make recoveryimage -j8
```
`a04br3-twrp/out/target/product/a04br3/recovery.img` にTWRPが生成されます。
