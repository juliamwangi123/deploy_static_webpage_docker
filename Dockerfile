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


#Run the following
#1.Build a docker image for the webserver by running (docker build -t <name:tag .>)
#2.check if the image has been created run(docker images)
#3.Run docker image container by running (docker run -d -p 80:80)
#4Run the image locally using (docker run -p 8000:80 imagename)
#4.Push the image to docker hub  first login to docker account usinfg (docker login)
#5.Tag you image before pushing to docker hub(docker tag <imagename:tag> username/imagename:tag )
#6.Push the image to docker hub (docker push  username/imagename:tag )