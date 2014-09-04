try {
	Update-ExecutionPolicy Unrestricted
	Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions
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
	choco install javaruntime
	choco install jdk8
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
	pip install virtualenv
	Rename-Item C:\tools Tools # OCD
	cinst Microsoft-Hyper-V-All -source windowsFeatures
	Install-ChocolateyPinnedTaskBarItem "$env:windir\system32\mstsc.exe"
	Install-ChocolateyPinnedTaskBarItem "$env:programfiles\console\console.exe"
    Write-ChocolateySuccess 'Build'
} catch {
  Write-ChocolateyFailure 'Build' $($_.Exception.Message)
  throw
}

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