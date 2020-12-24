FROM alpine
MAINTAINER EgoFelix <docker@egofelix.de>

# Install packages
RUN apk --no-cache add samba

ENTRYPOINT ["/usr/sbin/smbd", "-FS", "--no-process-group"]
