FROM nginx:stable-alpine

ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

COPY ./certs/* /etc/nginx/conf.d/

RUN mkdir -p /var/www/html