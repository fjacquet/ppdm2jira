# SyncInstanceDirection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dst** | [**SystemId**](SystemId.md) |  | 
**Mode** | **String** |  | 
**Src** | [**SystemId**](SystemId.md) |  | 

## Examples

- Prepare the resource
```powershell
$SyncInstanceDirection = Initialize-PpdmApiReferenceSyncInstanceDirection  -Dst null `
 -Mode null `
 -Src null
```

- Convert the resource to JSON
```powershell
$SyncInstanceDirection | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

