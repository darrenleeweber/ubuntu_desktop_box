#!/bin/sh

if which subl >/dev/null; then
  echo "skip sublime 3 installation"
else
  echo "sublime 3 installation"
  add-apt-repository ppa:webupd8team/sublime-text-3
  apt-get update -qq
  apt-get install -y sublime-text-installer
fi

# cd ~/.config/sublime-text-3/Packages
# git clone https://github.com/wbond/sublime_package_control.git "Package Control"
# cd "Package Control"
# git checkout python3
