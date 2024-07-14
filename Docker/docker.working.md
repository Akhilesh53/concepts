**Docker Workflow**
-----

1) Build the application
2) Containerise the application using docker file
   - Dockerfile is a plain txt file with the set of instructions to package up aplication into image.
3) Once we have the image, we tell docker to start the container.
   - A container is basically running instance of the image. It is a special process which is completely isolated and has its completely own system.


----

**Dockerfile**

----

1) Dockerfile contains set of instructions to dockerise the application. 
2) At its core, an image is series of read only layers stacked on top of each other. Docker treats each line of instruction as a separate layer. 
3) Once an instrcution is executed, it is stored in a cache. If the instruction is in cache, it is not executed again.
4) Thus order of instrcutions matters the most in dockerfile.
5) For instructions that change infrequently (e.g., installing system packages or dependencies), it's beneficial to place them near the top of the Dockerfile. This allows Docker to cache these layers, and subsequent builds can reuse them, saving time.
6) For instructions that change frequently (e.g., copying application code), they should be placed near the bottom of the Dockerfile. This ensures that changes in your application code trigger a rebuild of fewer layers, which is faster.
7) Each layer inherits some of the contents from previous layer.
8) Each time Docker launches a container from an image, it adds a thin writable layer, known as the container layer, which stores all changes to the container throughout its runtime.

----

**Docker Volume and Mount Points**

----

Volume is the recommended method for storing data created and utilized by Docker containers is to use volumes. Docker manages volumes entirely, whereas bind mounts rely on the host machine’s operating system and directory structure.

----

**Multistage build iin docker**

---

Multi-stage builds in Docker are recommended for all applications and are useful for creating smaller, more secure images. They're especially beneficial when an application has a complex build process or many dependencies.