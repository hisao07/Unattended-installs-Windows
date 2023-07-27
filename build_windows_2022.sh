#!/bin/bash

packer build \
  --only=virtualbox-iso windows_2022_core.json
#  --var vhv_enable=true \
#  --var iso_url=~/Downloads/20348.169.210806-2348.fe_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso  \
