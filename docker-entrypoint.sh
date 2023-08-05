#!/bin/bash

echo 'Checking for YT-DLP Updates.'

yt-dlp -U

echo "Env: $MODE"

echo 'Checking script to run.'

if [ $MODE == "Channels" ]
then
    echo "Running Channels.sh"
    sh /opt/app/Channels/Channels.sh
    bash /opt/app/postprocess.sh
fi

if [ $MODE == "Playlists" ]
then
    echo "Running Playlists.sh"
    sh /opt/app/Playlists/Playlists.sh
    bash /opt/app/postprocess-move-only.sh
fi

if [ $MODE == "Unique" ]
then
    echo "Running Unique.sh"
    sh /opt/app/Unique/Unique.sh
    bash /opt/app/postprocess-move-only.sh
fi
