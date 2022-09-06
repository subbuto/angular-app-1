FROM node:latest
COPY nodeapp/* /usr/src/app
RUN npm install
EXPOSE http://13.126.122.160/
CMD ["node", "index.js"]
