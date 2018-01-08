:: Permanently delete large directories of files.
:: This CANNOT be undone.
:: @ECHO OFF
SET directory=%1% 
del /f/s/q %directory% > nul
rmdir /s/q %directory%



