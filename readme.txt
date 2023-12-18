concat:
foreach ($i in Get-ChildItem .\*.mp3) {echo "file '$i'" >> list.txt}
ffmpeg -f concat -safe 0 -i list.txt -c copy out.mp3

convert:
ffmpeg -i in.mp3 -vn -ar 44100 -ac 2 -ab 192 -f mp3 out.mp3

extract:
ffmpeg -i in.mp4 -vn -acodec copy out.m4a

cut:
ffmpeg -i in.mp4 -ss 00:00:01 -t 00:00:22 -vcodec copy -acodec copy out.mp4

mass rename:
dir | rename-item -NewName {$_.name -replace "search","replace"}
