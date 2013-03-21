function Install-Exe($version, $url, $directory) {
    $destination = Join-Path $directory $version
    $fileName = [System.IO.Path]::GetFileName($url)
    $file = Join-Path $destination $fileName

    New-Directory $destination
    Get-WebFile $url $file

    return $file
}