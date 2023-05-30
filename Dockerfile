FROM alpine:latest

WORKDIR /root

COPY cleanup.sh .

RUN chmod +x cleanup.sh

ENV MINUTES_OLD=1440

CMD ["/bin/sh", "cleanup.sh"]