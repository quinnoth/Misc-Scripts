For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set currentdate=%%c-%%a-%%b)
7za a -t7z -mx0 \\<share>\Images\WindowsImageBackup\(Machine)-%currentdate%.7zip \\<share>\Images\WindowsImageBackup\(Machine) -p<password here>

rmdir /S /Q \\<share>\Images\WindowsImageBackup\(Machine)