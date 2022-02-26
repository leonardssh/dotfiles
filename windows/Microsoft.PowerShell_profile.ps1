$functionsDirectory = "$PSScriptRoot\functions";
$aliasesDirectory = "$PSScriptRoot\aliases";

Import-Module -Name PSReadLine

$PSReadLineOptions = @{
    PredictionSource = 'History'
    Colors           = @{
        'Command' = '#8181f7'
        'Comment' = 'DarkGray'
    }
}

Set-PSReadLineOption @PSReadLineOptions
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Load all custom functions
. $functionsDirectory\Git-Functions.ps1
. $functionsDirectory\GitHub-Cli-Functions.ps1
. $functionsDirectory\Terminal-Functions.ps1

# Load all custom aliases
. $aliasesDirectory\Custom-Aliases.ps1

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"
$env:STARSHIP_CONFIG = "$PSScriptRoot\starship.toml"

Invoke-Expression (&starship init powershell)
