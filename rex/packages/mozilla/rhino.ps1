function Install-Rhino($version='1_7R4', $url="https://github.com/downloads/mozilla/rhino/rhino1_7R4.zip", $directory="$pwd\bin\rhino") {
	Install-Zip "rhino" $version $url $directory "rhino$version"
	$rhinoHome = Join-Path $directory $version

	# commands
	Write-Host "Creating commands"
"@echo off
java -cp $rhinoHome\js.jar org.mozilla.javascript.tools.shell.Main %*" | Out-File "$pwd\rhino.bat" -Encoding ascii
}
