Network is basically required to communicate with/get connectivity to the internet for communication
(within containers or external both)

When we install docker, docker creates 3 networks 
- Bridge
- None
- Host

1. Bridge is the default network to which a container is attached to.
2. If we would like to attach with other network, we need to use netwrok command in command.
3. Bridge network is a private network created by docker on host. All containers get attached to bridge nerwork by default and they internal ip address in the series 172.17. To access these ips from outer world we need to map the port of these containers to the port of host
4. Another way to access the network from external world is to map the container to the host network. In host network if our application is running on port 5000, it is accessible from port 5000 only. we dont need to do port mapping explicitly. we will not be able to run multiple containers on the same host
5. In none, it doesnot have any access to external network.
6. docker internall has its own DNS running on 127.0.0.11
7. All containers in docker host can resolve/ talk each other using container names.
8. Docker uses virtual ethernet pairs to connect containers
9. Containers attached to the same network can communicate with each other using the container name as the hostname.