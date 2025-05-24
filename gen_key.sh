#!/bin/sh

gen_signing_keys() {
  local subject='/C=TW/ST=Taiwan/L=Taoyuan/O=Google/OU=Android/CN=PixelOS/emailAddress=pexcn97@gmail.com'

  mkdir keys
  for key in releasekey platform shared media testkey networkstack nfc verity otakey sdk_sandbox bluetooth; do
    echo | ../development/tools/make_key keys/$key "$subject" ec
  done
}

gen_signing_keys
