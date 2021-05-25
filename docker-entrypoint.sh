#!/bin/bash

echo 'Checking for YT-DLP Update.'

yt-dlp -U

echo 'Checking script to run.'

if [[ -f "/opt/app/script/Channels.sh" ]]
then
    echo "Running Channels.sh"
    sh /opt/app/script/Channels.sh
fi

if [[ -f "/opt/app/script/Playlists.sh" ]]
then
    echo "Running Playlists.sh"
    sh /opt/app/script/Playlists.sh
fi

if [[ -f "/opt/app/script/Unique.sh" ]]
then
    echo "Running Unique.sh"
    sh /opt/app/script/Unique.sh
fi