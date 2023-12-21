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

# Call the function with "rocky" as the argument
create_dir_if_not_exists "rocky-image"
wget https://raw.githubusercontent.com/TiagoSRodrigues/NoteBook/main/OpenShift/references/rocky_dockerfile -O opt/Dockerfile
wget https://raw.githubusercontent.com/TiagoSRodrigues/NoteBook/main/OpenShift/references/docker-compose.yaml -O opt/docker-compose.yaml

docker build -t openshift-rocky /mnt/n/github/notebook/NoteBook-1/OpenShift/opt/Dockerfile
# docker run -it openshift-rocky /bin/bash
