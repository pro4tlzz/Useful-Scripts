@ECHO OFF

FOR %%f IN (*.mp4) DO (
echo Converting: %%f
ffmpeg -i "%%f" -vf scale=2560:1440 test.mp4
)

echo Finished

PAUSE