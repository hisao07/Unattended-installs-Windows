:: Ensure C:\Chocolatey\bin is on the path
set /p PATH=%PATH%;C:\ProgramData\chocolatey\
echo %PATH%

:: Install all the things; for example:
choco install /y 7zip
choco install /y notepadplusplus
choco install /y vscode
choco install /y dnspy
choco install /y putty
choco install /y processhacker
choco install /y winscp
choco install /y wireshark
choco install /y firefox
choco install /y googlechrome
choco install /y python3
choco install /y sysinternals
choco install /y treesizefree
:: choco install /y office365proplus
