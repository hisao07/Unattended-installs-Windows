&{
    $releases64 = 'https://update.code.visualstudio.com/api/update/win32-x64/stable/VERSION'
    $json64 = Invoke-WebRequest -UseBasicParsing -Uri $releases64 | ConvertFrom-Json

    (New-Object System.Net.WebClient).DownloadFile($json64.url, "$env:TEMP\vscode_installer.exe")
    & "$env:TEMP\vscode_installer.exe" /VERYSILENT /MERGETASKS=!runcode
}
