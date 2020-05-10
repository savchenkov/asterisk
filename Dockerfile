FROM alpine:3.7
RUN apk update \
    && apk upgrade \
    && apk add --no-cache busybox \
		asterisk \
		asterisk-sample-config \
		asterisk-sounds-en \
		asterisk-sounds-moh
CMD ["/usr/sbin/asterisk", "-c", "-ddd", "-f", "-vvv"]