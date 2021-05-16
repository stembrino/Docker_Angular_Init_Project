FROM node:14

RUN npm install -g @angular/cli@12.0.0

WORKDIR /frontend

COPY ./package.json .

RUN npm install

COPY . .

ENTRYPOINT ["ng"]
