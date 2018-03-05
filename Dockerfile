FROM node:8
  

RUN mkdir -p /usr/app/src

WORKDIR /usr/app/src

RUN git clone https://github.com/ashishth09/Cloud-Land

WORKDIR Cloud-Land/backend
RUN git checkout containerize

RUN npm install

CMD npm start