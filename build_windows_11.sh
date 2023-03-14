#!/bin/bash
#  --var iso_url=~/packer_cache/msdn/en-us_windows_11_consumer_editions_x64_dvd_bd3cf8df.iso \
#  --var iso_checksum=sha256:667bd113a4deb717bc49251e7bdc9f09c2db4577481ddfbce376436beb9d1d2f \
#  --var autounattend=tmp/11_pro/Autounattend.xml \

packer build -force --only=virtualbox-iso windows_11.json
#  --var iso_url=~/packer_cache/22000.194.210913-1444.co_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso \
# windows_11.json

