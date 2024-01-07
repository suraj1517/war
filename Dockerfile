# Use an official Nginx runtime as a base image
FROM nginx:latest

# Copy the HTML file from your local directory to the default Nginx web server directory
COPY ./index.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# CMD instruction to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

