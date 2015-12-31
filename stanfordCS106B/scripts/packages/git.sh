#!/bin/sh

if which gitk >/dev/null; then
  echo "skip gitk installation"
else
  echo "gitk installation"
  apt-get install -y git-doc git-man gitk
fi

if git flow init help | grep -q 'usage: git flow'; then
  echo "skip git-flow installation"
else
  echo "git-flow installation"
  apt-get install -y git-flow
fi
