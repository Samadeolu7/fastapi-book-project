FROM nginx:stable-alpine

RUN apk update && apk add bash

COPY nginx.conf /etc/nginx/nginx.conf.template

COPY entrypoint.sh /etc/nginx/entrypoint.sh

RUN chmod +x /etc/nginx/entrypoint.sh

EXPOSE 80

CMD ["/bin/bash", "/etc/nginx/entrypoint.sh"]
