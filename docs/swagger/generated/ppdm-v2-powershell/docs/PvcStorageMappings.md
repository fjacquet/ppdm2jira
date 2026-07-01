# PvcStorageMappings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**PvcStorageMapping[]**](PvcStorageMapping.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PvcStorageMappings = Initialize-PpdmApiReferencePvcStorageMappings  -Content null
```

- Convert the resource to JSON
```powershell
$PvcStorageMappings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

