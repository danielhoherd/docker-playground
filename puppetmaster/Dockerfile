FROM ubuntu:14.04
MAINTAINER Daniel Hoherd <hoherd@yelp.com>

RUN export DEBIAN_FRONTEND=noninteractive \
&&  apt-get update \
&&  apt-get purge -y puppet-common

RUN export DEBIAN_FRONTEND=noninteractive \
&&  apt-get install -y wget \
&&  wget --no-verbose https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb

RUN export DEBIAN_FRONTEND=noninteractive \
&&  dpkg -i puppetlabs-release-pc1-trusty.deb \
&&  apt-get update \
&&  apt-get install -yq puppetserver puppet-agent puppetdb-termini

# Decrease memory requirements
RUN sed -i 's/-Xms2g/-Xms512m/g' /etc/default/puppetserver \
&&  sed -i 's/-Xmx2g/-Xmx512m/g' /etc/default/puppetserver \
&&  /etc/init.d/puppetserver start
