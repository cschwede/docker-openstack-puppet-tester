docker-puppet-tests
===================

Re-usable Docker container to run Puppet tests.

Instead of installing all dependencies required to run Puppet tests on the
local machine, this can be used to run the tests in a Docker container. Mostly
used for testing changes to the OpenStack Puppet modules.

Note
----
This resets the user/group on the module to test.

Volumes
-------
1. /tmp/testdir
Mountpoint with Puppet module to test
1. /tmp/vendor
Re-usable directory for gems

Example usage
-------------

1) Build the Docker container:

    docker build -t puppet-tester .

2) Run the container:

    docker run -t -v /home/cschwede/git/puppet-swift/:/tmp/testdir:z -v /tmp/vendor:/tmp/vendor:z puppet-tester

This will test the module /home/cschwede/git/puppet-swift while re-using the
/tmp/vendor directory for gems.
