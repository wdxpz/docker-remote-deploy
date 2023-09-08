FROM docker:stable

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk --no-cache add openssh-client docker-compose

COPY docker-entrypoint.sh /docker-entrypoint.sh

#ENTRYPOINT ["/docker-entrypoint.sh"]
