@echo off
@ffmpeg -hide_banner -f dshow -i audio="����䮭 (Realtek(R) Audio)" -c:a aac -b:a 128k -ac 2 -ar 44100 -f flv "$RTMP_URL/$STREAM_KEY"