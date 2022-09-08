FROM nginx:alpine
LABEL author="subbu"
WORKDIR /usr/share/nginx/html
COPY . .
COPY ./dist .
EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
