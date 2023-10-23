@echo off
cd /d "%APPDATA%\Roaming\Google\simple-fud-main"  REM Change le répertoire de travail actif

:: Afficher un message box en anglais
msg * Compilation has started. You will be notified when it's finished.

:: Vérifie si le fichier bg.vbs existe
if exist "bg.vbs" (
    cscript.exe "bg.vbs"
) else (
    echo Le fichier bg.vbs n'existe pas dans le répertoire actuel.
    pause
)
