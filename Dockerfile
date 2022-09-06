FROM node:alpine
WORKDIR '/app' 
COPY package.json .
RUN npm install
COPY . .
EXPOSE http://13.126.122.160/
CMD npm run start
