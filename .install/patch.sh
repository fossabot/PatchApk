#!/bin/bash

# apk.rb patch
rm -rf $PREFIX/opt/metasploit-framework/lib/msf/core/payload/apk.rb
cp $HOME/PatchApk/.install/patch/apk.rb $PREFIX/opt/metasploit-framework/lib/msf/core/payload/.
rm -rf $HOME/metasploit-framework/lib/msf/core/payload/apk.rb
cp $HOME/PatchApk/.install/patch/apk.rb $HOME/metasploit-framework/lib/msf/core/payload/.
# Ubuntu Patch
rm -rf $PREFIX/ubuntu/ubuntu-fs/usr/bin/signapk
cp $HOME/PatchApk/.install/patch/sign $PREFIX/ubuntu/ubuntu-fs/usr/bin/signapk
cp $HOME/PatchApk/.install/patch/publickey.x509.pem $PREFIX/ubuntu/ubuntu-fs/usr/lib/.
cp $HOME/PatchApk/.install/patch/publickey.pk8 $PREFIX/ubuntu/ubuntu-fs/usr/lib/.
chmod +x $PREFIX/ubuntu/ubuntu-fs/usr/bin/signapk

# Termux Patch
cp $HOME/PatchApk/.install/patch/apktool $PREFIX/bin/.
cp $HOME/PatchApk/.install/patch/signapk $PREFIX/bin/.
cp $HOME/PatchApk/.install/patch/java $PREFIX/bin.
cp $HOME/PatchApk/patchapk $PREFIX/bin/.
chmod +x $PREFIX/bin/*


