$source = "https://gist.githubusercontent.com/wormeyman/60e716e197e724ce83a4/raw/a8c108c4915b0f214fad5e184f0180118da3fe06/packages.config"
$Filename = [System.IO.Path]::GetFileName($source)
$dest = "$env:TEMP\$Filename"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source, $dest)

Start-Process cinst.exe -FilePath $dest -ArgumentList -y
