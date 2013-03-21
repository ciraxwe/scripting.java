function Install-Zip($packageName, $version, $url, $directory, $content="$packageName-$version") {
    $fileName = [System.IO.Path]::GetFileName($url)

    if (Test-NullOrEmpty $fileName) {
        $fileName = "$content.zip"
    }

    $file = Join-Path $directory $fileName
    $extract = Join-Path $directory $content

    New-Directory $directory
    Get-WebFile $url $file
    UnZip $file $directory
    Remove-Item $file
    Move-Item -Force $extract (Join-Path $directory $version)
}