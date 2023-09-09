<<<<<<< HEAD
FROM docker:20.10.11
#FROM docker:stable

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk --no-cache add openssh-client docker-compose
=======
FROM docker:latest

RUN apk --no-cache add openssh-client
>>>>>>> a9b9d3a20350f92ab3554de790008696e7e61091

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
