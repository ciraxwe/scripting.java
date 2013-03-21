function Set-Env($name, $value, $scope="User") {
	Write-Host "Setting environment variable $name=$value"
	[Environment]::SetEnvironmentVariable($name, $value, $scope)
}