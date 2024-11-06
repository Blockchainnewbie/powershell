# ###############################################################
#                     PowerShell Script Template                 #
# ###############################################################
#
# Skriptname:         String Manipulation Demo
# Autor:              M. D. Haberland
# Erstellungsdatum:   <Datum>
# Version:            1.0
# Zweck:              Demonstration verschiedener String-Manipulationstechniken
# Funktion:           Zeigt die wichtigsten String-Manipulationstechniken in PowerShell
#
# ###############################################################

# ###############################################################
# Parameter                                                   #
# ###############################################################
# (Falls das Skript Parameter benötigt, hier definieren)

# ###############################################################
# Synopsis                                                    #
# ###############################################################
# Dieses Skript zeigt die wichtigsten String-Manipulationstechniken in PowerShell.

# ###############################################################
# Description                                                 #
# ###############################################################
# Das Skript demonstriert die Verwendung von grundlegenden String-Manipulationstechniken,
# einschließlich Längenabfrage, Substring, Split, Replace, ToUpper, und ToLower.

# ###############################################################
# Importmodule                                                 #
# ###############################################################
# (Falls das Skript Module benötigt, hier die Imports einfügen)

# ###############################################################
# Globale Variablen                                            #
# ###############################################################
# Hier alle notwendigen Variablen deklarieren
$LogFilePath = "D:\PowershellLogs\StringManipulation_Log.txt"

# ###############################################################
# Funktionen                                                   #
# ###############################################################
# Beispiel einer Funktion: Log-Ausgaben in eine Datei schreiben
function Write-Log {
    param (
        [string]$Message
    )
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$Timestamp : $Message" | Out-File -FilePath $LogFilePath -Append -Force
}

######## Hauptteil des Skripts ########
Write-Log -Message "Das Skript wurde gestartet."

# 1. Demonstration der String-Manipulationstechniken
$string = "Hello PowerShell World"
Write-Output "1. Originaler String: $string"
Write-Output ""

# 2. Längenabfrage
$length = $string.Length
Write-Output "2. Länge des Strings: $length"
Write-Output ""

# 3. Substring
$substring = $string.Substring(6, 10)
Write-Output "3. Substring (Index 6, Länge 10): $substring"
Write-Output ""

# 4. Teilstring finden (IndexOf)
$index = $string.IndexOf("PowerShell")
Write-Output "4. Index von 'PowerShell': $index"
Write-Output ""

# 5. String ersetzen (Replace)
$newString = $string.Replace("PowerShell", "PowerUser")
Write-Output "5. String nach Ersetzen: $newString"
Write-Output ""

# 6. Trimmen (Trim)
$trimmedString = "   Trim me!   ".Trim()
Write-Output "6. Getrimmter String: '$trimmedString'"
Write-Output ""

# 7. Splitten (Split)
$splitArray = $string.Split(" ")
Write-Output "7. Gesplitteter String: $($splitArray -join ', ')"
Write-Output ""

# 8. In Großbuchstaben umwandeln (ToUpper)
$upperString = $string.ToUpper()
Write-Output "8. String in Großbuchstaben: $upperString"
Write-Output ""

# 9. In Kleinbuchstaben umwandeln (ToLower)
$lowerString = $string.ToLower()
Write-Output "9. String in Kleinbuchstaben: $lowerString"
Write-Output ""

# 10. String formatieren (-f)
$name = "Max"
$formattedString = "Hallo, {0}!" -f $name
Write-Output "10. Formatierter String: $formattedString"
Write-Output ""

# 11. Prüfen, ob Teilstring enthalten ist (Contains)
$contains = $string.Contains("Hello")
Write-Output "11. Enthält der String 'Hello'?: $contains"
Write-Output ""

Write-Log -Message "Das Skript wurde beendet."
######## Ende des Skripts ########
