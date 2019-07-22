@ECHO OFF

FOR %%f IN (*.MP4) DO (
echo Converting: %%f
ffmpeg -i "%%f" "%%~nf.mp3"
)

echo Finished

PAUSE
