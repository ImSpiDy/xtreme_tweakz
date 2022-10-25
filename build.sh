#!/usr/bin/env bash

. module.prop

ZIPNAME=Xtreme-TweakZ-${version}.${buildNo}.zip

function push() {
curl -F document=@$1 "https://api.telegram.org/bot${bot_token}/sendDocument" \
     -F chat_id="${chat_id}"  \
     -F "disable_web_page_preview=true" \
     -F "parse_mode=html" \
     -F caption="`cat changelog.txt`"
}

zip -r9 "${ZIPNAME}" * -x build.sh -x *.github*

push "${ZIPNAME}"
