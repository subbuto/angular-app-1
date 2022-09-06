FROM node:latest
COPY . .
RUN npm install
EXPOSE 9876
CMD ["node", "index.js"]
