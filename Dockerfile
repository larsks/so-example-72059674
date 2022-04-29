FROM docker.io/alpine:latest

RUN apk add --update openssh
RUN passwd -u root
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]
