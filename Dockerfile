FROM nginx:latest

# Copy the Nginx configuration template
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the entrypoint script
COPY entrypoint.sh /etc/nginx/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /etc/nginx/entrypoint.sh

# Expose port 80
EXPOSE 80

# Start Nginx using the entrypoint script
CMD ["/bin/bash", "/etc/nginx/entrypoint.sh"]
