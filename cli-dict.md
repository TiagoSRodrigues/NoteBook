| OS        | Utility             | Utility Meaning                    | Command        | Description                                                 | Example             | Example Description                                  |
|-----------|---------------------|------------------------------------|-----------     |-------------------------------------------------------------|---------------------|------------------------------------------------------|
| Linux     | `lsblk`             | List Block Devices                 | `lsblk`        | Lists all block devices with their names, sizes, and mounts | `lsblk`             | Lists all block devices and their information        |
| Linux     | `df`                | Disk Free                          | `df`           | Shows disk space used and available on filesystems          | `df -h`             | Shows human-readable disk space usage                |
| Linux     | `dmesg`             | Display Message                    | `dmesg`        | Displays kernel-related messages                            | `dmesg \| tail`     | Shows the last few kernel messages                   |
| Linux     | `smartctl`          | SMART Control                      | `smartctl`     | Checks health of physical drives                            | `sudo smartctl -a /dev/sda` | Checks SMART data of `/dev/sda`               |
| Linux     | `fsck`              | File System Check                  | `fsck`         | Checks and repairs filesystem inconsistencies               | `sudo fsck /dev/sda1`| Checks and repairs filesystem on `/dev/sda1`        |
| Linux     | `mount`             | Mount                              | `mount`        | Mounts a filesystem                                         | `sudo mount /dev/sda1 /mnt/mydrive` | Mounts `/dev/sda1` to `/mnt/mydrive`    |
| Linux     | `umount`            | Unmount                            | `umount`       | Unmounts a filesystem                                       | `sudo umount /mnt/mydrive` | Unmounts `/mnt/mydrive`                      |
| Linux     | `ls`                | List                               | `ls`           | Lists files and directories in a directory                  | `ls -la /mnt`       | Lists all files and directories in `/mnt` with details |
| Linux     | `scp`               | Secure Copy                        | `scp`          | Copies files over a network securely                        | `scp file.txt remote_user@remote_host:/remote/dir` | Copies `file.txt` to a remote directory |
| Docker    | `docker ps`         | List Docker Processes              | `docker ps` | Lists running Docker containers                           | `docker ps`         | Lists all active Docker containers                  |
| Docker    | `docker run`        | Run Docker Container               | `docker run` | Runs a command in a new Docker container                 | `docker run -it ubuntu bash` | Runs an interactive Ubuntu container with bash |
| Docker    | `docker build`      | Build Docker Image                 |`docker build` | Builds Docker images from a Dockerfile                  | `docker build -t myimage:latest .` | Builds a Docker image named `myimage`   |
| Docker    | `docker exec`       | Execute in Docker Container        | `docker exec` | Executes a command in a running container               | `docker exec -it mycontainer bash` | Opens bash in running container `mycontainer` |
| Linux     | `grep`              | Global Regular Expression Print    | `grep`        | Searches for patterns in files                                   | `grep 'pattern' filename`             | Searches 'filename' for 'pattern'                    |
| Linux     | `awk`               | AWK Scripting Language             | `awk`         | Processes and analyzes text files                                | `awk '{print $1}' filename`           | Prints the first column of 'filename'                |
| Linux     | `sed`               | Stream Editor                      | `sed`         | Edits and transforms text in a stream                            | `sed 's/old/new/' filename`           | Replaces 'old' with 'new' in 'filename'              |
| Linux     | `curl`              | Client URL                         | `curl`        | Transfers data from or to a server                                | `curl http://example.com`             | Fetches the content of a web page                    |
| Linux     | `wget`              | Web Get                            | `wget`        | Downloads files from the web                                     | `wget http://example.com/file`        | Downloads 'file' from the specified URL              |
| Linux     | `tar`               | Tape Archive                       | `tar`         | Compresses and archives files                                    | `tar cvzf archive.tar.gz /path/to/dir`| Creates a gzipped tar archive of a directory         |
| Linux     | `ssh`               | Secure Shell                       | `ssh`         | Connects to remote servers securely                              | `ssh user@remotehost`                 | Connects to 'remotehost' as 'user'                   |
| Linux     | `iptables`          | IP Tables                          | `iptables`    | Configures Linux kernel firewall                                 | `iptables -L`                         | Lists all current firewall rules                     |
| Docker    | `docker images`     | List Docker Images                 | `docker images`| Lists all Docker images locally                                  | `docker images`                       | Lists all Docker images on local machine             |
| Docker    | `docker-compose`    | Docker Compose                     | `docker-compose` | Runs and manages multi-container Docker applications          | `docker-compose up`                   | Starts containers defined in `docker-compose.yml`    |
| Kubernetes| `kubectl`           | Kubernetes Control                 | `kubectl`     | Command line tool for Kubernetes                                 | `kubectl get pods`                    | Lists all pods in the current namespace              |
| Kubernetes| `helm`              | Helm Package Manager               | `helm`        | Manages Kubernetes applications                                  | `helm install myapp ./mychart`        | Installs an application using a Helm chart           |
| Git       | `git`               | Git Version Control                | `git`         | Distributed version control system                               | `git clone repo_url`                  | Clones a repository from 'repo_url'                  |
| Git       | `git `        | Git Branch                         | `git branch`  | Manages branches in Git                                          | `git branch new-branch`               | Creates a new branch 'new-branch'                    |
| Git       | `git `         | Git Merge                          | `git merge`   | Merges branches in Git                                           | `git merge feature-branch`            | Merges 'feature-branch' into the current branch      |
| Linux     | List Directories    | `ls`                               | Lists directory contents                                    | `ls -l /path/to/dir`                   |
| Linux     | Change Directory    | `cd`                               | Changes the current directory                               | `cd /path/to/dir`                      |
| Linux     | Copy Files          | `cp`                               | Copies files and directories                                | `cp source.txt dest.txt`               |
| Linux     | Move/Rename Files   | `mv`                               | Moves/renames files and directories                          | `mv old.txt new.txt`                   |
| Linux     | Remove Files        | `rm`                               | Removes files and directories                                | `rm file.txt`                          |
| Linux     | Display File Content| `cat`                              | Concatenates and displays file content                      | `cat file.txt`                         |
| Linux     | Find Files          | `find`                             | Searches for files in a directory hierarchy                 | `find / -name filename`                |
| Linux     | Display Disk Usage  | `du`                               | Estimates file space usage                                  | `du -sh /path/to/dir`                  |
| Linux     | Disk Free           | `df`                               | Reports file system disk space usage                        | `df -h`                                |
| Linux     | Process Status      | `ps`                               | Reports a snapshot of current processes                     | `ps aux`                               |
| Linux     | Kill Process        | `kill`                             | Sends a signal to a process                                 | `kill -9 PID`                          |
| Linux     | Network Interfaces  | `ifconfig`                         | Configures network interfaces                               | `ifconfig eth0`                        |
| Linux     | Display Messages    | `dmesg`                            | Displays kernel messages                                    | `dmesg | grep usb`                     |
| Linux     | Stream Editor       | `sed`                              | Stream editor for filtering and transforming text           | `sed 's/old/new/' file`                |
| Linux     | Print Last Lines    | `tail`                             | Outputs the last part of files                              | `tail -f /var/log/syslog`              |
| Linux     | Print First Lines   | `head`                             | Outputs the first part of files                             | `head -n 5 file.txt`                   |
| Linux     | File Transfer       | `scp`                              | Secure copy (remote file copy program)                      | `scp file.txt user@host:/path`         |
| Linux     | Secure Shell        | `ssh`                              | OpenSSH SSH client (remote login program)                   | `ssh user@host`                        |
| Linux     | System Monitor      | `top`                              | Displays Linux tasks                                        | `top`                                  |
| Linux     | Archive Files       | `tar`                              | Tape Archive, for archiving files                           | `tar czvf archive.tar.gz /path/to/dir` |
| Docker    | Run Container       | `docker run`                       | Runs a command in a new Docker container                    | `docker run -it ubuntu bash`           |
| Docker    | List Containers     | `docker ps`                        | Lists Docker containers                                     | `docker ps -a`                         |
| Docker    | Build Image         | `docker build`                     | Builds an image from a Dockerfile                           | `docker build -t myimage .`            |
| Docker    | Push Image          | `docker push`                      | Pushes an image to a Docker registry                        | `docker push myimage`                  |
| Docker    | Pull Image          | `docker pull`                      | Pulls an image from a Docker registry                       | `docker pull ubuntu`                   |
| Docker    | Stop Container      | `docker stop`                      | Stops one or more running containers                        | `docker stop mycontainer`              |
| Docker    | Remove Container    | `docker rm`                        | Removes one or more containers                              | `docker rm mycontainer`                |
| Kubernetes| Get Resources       | `kubectl get`                      | Displays one or many resources                              | `kubectl get pods`                     |
| Kubernetes| Apply Configuration | `kubectl apply`                    | Applies a configuration to a resource from a file           | `kubectl apply -f deployment.yaml`     |
| Kubernetes| Delete Resources    | `kubectl delete`                   | Deletes resources by filenames, stdin, resources, names     | `kubectl delete -f ./pod.json`         |
| Kubernetes| Describe Resource   | `kubectl describe`                 | Shows details of a specific resource or group of resources  | `kubectl describe pods my-pod`         |
| Kubernetes| Execute Command     | `kubectl exec`                     | Executes a command in a container                           | `kubectl exec -ti my-pod -- bash`      |
| Git       | Clone Repository    | `git clone`                        | Clones a repository into a new directory                    | `git clone https://github.com/user/repo.git` |
| Git       | Pull Changes        | `git pull`                         | Fetches and integrates with another repository or local branch | `git pull origin master`             |
| Git       | Commit Changes      | `git commit`                       | Records changes to the repository                           | `git commit -m "Commit message"`      |
| Git       | Push Changes        | `git push`                         | Updates remote refs along with associated objects           | `git push origin master`              |
| Git       | Create Branch       | `git branch`                       | Creates, lists, renames, and deletes branches               | `git branch new-branch`               |
| Git       | Switch Branch       | `git checkout`                     | Switches branches or restores working tree files            | `git checkout feature-branch`         |
| `tar -cf`             | Create a tar archive                                  | `tar -cf archive.tar /path/to/dir`                  | Creates a tar archive named `archive.tar` of `/path/to/dir`   |
| `tar -xf`             | Extract files from a tar archive                      | `tar -xf archive.tar`                               | Extracts files from `archive.tar`                            |
| `tar -czf`            | Create a gzip compressed tar archive                  | `tar -czf archive.tar.gz /path/to/dir`              | Creates a compressed tar archive with gzip                   |
| `tar -xzf`            | Extract a gzip compressed tar archive                 | `tar -xzf archive.tar.gz`                           | Extracts files from a gzip compressed tar archive            |
| `tar -cjf`            | Create a bzip2 compressed tar archive                 | `tar -cjf archive.tar.bz2 /path/to/dir`             | Creates a compressed tar archive with bzip2                  |
| `tar -xjf`            | Extract a bzip2 compressed tar archive                | `tar -xjf archive.tar.bz2`                          | Extracts files from a bzip2 compressed tar archive           |
| `tar -tvf`            | List the contents of a tar archive                    | `tar -tvf archive.tar`                              | Lists the contents of `archive.tar` without extracting them  |
| `tar -czvf`           | Create a gzip compressed tar archive with verbose     | `tar -czvf archive.tar.gz /path/to/dir`             | Verbosely creates a gzip compressed tar archive              |
| `tar -xzvf`           | Extract a gzip compressed tar archive with verbose    | `tar -xzvf archive.tar.gz`                          | Verbosely extracts a gzip compressed tar archive             |
| `tar -C`              | Change to directory before performing any operations  | `tar -xzf archive.tar.gz -C /target/directory`      | Extracts files from a tar archive into a specific directory  |
| `tar --exclude`       | Create an archive excluding specified files           | `tar -czf archive.tar.gz --exclude='*.txt' /path/to/dir` | Creates an archive excluding all `.txt` files               |