# https://github.com/antfu/ni/issues/21
Remove-Alias -Name ni -Force

Set-Alias -Name g -Value git
Set-Alias -Name gti -Value git
Set-Alias -Name dev -Value Set-Dev-Location
Set-Alias -Name ryse -Value Set-Ryse-Location
Set-Alias -Name rmf -Value Remove-Files-Recursively-Forced
Set-Alias -Name rimraf -Value Remove-Files-Recursively-Forced
