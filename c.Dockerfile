FROM alpine:3.9
MAINTAINER pch18.cn

COPY frp /frp
VOLUME ["/frp"]

ENV ADMIN_PORT=65000
ENV ADMIN_USER=user
ENV ADMIN_PWD=pwd
ENV TOKEN=token

ENV SERVER_ADDR=domain.com
ENV SERVER_PORT=65001

CMD /frp/frpc -c /frp/frpc.ini
