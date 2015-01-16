#!/usr/bin/env bash

echo "## Setup RVM"
version=$1 || 2.2.0
if [ ! -f $HOME/rvm_install_flag ]
then
  # install public key
  gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
  # install rvm
  \curl -sSL https://get.rvm.io | bash -s stable --ruby
  # add progress bar
  #echo progress-bar >> ~/.curlrc
  touch $HOME/rvm_install_flag
else
  echo "rvm already installed, flag set $HOME/rvm_install_flag"
fi
# inject rvm into bash
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> .bashrc

source .bashrc
source ~/.rvm/scripts/rvm

echo "## Avaiable Rubies:"
rvm list

echo "## Avaiable Gemsets"
rvm gemset list
rvm gemdir

echo "## Install Ruby $version set to default"
rvm install $version
rvm use $version --default

echo "## Install rails"
gem install rails

