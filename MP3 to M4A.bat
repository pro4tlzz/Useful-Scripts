@ECHO OFF

FOR %%f IN (*.mp3) DO (
echo Converting: %%f
ffmpeg -i "%%f" -ab 320k -map_metadata 0 "%%~nf.m4a"
)

echo Finished

PAUSE