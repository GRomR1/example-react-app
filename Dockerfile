# FROM    nginx:1.21-alpine

# RUN     sed -i "s/sendfile        on/sendfile        off/g" /etc/nginx/nginx.conf && \
#         sed -i "s/user  nginx/# user  nginx/g" /etc/nginx/nginx.conf

# # fix permissions of files
# RUN     touch /var/run/nginx.pid && \
#     chown -R nginx: /var/cache/nginx \
#     /var/log/nginx /etc/nginx /var/run/nginx.pid

# ADD --chown=nginx    ./nginx/default.conf /etc/nginx/conf.d/
# ADD --chown=nginx    ./build /app
# # COPY    ./src/assets /app/assets

# USER    nginx
# ## uid=101(nginx) gid=101(nginx) groups=101(nginx)

###################
# ref: https://github.com/bitnami/bitnami-docker-nginx
FROM bitnami/nginx:1.21

USER 0
COPY ./nginx/default.conf /opt/bitnami/nginx/conf/bitnami/
COPY ./build /app
USER 1001
EXPOSE 8080

####################
# FROM pierrezemb/gostatic
# COPY ./build /app

# USER appuser
# EXPOSE 80
# CMD ["-path", "/app", "-port", "80", "-enable-health", "-enable-logging"]