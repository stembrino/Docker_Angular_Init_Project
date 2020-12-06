FROM node:14

ENV PROJECT_NAME=hello_angular

RUN npm install -g @angular/cli 

WORKDIR /frontend

# VOLUME [ "/frontend/node_modules" ] to not take the node_modules

ENTRYPOINT ng new ${PROJECT_NAME} --skipInstall=true --directory ./

# See the https://angular.io/cli/new to view all options to init a project