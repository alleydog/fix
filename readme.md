YouTube RSS
###
```
https://www.youtube.com/feeds/videos.xml?channel_id=
```
#
Concatination audio files:
###
Windows bat-file:
```
(for %%i in (*.wav) do @echo file '%%i') > mylist.txt
```
Windows Command-line:
```
for %i in (*.wav) do @echo file '%i') > mylist.txt
```
Windows Powershell:
```
foreach ($i in Get-ChildItem .\*.wav) {echo "file '$i'" >> mylist.txt}
```
###
```
ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.wav
```
#
Extraction audio:
```
ffmpeg -i video.mp4 -vn -acodec copy audio.m4a
```
#
Cut:
```
ffmpeg -i video.mp4 -ss 00:00:01 -t 00:00:22 -vcodec copy -acodec copy cut.mp4
```

#
```
dir | rename-item -NewName {$_.name -replace ". "," "}
```
