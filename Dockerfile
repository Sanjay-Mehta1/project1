# Use an official PHP runtime as a parent image
FROM devopsedu/webapp:latest

# Set the working directory in the container
WORKDIR /var/www/html

# Copy your PHP application code into the container
RUN cd /tmp/
RUN git clone https://github.com/edureka-devops/projCert.git
COPY /tmp/ .

# Install PHP extensions and other dependencies
RUN apt-get update && \
    apt-get install -y libpng-dev && \
    docker-php-ext-install pdo pdo_mysql gd

# Expose the port Apache listens on
EXPOSE 8090
