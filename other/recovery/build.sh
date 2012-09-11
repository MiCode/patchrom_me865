#!/bin/bash
rm -rf Atrix2Bootstrap/build
apktool b Atrix2Bootstrap Atrix2Bootstrap.apk
rm -rf Atrix2Bootstrap/build
sign.sh Atrix2Bootstrap.apk
rm Atrix2Bootstrap.apk Atrix2Bootstrap.apk.signed
mv Atrix2Bootstrap.apk.signed.aligned Atrix2Bootstrap.apk
