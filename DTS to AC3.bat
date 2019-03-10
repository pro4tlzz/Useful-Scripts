@ECHO OFF

FOR %%f IN (*.dts) DO (
echo Converting: %%f
ffmpeg -i "%%f" -ab 320k -map_metadata 0 "%%~nf.ac3"
)

echo Finished

PAUSE