# don't change this line
FROM korney4eg/nginx-php:latest

LABEL maintainer="Konstantin"

# Install NGINX
RUN apt-get install -y nginx

# Adds our specific configuration for NGINX
ADD app.conf /etc/nginx/sites-enabled/app.conf

# Copy sample PHP application
ADD index.php /var/www/app/index.php

# Change privileges
RUN chown -R www-data:www-data /var/www

# Expose port 80
EXPOSE 80

# your code goes here
# Make nginx use app.conf configuration to properly render php files
# Make sure that index.php file is available in browser
# expose needed ports

# don't change this line
#CMD ["/usr/bin/supervisord"]
