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
# --------------------
# --Some Other Stuff--
# --------------------
pip install virtualenv
Rename-Item C:\tools Tools # OCD
# -------------------------------
# --Install the Hyper-V Feature--
# -------------------------------
Get-WindowsOptionalFeature -Online -FeatureName *hyper-v*all  | Enable-WindowsOptionalFeature "Online"
# ---------------------------
# --Post-Installation Tasks--
# ---------------------------
# Install NetBeans Full edition to get JavaCard
# Install cmder as the choco package doesn't work and is out of date
# Install Package Control for Sublime Text: import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
# Using Package Control, install the following:
    # PowerShell
    # SideBarEnhancements
    # SublimeREPL
    # SublimeCodeIntel
    # Trailing Spaces