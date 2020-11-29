FROM node:14

RUN npm install -g @angular/cli 

WORKDIR /frontend

COPY package.json .

RUN npm install

COPY . .

ENTRYPOINT ["ng"]
