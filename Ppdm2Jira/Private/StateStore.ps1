<#
.SYNOPSIS
    Durable per-PPDM-instance watermark (last fully-synced event time).
.DESCRIPTION
    One JSON file per instance under the configured state dir. Writes are atomic
    (temp file + Move-Item) so a crash mid-write cannot corrupt the watermark (NFR-2).
#>
Set-StrictMode -Version Latest

function Get-Ppdm2JiraWatermarkPath {
    param([Parameter(Mandatory)][string] $InstanceId, [Parameter(Mandatory)][string] $StateDir)
    return (Join-Path $StateDir ("{0}.watermark.json" -f $InstanceId))
}

function Get-Ppdm2JiraWatermark {
    [OutputType([datetime])]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $InstanceId,
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $StateDir
    )
    $path = Get-Ppdm2JiraWatermarkPath -InstanceId $InstanceId -StateDir $StateDir
    if (-not (Test-Path $path)) {
        return [datetime]::SpecifyKind([datetime]'1970-01-01T00:00:00', 'Utc')
    }
    $obj = Get-Content -Raw -Path $path | ConvertFrom-Json
    # ConvertFrom-Json may auto-parse the ISO8601 datetime, or keep it as a string
    # depending on JSON parser behavior. Ensure we work with it as a datetime.
    $wm = $obj.watermark
    if ($wm -is [datetime]) {
        # Already parsed as datetime; ensure it's UTC
        return [datetime]::SpecifyKind($wm, 'Utc')
    } else {
        # Still a string; parse it
        $wmString = [string]$wm -replace 'Z$', ''
        $dt = [datetime]::ParseExact($wmString, 'yyyy-MM-ddTHH:mm:ss', [System.Globalization.CultureInfo]::InvariantCulture)
        return [datetime]::SpecifyKind($dt, 'Utc')
    }
}

function Set-Ppdm2JiraWatermark {
    # PSUseShouldProcessForStateChangingFunctions: writes an atomic watermark file as part
    # of the sync pipeline; the orchestrator's own -DryRun switch is the confirmation gate.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $InstanceId,
        [Parameter(Mandatory)][datetime] $Time,
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $StateDir
    )
    if (-not (Test-Path $StateDir)) {
        New-Item -ItemType Directory -Path $StateDir -Force | Out-Null
    }
    $path = Get-Ppdm2JiraWatermarkPath -InstanceId $InstanceId -StateDir $StateDir
    $tmp  = "$path.tmp"
    $payload = [ordered]@{
        instanceId = $InstanceId
        watermark  = $Time.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
    }
    $payload | ConvertTo-Json | Set-Content -Path $tmp -Encoding UTF8
    Move-Item -Path $tmp -Destination $path -Force
}
