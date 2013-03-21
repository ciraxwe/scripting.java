function Install-Jython($version='2.5.3', $url="http://repo1.maven.org/maven2/org/python/jython-installer/$version/jython-installer-$version.jar", $directory="$pwd\bin\jython") {
	$jar = "jython-installer-$version.jar"
	$file = Join-Path $directory $jar
	$jythonHome = Join-Path $directory $version

	New-Directory $directory
	Get-WebFile $url $file
	java -jar $directory/$jar -s -d $jythonHome
	Remove-Item $file

    # commands
    Write-Host "Creating commands"
"@echo off
$jythonHome\bin\jython %*" | Out-File "$pwd\jython.bat"  -Encoding ascii
}