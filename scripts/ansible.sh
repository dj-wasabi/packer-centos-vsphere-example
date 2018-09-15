#!/bin/bash

# Configuring werner-release
echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" > /etc/werner-release

# Installing epel
yum install -y epel-release

# Installing python-pip
yum install -y python-pip
yum remove -y epel-release
pip install --upgrade pip

# installing Ansible
pip freeze > /tmp/freeze-begin
pip install --cache-dir /tmp/cache ansible
pip freeze > /tmp/freeze-end
