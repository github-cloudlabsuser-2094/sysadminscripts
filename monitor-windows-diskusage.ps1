$drives = Get-PSDrive -PSProvider 'FileSystem'
foreach ($drive in $drives) {
    $freeSpace = $drive.Free / 1GB
    $usedSpace = $drive.Used / 1GB
    $totalSpace = $drive.Size / 1GB
    Write-Output "Drive $($drive.Name):"
    Write-Output "Free Space: $freeSpace GB"
    Write-Output "Used Space: $usedSpace GB"
    Write-Output "Total Space: $totalSpace GB"
}