#Requires -RunAsAdministrator

Write-Host "[+]Installing Chocolatey package manager"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "[+]Installing packages"
choco install wireguard rssguard ghidra python3 golang obsidian vscodium winfetch greenshot windows-terminal powertoys obs-studio -y

Write-Host "[+]Enabling WSL V1, reboot and installation of distro still needed."
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
