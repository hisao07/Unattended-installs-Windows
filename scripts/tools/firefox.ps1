$filename = "firefox-installer.msi";
$fileURL = "https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US";
$InstallerMSI = ${env:TEMP} + "\" + ${filename};
Invoke-WebRequest $fileURL -OutFile $InstallerMSI; 
msiexec /i $InstallerMSI /qb; 
Remove-Item $InstallerMSI;
