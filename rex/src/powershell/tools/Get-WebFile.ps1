function Get-WebFile($url, $file) {
    Write-Host "Downloading $url to $file"

    $client = New-Object System.Net.WebClient
    $Global:downloadComplete = $false
    $eventDataComplete = Register-ObjectEvent $client DownloadFileCompleted `
        -SourceIdentifier WebClient.DownloadFileComplete `
        -Action {$Global:downloadComplete = $true}
    $eventDataProgress = Register-ObjectEvent $client DownloadProgressChanged `
        -SourceIdentifier WebClient.DownloadProgressChanged `
        -Action { $Global:DPCEventArgs = $EventArgs }

    Write-Progress -Activity 'Downloading file' -Status $url
    $client.DownloadFileAsync($url, $file)

    while (!($Global:downloadComplete)) {
        $pc = $Global:DPCEventArgs.ProgressPercentage

        if ($pc -ne $null) {
            Write-Progress -Activity 'Downloading file' -Status $url -PercentComplete $pc
        }
    }

    Write-Progress -Activity 'Downloading file' -Status $url -Complete

    Unregister-Event -SourceIdentifier WebClient.DownloadProgressChanged
    Unregister-Event -SourceIdentifier WebClient.DownloadFileComplete
    $client.Dispose()
    $Global:downloadComplete = $null
    $Global:DPCEventArgs = $null
    Remove-Variable client
    Remove-Variable eventDataComplete
    Remove-Variable eventDataProgress
    [GC]::Collect()
}