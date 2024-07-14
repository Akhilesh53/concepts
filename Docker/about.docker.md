**About Docker**
-----

Docker is a platform for building running and shipping applications so that if application runs on one machine, it can run on other machine as well.

Issue:
1) OS Compatibility Issues (components involving different stack called matrix from the hell)
2) Libraries version mismatch
3) Diiferent Configurations

Within dockee we can package our application with all required stuff and usw the same over all machines.

--------

**Containers Vs VM's**
--------

**Docker Container:** is an isolated environment for running an application. (running instances of the image)

Containers also gives us same level of isolation but:

1) They are light weight
2) Uses same OS of the host
3) Start quickly
4) Need less resources

**VM's**: Abstraction of the machine (there can be multiple VM on a actual machine)
 Each has its own OS, Libs and depenencies
 
 **How do we do that?**

 Using a tool called hypervisor: a software we use to create and maintain VM's like Virtual Box or VM ware. 

 **Benefits of VM:**

 We can run 2  completely different applications in isolated fashion with all depenedencies in it

 **Problems of VM's**

 1) Need complete OS. Slow to restart.
 2) Resource Intensive (cz VM takes resources from actual physical machine)
 

 ----
 **Docker Architecture:**
 ----

- Docker works on the client server architcture where a client talks to server called Docker Enginer via rest api.

- Comprises of docker cli, rest api interface, docker deamon. cli uses rest api to interact with deamon.

- cli need not to be on the same host. we can access remote docker engine also.

   `docker -H=<remote docker engine>:<port>`

   `docker -H=10.222.145.68 run ngnix`

- Docker uses namespaces to isloate workspaces to maintain isolation. Each namespace has:

    - process id
    - network
    - Interprocess communication
    - Mount
    - Unix Timesharing

- There is no hard isolation bw between the containers and underlying host

-  If there is some process initiated on the container, it will run on the underlying host, but with in the container it is associated with separate process id and on the host it is associated with different process id.

- There is a way to restrict the amount of memory and cpu used by docker container
   Docker uses cgroups or container groups to do this.

   `docker run --cpu=0.5 <image name>` // not use more than 50% of the CPU utilisation

   `docker run --memory=100m <image name>` // not use more than 100 mb







  


