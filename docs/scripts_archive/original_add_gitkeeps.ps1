# PowerShell Script: Add .gitkeep to All Empty Folders Recursively
# Usage: Run from the project root using: .\scripts\add_gitkeeps.ps1

Get-ChildItem -Directory -Recurse | Where-Object { -not (Get-ChildItem $_.FullName) } | ForEach-Object {
    New-Item -ItemType File -Path "$($_.FullName)\.gitkeep" -Force
    Write-Output "Added .gitkeep to $($_.FullName)"
}
