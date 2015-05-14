# GCC-auto-install-apps

####Install https://chocolatey.org/ first then you can install the GCC Chocolatey packages

####Powershell Install Command:

`iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/GraceInAuburn/GCC-auto-install-apps/master/Install.ps1'))`

####CMD Install Command:

`@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/GraceInAuburn/GCC-auto-install-apps/master/Install.ps1'))`

##### Enable Installation without having to confirm:
`choco feature enable -n allowGlobalConfirmation`
