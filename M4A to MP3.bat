@ECHO OFF

FOR %%f IN (*.m4a) DO (
echo Converting: %%f
ffmpeg -i "%%f" -ab 320k -map_metadata 0 "%%~nf.mp3"
)

echo Finished

PAUSE