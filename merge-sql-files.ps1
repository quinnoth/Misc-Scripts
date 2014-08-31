$FileList = (ls *.sql).Name

foreach ($FileName in $FileList)
{
	Get-Content $FileName | Out-File "build.sql" -Append
}