$source = "https://github.com/GraceInAuburn/GCC-auto-install-apps/blob/master/packages.config"
$Filename = [System.IO.Path]::GetFileName($source)
$dest = "$env:TEMP\$Filename"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source, $dest)

choco install $dest -y
