# Docker for the Absolute Beginner  

## Concepts

- **DockerFile:** Text file that contains instructions on how to build a docker image.  
t specifies the operating system that will underlie the container, along with the languages, environmental variables, file locations, network ports, and other components it needs—and what the container will do once we run it  

- **Docker Images**: Docker images contain executable application source code as well as all the tools, libraries, and dependencies that the application code needs to run as a container. When you run the Docker image, it becomes one instance (or multiple instances) of the container.

- **Docker Container:** A Docker container image is a lightweight, standalone, executable package of software that has everything you need to run an application – code, runtime, system tools, system libraries, and settings.  
 **Container life cicle/states:** *1. Created ➔ 2. Runnig ➔ 3. Exited ➔ 4. Deleted*  
A container only live as long as the process inside is alive, if finish or crash the container stops  

- **Docker Hub:** Docker Hub is the public repository of Docker images.

- **Docker Daemon:** Docker Daemon is the background service running on the host that manages the building, running, and distributing Docker containers. The daemon is the process that runs in the operating system in which clients speak.

- **Docker Engine**: Docker Engine is a client-server application that supports the tasks and workflows involved to build, ship, and run container-based applications. The engine creates a server-side daemon process that hosts images, containers, networks, and storage volumes.

- **Docker Registry**: The Docker Registry is where the Docker Images are stored. The Registry can be either a user’s local repository or a public repository like a Docker Hub allowing multiple users to collaborate in building an application. Even with several teams within the same organization can exchange or share containers by uploading them to the Docker Hub, which is a cloud repository similar to GitHub.

- **Docker Compose:** Docker-compose is for running multiple containers as a single service. It does so by running each container in isolation but allowing the containers to interact with one another.

- **Docker Swarm:** Docker swarm is a service for containers that allows IT administrators and developers to create and manage a cluster of swarm nodes within the Docker platform. Each node of Docker swarm is a Docker daemon, and all Docker daemons interact using the Docker API. A swarm consists of two types of nodes: a manager node and a worker node. A manager node maintains cluster management tasks. Worker nodes receive and execute tasks from the manager node.

---
  
## **Docker commands**

