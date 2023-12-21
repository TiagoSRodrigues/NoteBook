#!/bin/bash

# List of Docker images to check
IMAGES=("rockylinux:9.2")

# List of packages to check
PACKAGES=("virt" "wget" "git" "net-tools" "bind" "bind-utils" "bash-completion" "rsync" "libguestfs-tools" "virt-install" "epel-release" "libvirt-devel" "httpd-tools" "snf" "nginx") # Replace with your desired packages

for image in "${IMAGES[@]}"; do
    echo "Checking packages in $image:"
    for package in "${PACKAGES[@]}"; do
        # Run a container, try to find the package, and remove the container after checking
        if docker run --rm $image rpm -q $package &>/dev/null; then
            echo "  - $package: Installed"
        else
            echo "  - $package: Not Installed"
        fi
    done
    echo ""
done
