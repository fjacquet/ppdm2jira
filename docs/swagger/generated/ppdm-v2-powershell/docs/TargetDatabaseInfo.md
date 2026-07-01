# TargetDatabaseInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationSystemId** | **String** |  | [optional] 
**AssetName** | **String** |  | [optional] 
**HostId** | **String** |  | [optional] 
**RestoreOptions** | [**TargetDatabaseInfoRestoreOptions**](TargetDatabaseInfoRestoreOptions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetDatabaseInfo = Initialize-PpdmApiReferenceTargetDatabaseInfo  -ApplicationSystemId null `
 -AssetName null `
 -HostId null `
 -RestoreOptions null
```

- Convert the resource to JSON
```powershell
$TargetDatabaseInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

