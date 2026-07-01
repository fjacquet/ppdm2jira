# FLRItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyId** | **String** |  | 
**File** | [**FLRFile**](FLRFile.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FLRItem = Initialize-PpdmApiReferenceFLRItem  -CopyId null `
 -File null
```

- Convert the resource to JSON
```powershell
$FLRItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

