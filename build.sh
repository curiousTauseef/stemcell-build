#!/bin/bash -e

cd ../bosh-repo/
bundle install
bundle exec rake stemcell:build_os_image[ubuntu,trusty,$PWD/tmp/ubuntu_base_image.tgz] 
