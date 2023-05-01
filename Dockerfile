
#FROM centos:latest
#RUN yum install -y httpd \
#  zip \
# unzip
#ADD https://github.com/ebsint/dev/blob/master/Newfolder.zip /var/www/html
#WORKDIR /var/www/html
#RUN unzip Newfolder.zip
#RUN cp -rvf Newfolder/* .
#RUN rm -rf Newfolder Newfolder.zip
#CMD ["/user/sbin/httpd" , "-D", "FOREGROUND"]
#EXPOSE 80

#FROM centos:7
#update and install nginx section
FROM nginx:latest
#RUN yum update -y
#RUN yum install -y epel-release
#RUN yum install -y nginx
#RUN yum install -y vim \
 # zip \
  #unzip
#create path and add index.html
#ADD https://github.com/ebsint/dev/blob/master/Newfolder /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN cp /Newfolder/* /usr/share/nginx/html
RUN rm -rf Newfolder 
#RUN chmod +r /usr/share/nginx/html/index.html
#RUN rm index.html
#RUN touch index.html

#EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]

#FROM nginx:latest
#ADD https://raw.githubusercontent.com/ebsint/dev/master/index.html /usr/share/nginx/html/
#RUN chmod +r /usr/share/nginx/html/index.html
#CMD ["nginx", "-g", "daemon off;"]
