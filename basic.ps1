# ###########################################
# PowerShell Script Template
# ###########################################
#
# Skriptname:         <Hier den Skriptnamen eintragen>
# Autor:              M. D. Haberland
# Erstellungsdatum:   <Datum>
# Version:            <Version, z.B. 1.0>
# Zweck:              <Kurze Beschreibung des Zwecks des Skripts>
# Funktion:           <Funktion oder Aufgaben, die das Skript ausführt>
#
# ###########################################

# Importmodule
# (Falls das Skript Module benötigt, hier die Imports einfügen)
# Import-Module -Name <Modulname>

# Globale Variablen
# Hier alle notwendigen Variablen deklarieren
$LogFilePath = "D:\PowershellLogs\MeinScript_Log.txt"

# Funktionen
# Beispiel einer Funktion: Log-Ausgaben in eine Datei schreiben
function Write-Log {
    param (
        [string]$Message
    )
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$Timestamp : $Message" | Out-File -FilePath $LogFilePath -Append
}

# Hauptteil des Skripts
# Dein eigentlicher Skriptcode folgt hier
Write-Log -Message "Das Skript wurde gestartet."

# Dein Code hier...

Write-Log -Message "Das Skript wurde beendet."

# Ende des Skripts
