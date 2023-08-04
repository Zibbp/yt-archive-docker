# YT-Archive-Docker

Utilizes [TheFrenchGhosty](https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection)'s YouTube archive scripts using the popular youtube-dl fork, [yt-dlp](https://github.com/yt-dlp/yt-dlp).

### What It Does

The containers either archive a Channel, Playlists, or Unique videos. The archiving process consists of downloading the video's metadata/information, description, comments, thumbnail, subtitles, and the highest quality version of that video.

### Information

Three containers are created one for Channels, Playlists, and Unique videos. Each container runs the specified script located under /container-scripts. In each folder under /container-scripts is a source text file which is where YouTube urls are inserted for downloading.

Once the videos are downloaded, a postprocess script is run which first runs the `detox` utility, removing all spaces and weird characters from the file paths. Next the archived videos are moved over to my NAS. Finally, after the videos are copied over the local files are deleted.

### Getting Started

Use the `docker-compose.yml` file to create the containers.

### Automating

Use cron on the host server to execute `docker start yt-archive-MODE` on a schedule you see fit.
