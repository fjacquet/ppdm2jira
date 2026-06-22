Set-StrictMode -Version Latest

foreach ($folder in @('Private', 'Public')) {
    $dir = Join-Path $PSScriptRoot $folder
    if (Test-Path $dir) {
        Get-ChildItem -Path $dir -Filter '*.ps1' -File | ForEach-Object {
            . $_.FullName
        }
    }
}

$publicDir = Join-Path $PSScriptRoot 'Public'
if (Test-Path $publicDir) {
    $public = Get-ChildItem -Path $publicDir -Filter '*.ps1' -File | ForEach-Object { $_.BaseName }
    if ($public) { Export-ModuleMember -Function $public }
}
