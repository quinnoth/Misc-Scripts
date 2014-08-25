# ----------------------------
# --Install Chocolatey First--
# ----------------------------
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
# ----------------------------------------------------
# --Use Chocolatey to Install all Necessary Software--
# ----------------------------------------------------
choco install 7zip
choco install 7zip.commandline
choco install adobereader
choco install autohotkey
choco install ccleaner
choco install dropbox
choco install conemu
choco install f.lux
choco install git
choco install github
choco install GoogleChrome
choco install hg
choco install javaruntime
choco install jdk8
choco install keepass
choco install notepadplusplus
choco install paint.net
choco install putty
choco install python
choco install pip
choco install qbittorrent
choco install sublimetext3
choco install sysinternals
choco install truecrypt
choco install vim
choco install winscp
# -------------------------------
# --Install the Hyper-V Feature--
# -------------------------------
Get-WindowsOptionalFeature -Online -FeatureName *hyper-v*all  | Enable-WindowsOptionalFeature –Online
