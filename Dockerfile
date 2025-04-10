FROM ubuntu
RUN sudo apt update
RUN sudo apt install apache2 -y
ADD index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
