@ECHO OFF

FOR %%f IN (*.eac3) DO (
echo Converting: %%f
ffmpeg -i "%%f" -ab 320k -map_metadata 0 "%%~nf.ac3"
)

echo Finished

PAUSE