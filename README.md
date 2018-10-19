docker-openstack-puppet-tester
==============================

Re-usable Docker container to run Puppet tests.

Instead of installing all dependencies required to run Puppet tests on the
local machine, this can be used to run the tests in a Docker container. Mostly
used for testing changes to the OpenStack Puppet modules. Gems are installed in
/tmp/vendor and re-used on subsequent runs.

Example usage
-------------

1) Build the Docker container:

    docker build -t docker-openstack-puppet-tester .

2) Run the container:

    docker run -t -v /home/cschwede/git/puppet-swift/:/tmp/testdir -v /tmp/vendor:/tmp/vendor docker-openstack-puppet-tester

This will test the module /home/cschwede/git/puppet-swift while re-using the
/tmp/vendor directory for gems.
