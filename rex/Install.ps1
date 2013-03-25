# Functions
# -----------------------------------------------------------------------------
function Get-WebFile($url, $directory) {
    $fileName = [System.IO.Path]::GetFileName($url)
    $file = Join-Path $directory $fileName

    Write-Host "Downloading $url to $file"
    $webClient = New-Object System.Net.WebClient
    $webClient.DownloadFile($url, $file)

    return $file
}

function Unzip($file, $folder) {
    Write-Host "Extracting $file to $folder"
    $shell = New-Object -com shell.application
    $zipPackage = $shell.NameSpace($file)
    $extact = $shell.NameSpace($folder)
    $extact.CopyHere($zipPackage.Items(), 0x10)
}


# Variables
# -----------------------------------------------------------------------------
$rexHome = Join-Path $pwd "rex"

if (-not (Test-Path $rexHome)) {
    New-Item -ItemType Directory -Path $rexHome | Out-Null
}

# Install REX
# -----------------------------------------------------------------------------

$file = Get-WebFile "http://ciraxwe.github.com/scripting.java/rex/rex.zip" $rexHome
#$file = Get-WebFile "http://localhost:8080/rex/rex.zip" $rexHome
Unzip $file $rexHome
Remove-Item $file

# Install Examples
# -----------------------------------------------------------------------------

$file = Get-WebFile "https://github.com/ciraxwe/scripting.java/archive/master.zip" $rexHome
Unzip $file $rexHome
Remove-Item $file
Move-Item (Join-Path $rexHome scripting.java-master) (Join-Path $rexHome scripts)
