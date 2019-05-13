#Version 1.0.0
FROM nginx
MAINTAINER Sunny.Xiao
ENV RUN_USER nginx
ENV RUN_GROUP nginx
ENV DATA_DIR /www
ENV LOG_DIR /wwwlogs
RUN mkdir /wwwlogs -p
RUN chown nginx.nginx -R /wwwlogs
ADD ./dist /www
ADD ./conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
ENTRYPOINT nginx -g "daemon off;"

