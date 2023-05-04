
FROM nginx:latest
WORKDIR /opt
COPY /Newfolder/* /usr/share/nginx/html
RUN rm -rf Newfolder 
CMD ["nginx", "-g", "daemon off;"]

