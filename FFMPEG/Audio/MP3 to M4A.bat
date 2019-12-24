@ECHO OFF

FOR %%f IN (*.mp3) DO (
echo Converting: %%f
ffmpeg -i "%%f" -ab 256k -c:v copy -map_metadata 0 "%%~nf.m4a"
)
del *.mp3

echo Finished

PAUSE