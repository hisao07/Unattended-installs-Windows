$filename = "7z2200-x64.msi";
$fileURL = "https://www.7-zip.org/a/";
$InstallerMSI = ${env:TEMP} + "\" + ${filename};
$fullURL = ${fileURL} + ${filename}
Invoke-WebRequest $fullURL -OutFile $InstallerMSI; 
msiexec /i $InstallerMSI /qb; 
Remove-Item $InstallerMSI;
