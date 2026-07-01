# VPEEngineInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtectionSummary** | [**ProtectionSummary**](ProtectionSummary.md) |  | [optional] 
**TotalDisabledProxies** | **Int32** |  | [optional] 
**TotalFailedProxies** | **Int32** |  | [optional] 
**TotalReadyProxies** | **Int32** |  | [optional] 
**VcsStatuses** | [**VcStatus[]**](VcStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VPEEngineInfo = Initialize-PpdmApiReferenceVPEEngineInfo  -ProtectionSummary null `
 -TotalDisabledProxies null `
 -TotalFailedProxies null `
 -TotalReadyProxies null `
 -VcsStatuses null
```

- Convert the resource to JSON
```powershell
$VPEEngineInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

