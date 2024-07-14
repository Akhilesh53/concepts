**Build docker image**

----
- To build the image

`docker build . -f Dockerfile -t <image/tag name>`

-----

**Docker Run commands**

-----
- To run the image

`docker run  <image name>`

- To run the image in detatched mode

`docker run -d <image name>`

- To run the image in interactive mode
 
`docker run -it <image name> bash`  

- To run the image in interactieve mode (waits for user input)

`docker run -i <image name>`

- To run the image om specific port

`docker run -p <outside port>:<container port> <image name>`

- To override the entry point value mentioned in dockerfile.

`docker run --entrypoint <value> <image name>`


- To set env variable from docker terminal

`docker run -e <ENV_VAR_NAME>=<ENV_VAR_VALUE> <image name>`

----

**Containers Commands**

----

- List all the running docker containers with bit of details about them. 

`docker ps`

- List all previous running/ exited containers.

`docker ps -a`

- To start/stop the container

`docker start/stop <container id/ name>`

- Remove the container permanently 

`docker rm <container name>`

- To run a command on the running container.

`docker exec <container name>`

- To run a command on the running container in interactive mode.

`docker exec it <container name>`

- Get in depth details for a particular container

`docker inspect <container name>/ <container id>`

- To view the logs of a container

`docker logs <container name>/ <container id>`

- Run image over a particula network

`docker run <image name> --network=host/none`

- 

`docker attach <container id>`

----

**Image Commands**

----

- List all the images present

`docker images`

- Remove image (make sure no conatiner is running using this image)

`docker rmi <image name>`

- To remove all images at once

`docker rmi $(docker images -aq)`

- Pull image from docker hub

`docker pull <image name>`

- To see the commands run prev for image

`docker history <image name>/<container id>`

----

**Docker Volume**

----

- Create Volume

`docker volume create <volume name>`

- When a container is deleted, all the data inside it also deleted. Now if we want to persist the data, we need to store the data outside the container on the docker host. To mount the path we need to run: 

`docker run -v /path//outside/container : /path/inside/container <image name>`

`docker run -v /path//outside/container : /path/inside/container <image name> -u <system user name>`

- Mount to a path

`docker run --mount type=bind, source=/path/to/source, target=/path/to/target <image name>`

----

**Docker Compose**

----
- This is applicable only to run containers on a single docker host
Link: is a command line option where we can link different containers.

- To run the container via compose yaml.

`docker-compose up`

- To stop the container

`docker-compose down` 

----

**Imp Extra Commands**

----

- To link  two different cotainers

`docker run -d --name <container application> -p <host port>:<container port> --link <container name which is to be linked>:<name of hoast application is looking for>`

-

`docker login <repository name>`

- Change Tag name

`docker image tag <source image>:<tag> <target image>:<tag>`

- Remove all dangling images from server

`docker image prune -a`

- Get details of the docker (check storage driver).

`docker info | more`

- List down all network in docker.

`docker network ls`

- 

`docker network inspect bridge`

- 

`docker network create --driver <driver name> bridge --subnet <subnet ips to be considered in this network> <name> custom_isolated_docker`







