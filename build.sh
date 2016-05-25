#!/bin/bash -e

echo "Start build process"
cd ../bosh-repo/
bundle install
bundle exec rake stemcell:build_os_image[ubuntu,trusty,$PWD/tmp/ubuntu_base_image.tgz] 
