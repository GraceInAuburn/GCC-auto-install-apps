$source = "https://raw.githubusercontent.com/GraceInAuburn/GCC-auto-install-apps/master/packages.config"
$Filename = [System.IO.Path]::GetFileName($source)
$dest = "$env:TEMP\$Filename"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source, $dest)

# $cinstlocation = "$env:ProgramData\chocolatey\bin\cinst.exe"
Start-Process C:\ProgramData\chocolatey\bin\cinst.exe -FilePath $dest -ArgumentList -y
