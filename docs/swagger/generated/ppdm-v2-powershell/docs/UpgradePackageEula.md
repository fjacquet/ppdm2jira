# UpgradePackageEula
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductEulaAccepted** | **Boolean** | Whether product EULA is accepted. | [optional] 
**ProductEulaChanged** | **Boolean** | Whether the product EULA changed. | [optional] 
**TelemetryEulaAccepted** | **Boolean** | Whether EULA telemetry is accepted. | [optional] 
**TelemetryEulaChanged** | **Boolean** | Whether EULA telemetry changed. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpgradePackageEula = Initialize-PpdmApiReferenceUpgradePackageEula  -ProductEulaAccepted null `
 -ProductEulaChanged null `
 -TelemetryEulaAccepted null `
 -TelemetryEulaChanged null
```

- Convert the resource to JSON
```powershell
$UpgradePackageEula | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

