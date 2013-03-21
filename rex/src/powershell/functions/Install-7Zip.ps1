function Install-7Zip($packageName, $version, $url, $directory, $content="$packageName-$version") {
    $fileName = [System.IO.Path]::GetFileName($url)

    if (Test-NullOrEmpty $fileName) {
        $fileName = "$content.7z"
    }

    $file = Join-Path $directory $fileName
    $extract = Join-Path $directory $content

    New-Directory $directory
    Get-WebFile $url $file
    Seven-Zip x -y $file "-o$extract"
    Remove-Item $file
    Move-Item -Force $extract (Join-Path $directory $version)
}