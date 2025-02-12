#!/bin/bash

envsubst '$BACKEND_HOST $BACKEND_PORT' < /etc/nginx/conf.d/default.conf > /etc/nginx/nginx.conf

nginx -g 'daemon off;'
