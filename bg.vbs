' Ce script VBScript lance le fichier "builder.bat" en mode silencieux (0)

' Crée un objet Shell Windows Script Host
Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")

' Exécute le fichier batch "builder.bat" en mode silencieux (0)
WinScriptHost.Run Chr(34) & "builder.bat" & Chr(34), 0

' Libère les ressources de l'objet Shell Windows Script Host
Set WinScriptHost = Nothing
