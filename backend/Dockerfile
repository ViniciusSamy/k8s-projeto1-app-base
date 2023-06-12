FROM php:7.4-apache

ARG ROOT_PASS
ARG SERVERNAME

COPY . /var/www/html
WORKDIR /var/www/html

RUN docker-php-ext-install mysqli

RUN sed -i s/YOUR_PASS_HERE/$ROOT_PASS/g conexao.php
RUN sed -i s/SERVENAME_HERE/$SERVERNAME/g conexao.php

#CMD [ "sleep" , "180"  ]
#CMD [ "php", "./index.php" ]

EXPOSE 80