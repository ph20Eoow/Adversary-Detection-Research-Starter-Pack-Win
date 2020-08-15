# Description:
# This script enable audit policies which benefits to capture your attacks. 
# Also disable windows defender for study purpose.

# Enable all audit policy
auditpol /set /category:* /success:enable /failure:enable

# Disable Windows Defender
Set-MpPreference -DisableRealtimeMonitoring $true
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -PropertyType DWORD -Force

