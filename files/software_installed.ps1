# This script returns a list of installed software

$packages = Get-ItemProperty HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion | where-object {$_.DisplayName -ne $null}
$returnpackages = @{}

foreach ($package in $packages)
{
    $returnpackages.Add($Package.DisplayName, $Package.DisplayVersion)
}

$returnpackages