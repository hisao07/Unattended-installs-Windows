if "%PACKER_BUILDER_TYPE:~0,6%"=="hyperv" (
  echo "Skip compact steps in Hyper-V build."
  goto :eof
)
if not exist "C:\Windows\Temp\7z1900-x64.msi" (
	powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.7-zip.org/a/7z1900-x64.msi', 'C:\Windows\Temp\7z1900-x64.msi')" <NUL
)
msiexec /qb /i C:\Windows\Temp\7z1900-x64.msi
msiexec /qb /x C:\Windows\Temp\7z1900-x64.msi

net stop wuauserv
rmdir /S /Q C:\Windows\SoftwareDistribution\Download
mkdir C:\Windows\SoftwareDistribution\Download
net start wuauserv
