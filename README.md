# YT-Archive-Docker

Extremely simple docker container to run [TheFrenchGhosty's Archive Scripts](https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection). The YouTube downloader, YT-DLP, checks for updates on each run.

In the script mount folder three files need to be present.

1. docker-entrypoint.sh (Needs to have execute permissions)
2. The archive script (Channels.sh, Playlists.sh, Unique.sh)
3. The source .txt file (Source - Channels.txt)

#### Docker Command

Use host cron to run every night to auto start container.

```
docker run -d --name=yt-archive-channels -v /home/user/yt-archive/channels:/opt/app/script zibbp/yt-archive
```

#### Edits to Ghost Archive Scripts

In each script I remove the 30 day requirement for downloading. This disallows archiving videos newer than 30 days as YouTube is slow at creating the absolute highest quality encoding. This is not a big deal for me so I remove the following from the end of each script.

```
--datebefore "$(date --date="30 days ago" +%Y%m%d)"
```

Subtitles can be downloaded as a `vtt` file along side the video using the following parameters.

```
--sub-langs en --embed-subs --sub-format vtt --write-auto-subs --write-subs
```
