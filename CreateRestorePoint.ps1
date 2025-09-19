Checkpoint-Computer -Description "Automatic Restore Point"
# capture output of Checkpoint-Computer
$restorePoint = Get-ComputerRestorePoint
# check if it worked and if so, print the restore point name
if ($restorePoint) {
    Write-Host "Created restore point: $($restorePoint.Description)"
}
else {
  # get the last error and print it
  $error = Get-ComputerRestorePoint -LastError
    Write-Host "Failed to create restore point"
}
