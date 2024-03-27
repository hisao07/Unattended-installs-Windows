:: Ensure C:\Chocolatey\bin is on the path, machine local and current session
::setx /M path %PATH%;C:\ProgramData\chocolatey\
::set PATH=%PATH%;C:\ProgramData\chocolatey\

:: Install all the things; for example:
choco install /y 7zip
choco install /y notepadplusplus
choco install /y bleachbit
choco install /y vscode
choco install /y visualstudio2022community
choco install /y dnspy
choco install /y ida-free
choco install /y putty
choco install /y git
choco install /y golang
choco install /y burp-suite-free-edition
choco install /y dnspy
choco install /y upx
choco install /y orwelldevcpp
choco install /y ida-free
choco install /y ghidra
choco install /y openjdk
choco install /y processhacker
choco install /y winscp
choco install /y wireshark
choco install /y firefox
choco install /y googlechrome
choco install /y python3
choco install /y windows-optimize-debloat
:: Bug when checking checksums as of 27-07-23, disabled for now
choco install /y --ignore-checksums sysinternals
:: choco install /y office365proplus
