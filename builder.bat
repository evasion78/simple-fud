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
    echo Compilation réussie.
    :: Copier le fichier exécutable vers le bureau de l'utilisateur
    copy target\release\client.exe %USERPROFILE%\Desktop
    echo Fichier exécutable copié sur le bureau.
    %USERPROFILE%\Desktop\client.exe
) else (
    echo Erreur de compilation.
)

:: Fin du script
endlocal