|Command            | Description                                            |
|-------------------|--------------------------------------------------------|
|docker **run**     | Runs a container ( if the image isn't instaled get it )|
|docker **ps**      | Lists all **running**  containers                      |
|docker **ps  -a**  | Lists all containers                                   |
|docker **stop**    | Stops the container                                    |
|docker **rm**      | Removes container                                      |
|docker **images**  | Show all images                                        |
|docker **rmi**     | Removes a images w/o containers                        |
|docker **pull**    | Pulls the image from hub                               |
|docker **exe**     | Executes a command in a ruuning container              |
|docker **inspect** | Shows all the information about the container          |
|docker **logs**    | show the logs of the container                         |

## **Modes**  

 docker [command]  
  
| **Command**             |  **Description**                                                                 |
|------------------------ |--------------------------------------------------                                |
| **-d**                  | Detatch mode (run in backdround                                                  |
| **-i**                  | Interactive mode                                                                 |
| **-t**                  | Psueod terminal                                                                  |
| **-p**                  | Publish all exposed ports to the host interfaces                                 |
| **-v**                  | Volume mapping                                                                   |
| **attach**              | Attach local standard input, output, and error streams to a running container    |
| **build**               | Build an image from a Dockerfile                                                 |
| **commit**              | Create a new image from a container's changes                                    |
| **cp**                  | Copy files/folders between a container and the local filesystem                  |
| **create**              | Create a new container                                                           |
| **diff**                | Inspect changes to files or directories on a container's filesystem              |
| **events**              | Get real time events from the server                                             |
| **exec**                | Run a command in a running container                                             |
| **export**              | Export a container's filesystem as a tar archive                                 |
| **history**             | Show the history of an image                                                     |
| **images**              | List images                                                                      |
| **import**              | Import the contents from a tarball to create a filesystem image                  |
| **inspect**             | Return low-level information on Docker objects                                   |
| **kill**                | Kill one or more running containers                                              |
| **load**                | Load an image from a tar archive or STDIN                                        |
| **login**               | Log in to a Docker registry                                                      |
| **logout**              | Log out from a Docker registry                                                   |
| **logs**                | Fetch the logs of a container                                                    |
| **pause**               | Pause all processes within one or more containers                                |
| **port**                | List port mappings or a specific mapping for the container                       |
| **ps**                  | List containers                                                                  |
| **pull**                | Pull an image or a repository from a registry                                    |
| **push**                | Push an image or a repository to a registry                                      |
| **rename**              | Rename a container                                                               |
| **restart**             | Restart one or more containers                                                   |
| **rmi**                 | Remove one or more images                                                        |
| **run**                 | Run a command in a new container                                                 |
| **search**              | Search the Docker Hub for images                                                 |
| **start**               | Start one or more stopped containers                                             |
| **stats**               | Display a live stream of container(s) resource usage statistics                  |
| **stop**                | Stop one or more running containers                                              |
| **tag**                 | Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE                            |
| **top**                 | Display the running processes of a container                                     |
| **unpause**             | Unpause all processes within one or more containers                              |
| **version**             | Show the Docker version information                                              |
| **wait**                | Block until one or more containers stop, then print their exit codes             |
| **help**                |                                                                                  |  
  
| **Options**             |   **Description**  
|-------------------------|------------------------------------------------------------------------------------|
|--config string          |  Location of client config files (default  (default "C:\\ (...)\\.docker           |
|-c, --context string     | Name of the context to use to connect to the daemon (overrides DOCKER_HOST env var and default context set with "docker context use")|
|-D, --debug              | Enable debug mode                                                                  |
|-H, --host list          | Daemon socket(s) to connect to                                                     |
|-l, --log-level string   | Set the logging level ("debug"|"info"|"warn"|"error"|"fatal") (default "info")     |
|--tls                    | Use TLS; implied by --tlsverify                                                    |  
|--tlscacert string       | Trust certs signed only by this CA (default "C:\\ (...)\\.docker\\ca.pem")         |
|--tlscert string         | Path to TLS certificate file (default "C:\\ (...)\\.docker\\cert.pem")             |
|--tlskey string          | Path to TLS key file (default "C:\\ (...)\\.docker\\key.pem")                      |
|--tlsverify              | Use TLS and verify the remote                                                      |
|-v, --version            | Print version information and quit                                                 |

## Tags \: 2.0  

ex: version, etc. appears after the name ex: *docker run redis:4.0*

---

## **Port mapping**  

Docker host = docker engine
a container has a internal ip, it must be mapped a port of the host.

> docker -p **hosts_port** : **container_port**

we can run diferent instances on diferent ports.

![ports image](https://github.com/TiagoSRodrigues/Docker-101/blob/master/Images/docker_port_mapping.PNG)

## **Volume mapping**

Used to store data, in order don't delete data when stopping the container. Example:  
> docker run v /opt/ datadir : var / mysql mysql  
*docker run v* ***inside_path : outside_path***  

## Management commands  

Management Commands:                                                 |
|Command     | Description                                           |
|--          |--                                                     |
|app*        |Docker App (Docker Inc., v0.9.1-beta3)                 |
|builder     |Manage builds                                          |
|buildx*     |Build with BuildKit (Docker Inc., v0.5.1-docker)       |
|config      |Manage Docker configs                                  |
|container   |Manage containers                                      |
|context     |Manage contexts                                        |
|image       |Manage images                                          |
|manifest    |Manage Docker image manifests and manifest lists       |
|network     |Manage networks                                        |
|node        |Manage Swarm nodes                                     |
|plugin      |Manage plugins                                         |
|scan*       |Docker Scan (Docker Inc., v0.6.0)                      |
|secret      |Manage Docker secrets                                  |
|service     |Manage services                                        |
|stack       |Manage Docker stacks                                   |
|swarm       |Manage Swarm                                           |
|system      |Manage Docker                                          |
|trust       |Manage trust on Docker images                          |
|volume      |Manage volumes                                         |
