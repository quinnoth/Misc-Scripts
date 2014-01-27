:: ----------------------------
:: --Install Chocolatey First--
:: ----------------------------
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
:: ----------------------------------------------------
:: --Use Chocolatey to Install all Necessary Software--
:: ----------------------------------------------------
cinst MicrosoftSecurityEssentials
cinst git
cinst 7zip
cinst GoogleChrome
cinst javaruntime
cinst ruby
cinst python3
cinst StrawberryPerl
cinst putty
cinst sysinternals
cinst ccleaner
cinst sublimetext2
cinst paint.net
cinst dropbox
cinst skype
cinst winscp
cinst iTunes
cinst uTorrent
cinst truecrypt
cinst f.lux
cinst lastpass
cinst TeraCopy