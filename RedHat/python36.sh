#!/usr/bin/env bash

set -x
pushd /tmp
curl https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -o epel-release-latest-7.noarch.rpm
yum install -y epel-release-latest-7.noarch.rpm
yum update -y
yum install -y yum-utils
yum groupinstall -y development
yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum install -y python36u python36u-pip
popd

