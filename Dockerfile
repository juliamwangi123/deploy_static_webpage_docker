FROM nginx:alpine
COPY . /usr/share/nginx/html

WORKDIR  /usr/share/nginx/html



RUN wget https://github.com/juliamwangi123/Akan-Name-Generator/archive/refs/heads/master.zip

RUN unzip master.zip

RUN cp  -r Akan-Name-Generator-master/* /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]