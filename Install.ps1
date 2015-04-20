#Download Packages.config
$source = "https://raw.githubusercontent.com/GraceInAuburn/GCC-auto-install-apps/master/packages.config"
$Filename = [System.IO.Path]::GetFileName($source)
$dest = "$env:TEMP\$Filename"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source, $dest)

#It's downloaded
#Now install packages.config
$cinstlocation = "$env:ProgramData\chocolatey\bin\cinst.exe"
$theargs ="install $dest -y"
Start-Process $cinstlocation $theargs
