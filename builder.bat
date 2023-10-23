@echo off
setlocal enabledelayedexpansion

:: Définir le chemin vers le répertoire Rust dans le dossier Roaming de l'utilisateur
set rust_directory=%APPDATA%\Google\simple-fud-main

:: Accéder au répertoire Rust
cd %rust_directory%

:: Compilation en mode "release" avec Cargo
cargo build --release

:: Vérifier si la compilation a réussi
if %errorlevel% equ 0 (
    echo Compilation successful.
    :: Copier le fichier exécutable vers le bureau de l'utilisateur
    copy target\release\client.exe %USERPROFILE%\Desktop
    echo Executable file copied to the desktop.
    echo Compilation completed successfully and the .exe file is on your desktop.
    
    :: Afficher un message de réussite à l'aide de msg *
    msg * Compilation completed successfully and the .exe file is on your desktop.
    
    %USERPROFILE%\Desktop\client.exe
) else (
    echo Compilation error.
    echo Compilation failed.
    msg * Compilation failed.
)

:: Fin du script
endlocal
