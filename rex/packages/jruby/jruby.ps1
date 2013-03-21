function Install-JRuby($version='1.7.3', $url="http://jruby.org.s3.amazonaws.com/downloads/$version/jruby-bin-$version.zip", $directory="$pwd\bin\jruby") {
    $jrubyHome = Join-Path $directory $version
	Install-Zip "jruby" $version $url $directory

    # commands
    Write-Host "Creating commands"
"@echo off
$jrubyHome\bin\jruby %*" | Out-File "$pwd\jruby.bat"  -Encoding ascii
}