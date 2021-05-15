FROM node:14

ENV PROJECT_NAME=hello_angular
ENV SKIP_INSTALL=false
RUN npm install -g @angular/cli 

WORKDIR /frontend

#Set skip intall to true if you'd like not get the node_modules, remember if you want development, you need the node modules to auto complete VSC

ENTRYPOINT ng new ${PROJECT_NAME} --skipInstall=$SKIP_INSTALL --directory ./

# See the https://angular.io/cli/new to view all options to init a project