#   using nginx as the basimage
FROM nginx:alpine 

# copy to the root folder
COPY . /usr/share/nginx/html

#activate the root folder as your active folder
WORKDIR  /usr/share/nginx/html


#use wget to download  your files 
RUN wget https://github.com/juliamwangi123/Akan-Name-Generator/archive/refs/heads/master.zip


#unzip the folder
RUN unzip master.zip

#copy the folder with your file to our active working folder
RUN cp  -r Akan-Name-Generator-master/* /usr/share/nginx/html/


#specify the port 
EXPOSE 80



CMD ["nginx", "-g", "daemon off;"]