&{
    (New-Object System.Net.WebClient).DownloadFile("http://dl.google.com/chrome/install/chrome_installer.exe", "$env:TEMP\chrome_installer.exe")
    & "$env:TEMP\chrome_installer.exe" /silent /install
}
