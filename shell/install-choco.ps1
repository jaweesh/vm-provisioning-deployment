# Purpose: Install additional packages from Chocolatey.

Write-Host "$('[{0:HH:mm}]' -f (Get-Date)) Installing additional Choco packages..."

If (-not (Test-Path "C:\ProgramData\chocolatey")) {
  Write-Host "$('[{0:HH:mm}]' -f (Get-Date)) Installing Chocolatey"
  iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
} else {
  Write-Host "$('[{0:HH:mm}]' -f (Get-Date)) Chocolatey is already installed."
}

Write-Host "$('[{0:HH:mm}]' -f (Get-Date)) Installing Chocolatey extras..."
choco install -y --limit-output --no-progress NotepadPlusPlus GoogleChrome 7zip.install x64dbg.portable

Write-Host "$('[{0:HH:mm}]' -f (Get-Date)) Choco addons complete!"
