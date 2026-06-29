# Relocate all files/folders into ObsidianVault
$source = 'D:/synaptix_os'
$dest   = 'D:/synaptix_os/ObsidianVault'

# Items to keep in place (do not move)
$keep = @('.obsidian','ObsidianVault','relocate_to_vault.ps1')

Get-ChildItem -Path $source -Force | Where-Object { $keep -notcontains $_.Name } | ForEach-Object {
    $targetPath = Join-Path $dest $_.Name
    Write-Host "Moving $($_.FullName) -> $targetPath"
    Move-Item -LiteralPath $_.FullName -Destination $targetPath -Force
}
