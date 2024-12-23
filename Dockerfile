FROM nginx:alpine

# Copy your app's files into the container
COPY . /usr/share/nginx/html

# Update NGINX configuration to listen on port 8080
RUN sed -i 's/listen\s*80;/listen 8080;/' /etc/nginx/conf.d/default.conf

# Expose the correct port
EXPOSE 8080

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]

