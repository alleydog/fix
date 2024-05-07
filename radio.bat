@echo off
set SRC_URL=http://icecast.vgtrk.cdnvideo.ru/unost_aac_32kbps
set RTMP_URL=rtmps://dc4-1.rtmp.t.me/s/
set STREAM_KEY=0123456789:qwertyuiopasdfghjklzxc
@ffmpeg -hide_banner -i "%SRC_URL%" -c:a aac -b:a 32k -ac 2 -ar 48000 -f flv "%RTMP_URL%%STREAM_KEY%"
