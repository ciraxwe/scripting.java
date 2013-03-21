Resolve-Path $PSScriptRoot\functions\*.ps1 |
    % { . $_.ProviderPath }

Resolve-Path $PSScriptRoot\tools\*.ps1 |
    % { . $_.ProviderPath }

Export-ModuleMember	-Function Install-Zip, Install-7Zip, Show-RexHelp, Show-Version, Install-Exe, Get-WebFile, UnZip, Set-Env, Test-NullOrEmpty, New-Directory