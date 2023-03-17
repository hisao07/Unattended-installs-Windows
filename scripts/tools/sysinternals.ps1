 &{
    (New-Object System.Net.WebClient).DownloadFile(
        "https://download.sysinternals.com/files/SysinternalsSuite.zip",
        "$env:TEMP\SysinternalsSuite.zip")
    $Shell = New-Object -com shell.application
    $Zip = $Shell.NameSpace("$env:TEMP\SysinternalsSuite.zip")
    New-Item -ItemType Directory -Force -Path "$env:ProgramFiles\SysinternalsSuite"
    $Shell.Namespace("$env:ProgramFiles\SysinternalsSuite").CopyHere($Zip.Items())
    [Environment]::SetEnvironmentVariable(
        "Path",
        "$env:Path;$env:ProgramFiles\SysinternalsSuite",
        [EnvironmentVariableTarget]::Machine)
    $env:Path += ";$env:ProgramFiles\SysinternalsSuite"
}
