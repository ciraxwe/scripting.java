function Install-Bsh($version='2.0b4', $url='http://www.beanshell.org/bsh-2.0b4.jar', $directory="$pwd\bin\bsh") {
	$bshHome = Join-Path $directory $version
	$fileName = [System.IO.Path]::GetFileName($url)
	$file = Join-Path $directory $fileName

	New-Directory $bshHome
	Get-WebFile $url (Join-Path $bshHome $fileName)

	# commands
	Write-Host "Creating commands"
"@echo off
java -cp $bshHome\$fileName bsh.Interpreter %*" | Out-File "$pwd\bsh.bat"  -Encoding ascii
}