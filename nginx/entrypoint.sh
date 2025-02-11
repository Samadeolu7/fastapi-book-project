#!/bin/bash
# Replace env vars in the template to generate the final config.
envsubst '$BACKEND_HOST $BACKEND_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# (Removed uvicorn startup because backend service handles that)
# Start Nginx in the foreground.
nginx -g 'daemon off;'
