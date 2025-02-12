#!/bin/bash

envsubst '$BACKEND_HOST $BACKEND_PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
