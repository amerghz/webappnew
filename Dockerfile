
FROM nginx:latest
WORKDIR /opt/Newfolder
COPY /Newfolder/* /usr/share/nginx/html
RUN rm -rf Newfolder 
CMD ["nginx", "-g", "daemon off;"]

