FROM ubuntu

RUN apt update
RUN apt install apache2 -y

WORKDIR /var/www/html/

COPY html/ .

EXPOSE 80/tcp

CMD service apache2 start && bash

RUN date > buildtime.txt
