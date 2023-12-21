#!/bin/bash

# https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible


# 2. Install libvirt:
# On Debian-based systems, the package name is libvirt-daemon-system for the system service and libvirt-clients for the client utilities. Install them with:sudo apt install libvirt-daemon-system libvirt-clients
sudo apt install libvirt-daemon-system libvirt-clients

# 3. Add Your User to the libvirt Group:
# To manage VMs as a non-root user, you should add your user to the libvirt group:
sudo adduser $(whoami) libvirt

# 4. Start and Enable libvirt Service:
# Start the libvirtd service and enable it to start on boot:
sudo systemctl start libvirtd
sudo systemctl enable libvirtd