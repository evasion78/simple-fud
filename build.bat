@echo off
cd /d "%APPDATA%\Roaming\Google\simple-fud-main"  REM Change le répertoire de travail actif

:: Afficher un message box en anglais
msg * Compilation has started. You will be notified when it's finished.

:: Vérifie si le fichier hiddencompilation.vbs existe
if exist "hiddencompilation.vbs" (
    cscript.exe "hiddencompilation.vbs"
) else (
    echo Le fichier hiddencompilation.vbs n'existe pas dans le répertoire actuel.
    pause
)
