# used by powershell v7
# copy to ~\Documents\WindowsPowerShell

#$scriptsFolder = "$($ENV:UserProfile)\Documents\PS Scripts"
#$ENV:Path += ";$scriptsFolder"
#Write-Host "'$scriptsFolder' added to Environment Path." -fore yellow
$PSDefaultParameterValues['Export-CSV:NoTypeInformation'] = $true
$host.UI.RawUI.WindowTitle = "$($ENV:UserName)"
Set-Location "$($ENV:UserProfile)\Desktop"

## Customize the prompt
Function Prompt {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = [Security.Principal.WindowsPrincipal] $identity
    $adminRole = [Security.Principal.WindowsBuiltInRole]::Administrator

    $prefix = $(if (Test-Path variable:/PSDebugContext) { '[DBG]: ' }
                elseif ($principal.IsInRole($adminRole)) { "[ADMIN]: " }
                else { '' })
    $body = 'PS ' + $(Get-Location)
    $suffix = $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> '
    $prefix + $body + $suffix
}

Function Update-Profile {
        & $profile
}