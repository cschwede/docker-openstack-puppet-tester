FROM fedora:latest

RUN yum install -y sudo rubygem-bundler ruby-devel make gcc redhat-rpm-config zlib-devel patch gcc-c++ git ; yum clean all

RUN mkdir /tmp/testdir

RUN useradd -m tester
RUN echo "tester ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY runtests.sh /usr/local/bin/runtests.sh
RUN chmod +x /usr/local/bin/runtests.sh

USER tester

CMD ["/usr/local/bin/runtests.sh"]
