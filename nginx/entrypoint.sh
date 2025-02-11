#!/bin/bash

# Replace environment variables in the Nginx configuration file
envsubst '${BACKEND_HOST} ${BACKEND_PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
nginx -g 'daemon off;'
