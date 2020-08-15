# Description
# This script automate the Sysmon installation with SwiftOnSecurity configuration.

# Download Sysmon 
Set-Location "C:\"
$sysmonURL = "https://download.sysinternals.com/files/Sysmon.zip"
Invoke-WebRequest -Uri $sysmonURL -UseBasicParsing -OutFile "Sysmon.zip"
Expand-Archive Sysmon.zip -DestinationPath C:\Sysmon
Remove-Item Sysmon.zip

# Download SwiftOnSecurity
$sysmonConfigURL = "https://github.com/SwiftOnSecurity/sysmon-config/archive/master.zip"
Invoke-WebRequest -Uri $sysmonConfigURL -UseBasicParsing -OutFile "sysmonConfig.zip"
Expand-Archive sysmonConfig.zip -DestinationPath C:\Sysmon 
Remove-Item sysmonConfig.zip

# Install Sysmon with SwfitOnSecurity Config
Start-Process -NoNewWindow -FilePath "C:\Sysmon\Sysmon64" -ArgumentList "-accepteula -i C:\Sysmon\sysmon-config-master\sysmonconfig-export.xml"

