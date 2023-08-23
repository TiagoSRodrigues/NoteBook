# curl https://www.okd.io/vrutkovs.pub | gpg --import
# gpg --verify sha256sum.txt.asc sha256sum.txt

#!/bin/bash

create_dir_if_not_exists() {
    local DIR="$1"

    if [ ! -d "$DIR" ]; then
        mkdir "$DIR"
        echo "Directory $DIR created."
    else
        echo "Directory $DIR already exists."
    fi
}

create_dockerfile() {
    content="FROM rockylinux:9.2

# Update repositories and install packages
RUN yum update -y &&
    yum install -y virt wget git net-tools bind bind-utils bash-completion rsync libguestfs-tools virt-install epel-release libvirt-devel httpd-tools snf nginx &&
    yum clean all"

    echo "$content" > /rocky/Dockerfile
    echo "Dockerfile created at $(pwd)"
}

# Call the function to create the Dockerfile
create_dockerfile



# Call the function with "rocky" as the argument
create_dir_if_not_exists "rocky"
create_dockerfile

docker build -t openshift-rocky .
docker run -it openshift-rocky /bin/bash

wget https://raw.githubusercontent.com/TiagoSRodrigues/NoteBook/main/OpenShift/docker-compose.yaml -o docker-compose.yaml