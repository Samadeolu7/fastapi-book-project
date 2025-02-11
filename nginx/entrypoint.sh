#!/bin/bash

# Replace environment variables in the Nginx configuration file
envsubst '$BACKEND_HOST $BACKEND_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start uvicorn in the background
uvicorn main:app --host 0.0.0.0 --port 8000 &

# Start Nginx
nginx -g 'daemon off;'
