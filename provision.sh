#!/bin/sh

DEBIAN_FRONTEND=noninteractive

apt-add-repository -y ppa:rsrchboy/brightbox-puppet
apt-add-repository -y ppa:git-core/ppa
apt-get update
apt-get install -y git puppet-git-receiver curl

mkdir -p /var/lib/puppet-git-receiver/.ssh
chown puppet-git.puppet-git /var/lib/puppet-git-receiver
chown puppet-git.puppet-git /var/lib/puppet-git-receiver/.ssh
chmod 0700 /var/lib/puppet-git-receiver/.ssh

curl --silent https://github.com/RsrchBoy.keys > /var/lib/puppet-git-receiver/.ssh/authorized_keys

