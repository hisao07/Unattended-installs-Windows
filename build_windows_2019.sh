#!/bin/bash

packer build \
  --only=virtualbox-iso \
  --var vhv_enable=true windows_2019.json
#  --var iso_url=~/downloads/17763.379.190312-0539.rs5_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso \
