# TargetNasInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | Asset ID of the destination NAS share in case of restore to alternate. | [optional] 
**NasServerCred** | [**TargetNasInfoNasServerCred**](TargetNasInfoNasServerCred.md) |  | [optional] 
**Sources** | [**TargetNasSource[]**](TargetNasSource.md) | Sources selected files/folders for file-level recovery. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetNasInfo = Initialize-PpdmApiReferenceTargetNasInfo  -AssetId null `
 -NasServerCred null `
 -Sources null
```

- Convert the resource to JSON
```powershell
$TargetNasInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

