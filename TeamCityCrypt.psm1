. (Join-Path $PSScriptRoot 'TeamCityCrypt.Class.ps1' -Resolve)

$script:TeamCityCrypt = New-Object TeamCityCrypt

function ConvertTo-TeamCitySecuredValue {
    param($Value)
    $TeamCityCrypt.Scramble($Value)
}
function ConvertFrom-TeamCitySecuredValue {
    param($Value)
    $TeamCityCrypt.Unscramble($Value)
}
function Get-TeamCityHashedValue {
    param($Value)
    $TeamCityCrypt.Hash($Value)
}