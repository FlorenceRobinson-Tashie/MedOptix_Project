# PowerShell Script: Add .gitkeep to All Empty Folders Recursively
# ---------------------------------------------------------------
# This script scans the entire project directory tree,
# finds all empty folders, and adds a `.gitkeep` file inside each one.
# 
# Equivalent to manually running the following command:
# Get-ChildItem -Directory -Recurse | Where-Object { -not (Get-ChildItem $_.FullName) } | ForEach-Object { New-Item -ItemType File -Path "$($_.FullName)\.gitkeep" }
#
# Usage:
#   From the project root:
#       .\scripts\add_gitkeeps.ps1
#
# Purpose:
#   Keeps empty directories version-controlled in Git
#   since Git doesn't track empty folders by default.

# === Add .gitkeep files to all empty folders recursively ===
Get-ChildItem -Directory -Recurse | Where-Object { -not (Get-ChildItem $_.FullName) } | ForEach-Object {
    New-Item -ItemType File -Path "$($_.FullName)\.gitkeep" -Force
    Write-Output "Added .gitkeep to $($_.FullName)"
}
