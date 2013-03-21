function Test-NullOrEmpty([string]$str) {
	return ($str -eq "" -or $str -eq $Null)
}