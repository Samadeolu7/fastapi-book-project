#!/bin/bash

# Print environment variables for debugging
echo "BACKEND_HOST: $BACKEND_HOST"
echo "BACKEND_PORT: $BACKEND_PORT"

envsubst '${BACKEND_HOST} ${BACKEND_PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Print the generated Nginx configuration for debugging
cat /etc/nginx/nginx.conf

# Start Nginx
nginx -g 'daemon off;'