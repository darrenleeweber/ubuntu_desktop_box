#!/bin/bash

apt-get clean
apt-get update -qq
apt-get install -y debian-keyring debian-archive-keyring
apt-get install -y build-essential
apt-get upgrade -y
