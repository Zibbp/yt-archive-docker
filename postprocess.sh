#!/bin/bash

ls -lah /opt/app/output/*/*

echo "Running detox on archived videos."

detox -r /opt/app/output/**

# remove periods (they cause issues)
for folder in /opt/app/output/*/*; do mv -- "$folder" "$(echo $folder | tr '.' '_')"; done

ls -lah /opt/app/output/*/*

echo "Moving files to NAS."

rsync -avhP /opt/app/output/* /mnt/videos

echo "Deleting local files."

rm -rf /opt/app/output/*

echo "Done!"
