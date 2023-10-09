FROM nginxinc/nginx-unprivileged:1-alpine

LABEL maintainer="Raj Solutions"

COPY /mysite /etc/nginx/mysite

COPY default.conf /etc/nginx/conf.d/default.conf

# USER root

# RUN touch /etc/nginx/conf.d/default.conf
# RUN chown nginx:nginx /etc/nginx/conf.d/default.conf

# COPY ./docker-entrypoint.sh /docker-entrypoint.sh
# RUN chmod +x /docker-entrypoint.sh

# USER nginx

# CMD ["/docker-entrypoint.sh"]
