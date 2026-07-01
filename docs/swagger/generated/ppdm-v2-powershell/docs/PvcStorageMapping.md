# PvcStorageMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PvcName** | **String** |  | [optional] 
**StorageClasses** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PvcStorageMapping = Initialize-PpdmApiReferencePvcStorageMapping  -PvcName null `
 -StorageClasses null
```

- Convert the resource to JSON
```powershell
$PvcStorageMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

