FROM ubuntu
MAINTAINER ahmed (amedassane15@gmail.com)
RUN apt-get update
RUN DEBIEN_FRONTEND=noninteractiv apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/cloudacademy/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]


