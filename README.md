 MT8167 PLATFORM
===============
ビルドしても起動しません。

### To build: 

```
$ mkdir twrp

$ cd twrp

$ repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1

To initialize a shallow clone, which will save even more space, use a command like this:

$ repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1

After that sync your sources:

$ repo sync

Download or clone this repository, go to /twrp/device and create bbkedu/*. Copy this repo to your created folder

Build your recovery:

$ source build/envsetup.sh

& lunch *-eng

make clean && make recoveryimage
```
