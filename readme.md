# Adversary Research Starter Pack

This project collects Powershell script which help to simplify the observant machine setup, such as enable audit policies, installing sysmon and maybe more in the future.

The scripts are intended for researcher who want to hunt their own adversary techniques on a Windows endpoint only. The script was tested on Windows 10 Pro (64-Bit) virtual machine. I only recommend on using this script for researching purpose.

# Execution

Enable execution of PowerShell scripts:
``` 
PS> Set-ExecutionPolicy Unrestricted -Scope CurrentUser
```
Unblock PowerShell scripts and modules within this directory:
```
PS> ls -Recurse *.ps*1 | Unblock-File
```

# Usage
1. Edit the scripts to fit your need.
2. Run the scripts you want to apply from a PowerShell with administrator privileges (Explorer Files > Open Windows PowerShell > Open Windows PowerShell as administrator)
3. Run Mode-Observer.ps1
4. Run Sysmon-Installation.ps1
5. You good to go.