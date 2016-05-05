#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get purge -y puppet-common
apt-get install -y wget rsync
wget --no-verbose https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
dpkg -i puppetlabs-release-pc1-trusty.deb
apt-get update
apt-get install -yq puppet-agent
