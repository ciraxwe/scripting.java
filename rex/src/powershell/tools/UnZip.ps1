function UnZip($file, $destination) {
	Write-Host "Extracting $file to $destination"
	New-Directory $destination

	if (Test-Path Alias:\Seven-Zip) {
		Write-Host "Extracting content using 7-Zip"
		Seven-Zip x -y $file "-o$destination"
	} else {
		$shell = New-Object -com shell.application
		$zipPackage = $shell.NameSpace($file)
		$destinationFolder = $shell.NameSpace($destination)
		$destinationFolder.CopyHere($zipPackage.Items(), 0x10)
	}
}