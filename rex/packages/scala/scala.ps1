function Install-Scala($version='2.10.1', $url="http://www.scala-lang.org/downloads/distrib/files/scala-$version.zip", $directory="$pwd\bin\scala") {
    $scalaHome = Join-Path $directory $version
    Install-Zip "scala" $version $url $directory

    # commands
    Write-Host "Creating commands"
"@echo off
$scalaHome\bin\scala %*" | Out-File "$pwd\scala.bat"  -Encoding ascii
}