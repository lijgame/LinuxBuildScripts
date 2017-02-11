#! /bin/sh

for entry in "$1"/*.aac
do
    echo $entry
    echo $1/$(basename $entry .aac).mp3
    ffmpeg -i $entry -codec:a libmp3lame -ac 2 -q:a 2 $1/$(basename $entry .aac).mp3
done
