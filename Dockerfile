From ubuntu
MAINTAINER jackzyang
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y nginx
COPY index.html /var/www/html 
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 8080
