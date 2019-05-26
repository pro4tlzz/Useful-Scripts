@ECHO OFF

FOR %%f IN (*.mp4) DO (
echo Converting: %%f
ffmpeg -i "%%f" -vf scale=2560:1440 -c:v libx265 -x265-params lossless=1  "%%~nf.mp4"
)

echo Finished

PAUSE
