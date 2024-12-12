FROM ubuntu:latest
 
# Install Nginx
RUN apt-get update && apt-get install -y nginx
 
# Remove the default Nginx website
RUN rm -rf /var/www/html/*
 
# Copy the static HTML file to the Nginx web directory
COPY index.html /var/www/html/
 
# Expose port 80
EXPOSE 80
 
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]