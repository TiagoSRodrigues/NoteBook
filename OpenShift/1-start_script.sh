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
wget https://raw.githubusercontent.com/TiagoSRodrigues/NoteBook/main/OpenShift/references/Dockerfile -O opt/Dockerfile

docker build -t openshift-rocky .
docker run -it openshift-rocky /bin/bash

wget https://raw.githubusercontent.com/TiagoSRodrigues/NoteBook/main/OpenShift/docker-compose.yaml -o docker-compose.yaml