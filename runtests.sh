#!/usr/bin/bash

if [ -e /tmp/vendor ]; then
  sudo chown -R tester:tester /tmp/vendor
fi

cp -r /tmp/testdir ~/testdir

sudo chown -R tester:tester ~/testdir
cd ~/testdir

bundle install --path /tmp/vendor
bundle exec rake lint
bundle exec rake syntax
bundle exec rake spec
