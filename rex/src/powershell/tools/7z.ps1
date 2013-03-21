# Alias for 7-zip

if (test-path "$env:ProgramW6432\7-Zip\7z.exe") {
	Set-Alias Seven-Zip "$env:ProgramW6432\7-Zip\7z.exe"
	Write-Debug "7-Zip found at $env:ProgramW6432\7-Zip\7z.exe alias set to Seven-Zip"
} elseif (test-path "$env:ProgramFiles(x86)\7-Zip\7z.exe") {
	Set-Alias Seven-Zip "$env:ProgramFiles(x86)\7-Zip\7z.exe"
	Write-Debug "7-Zip found at $env:ProgramFiles(x86)\7-Zip\7z.exe alias set to Seven-Zip"
}
