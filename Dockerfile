FROM ubuntu
RUN apt update
RUN apt install apache2 -y
ADD index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
#we never use sudo in docker file bc container always in root access
