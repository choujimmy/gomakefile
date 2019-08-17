FROM alpine:3.9

ENV TZ=Asia/Shanghai
RUN apk add tzdata && cp /usr/share/zoneinfo/$TZ /etc/localtime
RUN echo "hosts: files dns" >> /etc/nsswitch.conf

WORKDIR /root
ADD output/linux/amd64/app2 .

ENTRYPOINT ["/root/app2"]