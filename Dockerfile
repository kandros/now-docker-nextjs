FROM node
LABEL name "express-hello-world"
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
CMD npm run build ; npm start
