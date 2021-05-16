
## INIT PROJECT :whale:
The docker file is set to build the project in this directory. 
The name of the project is set in the env in the DOcker file. See the first example here.
To change it, modify the command in the Docker file, but you gave to adapt the docker-compose file:

### Example to create a image from init.dockerfile:

`docker build -t angular-image -f init.dockerfile .`

### Example to run the container to create an Angular project. 
> flag -e will set the name of project

`docker run --rm -e "PROJECT_NAME=angular-baby" -v "<absolute path to project>:/frontend" -it angular-image`

## RUN PROJECT
1. First, copy or move the **dockercompose.yaml** and **Dockerfile** to the project directory. 
2. In terminal, go to project path.
3. Use the docker-compose file to run the project:
   `docker-compose up`
4. Next, mount the container, access the http://localhost:4220
5. Now, you can delete the project Docker_Angular_Init_Project

> if you you'd like to not get the node_modules set this: `SKIP_INSTALL` value to true. Remember that you need to node modules to auto complete VScode (text editorcd ..).

First and recommended way, you can go insie the container with a bash (terminal or cmd), and execute a ng commands inside the container. 
Example command to go inside to container (you can use the container ID or name):

`docker exec -it angular_project bash`

To use the ng command, use the Dockerfile or change/comment the entrypoint from docker-compose and use the command through the docker-compose (example)
comment the ENTRYPOINT in the docker-compose and use the command

`docker-compose run ng generate **<compont name>**`

Or use the Dockerfile but you have to use the -v tag to mapping the container with you local machine

`docker run --rm -v "**<absolute path project>**:/frontend" **<container name>**`

### Remember when you install a dependencie, you have to rebuild the image:

`docker-compose up --build`
