FROM alpine:3

LABEL maintainer="Zibbp"

RUN apk --no-cache add ffmpeg bash libstdc++ unzip python3 mutagen bash curl rsync

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    detox

WORKDIR /usr/local/bin

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp && chmod a+rx /usr/local/bin/yt-dlp

WORKDIR /opt/app/

COPY postprocess.sh /opt/app/postprocess.sh

COPY docker-entrypoint.sh /opt/app/docker-entrypoint.sh

CMD ["./docker-entrypoint.sh"]
