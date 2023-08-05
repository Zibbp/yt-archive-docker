# YT-Archive-Docker

Utilizes [TheFrenchGhosty](https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection)'s YouTube archive scripts using the popular youtube-dl fork, [yt-dlp](https://github.com/yt-dlp/yt-dlp).

### What It Does

The containers either archive a Channel, Playlists, or Unique videos. The archiving process consists of downloading the video's metadata/information, description, comments, thumbnail, subtitles, and the highest quality version of that video.

### Information

Three containers are created one for Channels, Playlists, and Unique videos. Each container runs the specified script located under /container-scripts. In each folder under /container-scripts is a source text file which is where YouTube urls are inserted for downloading.

Each container type (channels, playlists, and unique) needs two folders.

- type-data
- type-output

The data folder for each type needs to contain `source.txt` file. In this file links to channels, playlists, and videos are placed. In the same data folder, yt-dlp will create an `archive.log` file which will store all downloaded video ids.

The output folder is mounted to the host incase the files cannot be copied to the final destination. `yt-dlp` adds the video id to the `archive.log` as soon as it's downloaded. To prevent the offchance that the container restarts and looses all downlaoded videos, the folder is mounted to the host.

### Getting Started

Use the `docker-compose.yml` file to create the containers.

### Automating

Use cron on the host server to execute `docker start yt-archive-MODE` on a schedule you see fit.
