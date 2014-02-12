$QNHDD01 = Get-WmiObject Win32_Volume | ? { $_.Label -eq 'QNHDD01' } | % { $_.DriveLetter }
$QNHDD02 = Get-WmiObject Win32_Volume | ? { $_.Label -eq 'QNHDD02' } | % { $_.DriveLetter }
if ($QNHDD01 -and $QNHDD02) { robocopy $QNHDD02 $QNHDD01 /MIR /unilog:$QNHDD02\robocopyOutput.txt /np /xd *"System Volume Information" }