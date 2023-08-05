#!/bin/bash

echo "Moving files to NAS."

rsync -avhP /opt/app/output/* /mnt/videos

echo "Deleting local files."

rm -rf /opt/app/output/*

echo "Done!"
