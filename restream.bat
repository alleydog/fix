@echo off
set SRC_URL=http://icecast.vgtrk.cdnvideo.ru/unost_aac_32kbps
set a=32k
set ac=1
set ar=48000
set RTMP_URL=rtmps://dc4-1.rtmp.t.me/s/
set STREAM_KEY=0987654321:mnbvcxzlkjhgfdsapoiuytrewq
ffmpeg -hide_banner -i "%SRC_URL%" -c:a aac -b:a %a% -ac %ac% -ar %ar% -f flv "%RTMP_URL%%STREAM_KEY%"
