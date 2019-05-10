New-Alias -Name python2 -Value Start-Python2
New-Alias -Name python3 -Value Start-Python3
New-Alias -Name pip2 -Value Start-Pip2
New-Alias -Name pip3 -Value Start-Pip3
New-Alias -Name cnpm -Value Start-Cnpm

function Start-Cnpm {
    npm --registry=https://registry.npm.taobao.org `
    --cache=$HOME/.npm/.cache/cnpm `
    --disturl=https://npm.taobao.org/mirrors/node `
    --userconfig=$HOME/.cnpmrc `
    $args
}

function Start-Python2 {
    py -2 $args
}

function Start-Python3 {
    py -3 $args
}

function Start-Python2 {
    py -2 $args
}

function Start-Pip2 {
   py -2 -m pip $args
}

function Start-Pip3 {
   py -3 -m pip $args
}

# Ensure PSReadLine is loaded
Import-Module -Name PSReadLine

# Ensure posh-git is loaded
Import-Module -Name posh-git

# Ensure oh-my-posh is loaded
Import-Module -Name oh-my-posh



# Default the prompt to agnoster oh-my-posh theme
Set-Theme tehrob

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Ensure that Get-ChildItemColor is loaded
Import-Module Get-ChildItemColor

# Set l and ls alias to use the new Get-ChildItemColor cmdlets
Set-Alias ll Get-ChildItemColor -Option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -Option AllScope

# Helper function to change directory to my development workspace
# Change c:\ws to your usual workspace and everytime you type
# in cws from PowerShell it will take you directly there.
function cws { Set-Location c:\ws }

# Helper function to set location to the User Profile directory
function cuserprofile { Set-Location ~ }
Set-Alias ~ cuserprofile -Option AllScope

# Helper function to show Unicode character
function U
{
    param
    (
        [int] $Code
    )
 
    if ((0 -le $Code) -and ($Code -le 0xFFFF))
    {
        return [char] $Code
    }
 
    if ((0x10000 -le $Code) -and ($Code -le 0x10FFFF))
    {
        return [char]::ConvertFromUtf32($Code)
    }
 
    throw "Invalid character code $Code"
}


$SCRIPTPATH = "C:\Program Files (x86)\Vim"
$VIMPATH    = $SCRIPTPATH + "\vim80\vim.exe"


Set-Alias vi   $VIMPATH
Set-Alias vim  $VIMPATH


# for editing your PowerShell profile
Function Edit-Profile
{
    vim $profile
}


# for editing your Vim settings
Function Edit-Vimrc
{
    vim $home\_vimrc
}
