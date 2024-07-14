
1. When docker is installed, it automatically creates folder /var/lib/docker where all containers, images, volumnes etc will be stored.
2. Storage drivers are actually responsible for performing layering actions. (docker build things)
3. Docker builds images in layered architecture (image layer). each command in dockerfile is in  separate layer.
4. Each layer is read only.
5. When an container is build, it is build as a separte layer (container layer) is and has read and write access.
6. Two type of volumes are there: bind mount, volume mount
    bind is to map some path of the host
    volume is to map some path of docker volume