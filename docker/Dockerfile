#Version 1.0.0
FROM nginx
MAINTAINER Sunny.Xiao
ENV RUN_USER nginx
ENV RUN_GROUP nginx
ENV DATA_DIR /www
ENV LOG_DIR /wwwlogs
ENV API_GATEWAY_URL "http://apigateway-url/api"
RUN mkdir /wwwlogs -p
RUN chown nginx.nginx -R /wwwlogs
ADD nginx.conf /etc/nginx/nginx.conf.template
EXPOSE 80
CMD envsubst '$API_GATEWAY_URL' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'

