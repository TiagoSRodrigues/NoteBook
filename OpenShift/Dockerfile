FROM rockylinux:9.2

# Update repositories and install packages
RUN yum update -y &&
    yum install -y virt wget git net-tools bind bind-utils bash-completion rsync libguestfs-tools virt-install epel-release libvirt-devel httpd-tools snf nginx &&
    yum clean all
