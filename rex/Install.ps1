# variables
$url = "http://localhost:8080/rex/rex.zip"
$rexHome = Join-Path $pwd "rex"

if (-not (Test-Path $rexHome)) {
    New-Item -ItemType Directory -Path $rexHome | Out-Null
}

$fileName = [System.IO.Path]::GetFileName($url)
$file = Join-Path $rexHome $fileName

# download the package
Write-Host "Downloading $url to $file"
$downloader = New-Object System.Net.WebClient
$downloader.DownloadFile($url, $file)

# unzip the package
Write-Host "Extracting $file to $rexHome..."
$shellApplication = New-Object -com shell.application
$zipPackage = $shellApplication.NameSpace($file)
$destinationFolder = $shellApplication.NameSpace($rexHome)
$destinationFolder.CopyHere($zipPackage.Items(),0x10)