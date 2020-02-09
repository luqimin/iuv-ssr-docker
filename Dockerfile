FROM node:lts-alpine

LABEL maintainer="qilu@163.com"

RUN apk --no-cache add rsync openssh tzdata bash curl tar libc6-compat

USER root

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    npm -g config set user root && npm i -g @iuv/cli @iuv/ssr-kit && npm cache clean --force

CMD i -V
