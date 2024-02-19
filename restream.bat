@echo off
@ffmpeg -hide_banner -i "http://icecast.vgtrk.cdnvideo.ru/unost_aac_64kbps" -c:a aac -b:a 64k -ac 2 -ar 48000 -f flv "$RTMP_URL/$STREAM_KEY"

