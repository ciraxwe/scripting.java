function Install-Clojure($version='1.5.0', $url='http://repo1.maven.org/maven2/org/clojure/clojure/1.5.0/clojure-1.5.0.zip', $directory="$pwd\bin\clojure") {
	$clojureHome = (Join-Path $directory $version)

	Install-Zip "clojure" $version $url $directory

	# commands
	Write-Host "Creating commands"
"@echo off
java -cp $clojureHome\clojure-$version.jar clojure.main %*" | Out-File "$pwd\clojure.bat"  -Encoding ascii
}