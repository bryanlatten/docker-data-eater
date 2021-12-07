FROM alpine:3.15

ENV BLOCKS=1000000
ENV BYTES="128M"
ENV WAIT_TIME=1

ENV INPUT=/dev/zero
ENV OUTPUT_PATH=/tmp/

RUN apk update && apk add bash
COPY ./command.sh .

CMD bash command.sh
