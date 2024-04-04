function Ensure-FolderExists {
    param (
        [string]$Path
    )
    if (-not (Test-Path -Path $Path)) {
        New-Item -ItemType Directory -Path $Path
        Write-Host "Created new folder: $Path"
    } else {
        Write-Host "The folder already exists: $Path"
    }
}
