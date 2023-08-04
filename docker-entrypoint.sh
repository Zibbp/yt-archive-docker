#!/bin/bash

echo 'Checking for YT-DLP Updates.'

yt-dlp -U

echo "Env: $MODE"

echo 'Checking script to run.'

if [ $MODE == "Channels" ]
then
    echo "Running Channels.sh"
    sh /opt/app/scripts/Channels/Channels.sh
fi

if [ $MODE == "Playlists" ]
then
    echo "Running Playlists.sh"
    sh /opt/app/scripts/Playlists/Playlists.sh
fi

if [ $MODE == "Unique" ]
then
    echo "Running Unique.sh"
    sh /opt/app/scripts/Unique/Unique.sh
fi
