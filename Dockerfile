FROM alpine
MAINTAINER EgoFelix <docker@egofelix.de>

# Install packages
RUN apk --no-cache add samba &&
    addgroup -S smb && \
    adduser -S -D -H -h /tmp -s /sbin/nologin -G smb -g 'Samba User' smbuser

ENTRYPOINT ["/usr/sbin/smbd", "-FS", "--no-process-group"]
