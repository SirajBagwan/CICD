# Use a minimal Nginx image as the base image
FROM nginx:alpine

# Copy your HTML file to the default Nginx web root directory
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

