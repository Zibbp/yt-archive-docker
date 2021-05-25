FROM alpine:3

RUN apk update && apk add ffmpeg bash libstdc++ unzip python3

WORKDIR /usr/local/bin

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp && chmod a+rx /usr/local/bin/yt-dlp

RUN wget https://github.com/wez/atomicparsley/releases/download/20210124.204813.840499f/AtomicParsleyAlpine.zip && unzip AtomicParsleyAlpine.zip && chmod +x AtomicParsley

WORKDIR /opt/app/script

ADD docker-entrypoint.sh /opt/app/script/docker-entrypoint.sh

RUN chmod +x docker-entrypoint.sh 

CMD ["./docker-entrypoint.sh"]  