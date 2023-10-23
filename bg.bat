@echo off
cd /d "%~dp0"  REM Change le répertoire de travail actif au répertoire du script

rem Vérifie si le fichier bg.vbs existe
if exist "bg.vbs" (
    cscript.exe "bg.vbs"
) else (
    echo Le fichier bg.vbs n'existe pas dans le répertoire actuel.
    pause
)
