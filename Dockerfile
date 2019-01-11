FROM alpine:latest
RUN apk add nginx curl vim
COPY nginx.conf /etc/nginx/nginx.conf
# remove any default config
RUN rm -rf /etc/nginx/conf.d/*
RUN mkdir /run/nginx
COPY ./run.sh /etc/nginx/run.sh
CMD /etc/nginx/run.sh

