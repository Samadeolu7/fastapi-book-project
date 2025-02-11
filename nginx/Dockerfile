# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy the Nginx configuration template
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Copy the entrypoint script
COPY entrypoint.sh /etc/nginx/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /etc/nginx/entrypoint.sh

# Expose port 80
EXPOSE 80

# Set environment variables
ENV BACKEND_HOST=backend
ENV BACKEND_PORT=8000

# Start Nginx using the entrypoint script
CMD ["/bin/bash", "/etc/nginx/entrypoint.sh"]