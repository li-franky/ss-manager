FROM docker.io/shadowsocks/shadowsocks-libev
ENV COMMAND "ss-manager -k 123456 -m aes-256-gcm -t 300 -d 8.8.8.8,8.8.4.4 -u --manager-address 0.0.0.0:6001"

USER root

CMD exec $COMMAND
