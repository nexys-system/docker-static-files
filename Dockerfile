FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx 

# Copy a configuration file from the current directory
COPY conf/main.conf  /etc/nginx/sites-enabled/main.conf

# copty static file to nginx folder
COPY src /usr/share/nginx/html/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
# make sure the ports you expose match the ons defined in the conf files
# multiple ports are possible, ie `EXPOSE 89 23 54 ...`
EXPOSE 82

# Set the default command to execute
# when creating a new container
CMD service nginx start
