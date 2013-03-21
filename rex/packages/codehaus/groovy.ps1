function Install-Groovy($version='2.1.1', $url='http://dist.groovy.codehaus.org/distributions/groovy-binary-2.1.1.zip', $directory="$pwd\bin\groovy") {
    $groovyHome = Join-Path $directory $version
	Install-Zip "groovy" $version $url $directory

    # commands
    Write-Host "Creating commands"
"@echo off
$groovyHome\bin\groovy %*" | Out-File "$pwd\groovy.bat"  -Encoding ascii
}