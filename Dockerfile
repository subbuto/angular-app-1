FROM node:latest
COPY . .
RUN npm install
EXPOSE http://13.126.122.160/
CMD ["node", "index.js"]
