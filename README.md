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
#
```
youtube-dl -F https://youtu.be/kJnr3V6TANw
```
```
[youtube] kJnr3V6TANw: Downloading webpage
[info] Available formats for kJnr3V6TANw:
format code  extension  resolution note
249          webm       audio only tiny   52k , webm_dash container, opus @ 52k (48000Hz), 47.33MiB
250          webm       audio only tiny   72k , webm_dash container, opus @ 72k (48000Hz), 66.07MiB
140          m4a        audio only tiny  129k , m4a_dash container, mp4a.40.2@129k (44100Hz), 117.42MiB
251          webm       audio only tiny  138k , webm_dash container, opus @138k (48000Hz), 125.70MiB
160          mp4        256x144    144p   46k , mp4_dash container, avc1.4d400c@  46k, 25fps, video only, 42.06MiB
394          mp4        256x144    144p   53k , mp4_dash container, av01.0.00M.08@  53k, 25fps, video only, 48.48MiB
278          webm       256x144    144p   66k , webm_dash container, vp9@  66k, 25fps, video only, 60.11MiB
133          mp4        426x240    240p   75k , mp4_dash container, avc1.4d4015@  75k, 25fps, video only, 68.46MiB
395          mp4        426x240    240p   78k , mp4_dash container, av01.0.00M.08@  78k, 25fps, video only, 71.56MiB
242          webm       426x240    240p  107k , webm_dash container, vp9@ 107k, 25fps, video only, 97.16MiB
134          mp4        640x360    360p  135k , mp4_dash container, avc1.4d401e@ 135k, 25fps, video only, 122.99MiB
396          mp4        640x360    360p  147k , mp4_dash container, av01.0.01M.08@ 147k, 25fps, video only, 133.76MiB
243          webm       640x360    360p  191k , webm_dash container, vp9@ 191k, 25fps, video only, 173.80MiB
135          mp4        854x480    480p  195k , mp4_dash container, avc1.4d401e@ 195k, 25fps, video only, 176.93MiB
397          mp4        854x480    480p  254k , mp4_dash container, av01.0.04M.08@ 254k, 25fps, video only, 230.57MiB
244          webm       854x480    480p  322k , webm_dash container, vp9@ 322k, 25fps, video only, 292.05MiB
136          mp4        1280x720   720p  315k , mp4_dash container, avc1.4d401f@ 315k, 25fps, video only, 286.41MiB
398          mp4        1280x720   720p  490k , mp4_dash container, av01.0.05M.08@ 490k, 25fps, video only, 444.41MiB
247          webm       1280x720   720p  590k , webm_dash container, vp9@ 590k, 25fps, video only, 535.20MiB
399          mp4        1920x1080  1080p  888k , mp4_dash container, av01.0.08M.08@ 888k, 25fps, video only, 806.12MiB
248          webm       1920x1080  1080p 1054k , webm_dash container, vp9@1054k, 25fps, video only, 956.41MiB
137          mp4        1920x1080  1080p 1149k , mp4_dash container, avc1.640028@1149k, 25fps, video only, 1.02GiB
18           mp4        640x360    360p  450k , avc1.42001E, 25fps, mp4a.40.2 (44100Hz), 408.35MiB
22           mp4        1280x720   720p  444k , avc1.64001F, 25fps, mp4a.40.2 (44100Hz) (best)
```
```
youtube-dl -f 140 https://youtu.be/kJnr3V6TANw
```
