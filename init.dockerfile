FROM node:14

ENV PROJECT_NAME=hello_angular

RUN npm install -g @angular/cli 

WORKDIR /frontend

VOLUME [ "/frontend/node_modules" ]

ENTRYPOINT ng new ${PROJECT_NAME} --directory ./
