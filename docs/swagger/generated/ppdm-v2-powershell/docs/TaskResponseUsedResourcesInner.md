# TaskResponseUsedResourcesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | [**TaskResponseUsedResourcesInnerProvider**](TaskResponseUsedResourcesInnerProvider.md) |  | [optional] 
**Quantity** | **Int32** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TaskResponseUsedResourcesInner = Initialize-PpdmApiReferenceTaskResponseUsedResourcesInner  -Provider null `
 -Quantity null `
 -Type null
```

- Convert the resource to JSON
```powershell
$TaskResponseUsedResourcesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

