FROM rockylinux:9.2

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y virt wget git net-tools bind bind-utils bash-completion rsync libguestfs-tools virt-install libvirt-devel httpd-tools nginx
RUN yum clean all
