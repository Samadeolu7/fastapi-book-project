FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /etc/nginx/entrypoint.sh

RUN chmod +x /etc/nginx/entrypoint.sh

EXPOSE 80

CMD ["/bin/bash", "/etc/nginx/entrypoint.sh"]
