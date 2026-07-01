# ConflictItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Asset** | [**FLRAsset**](FLRAsset.md) |  | [optional] 
**CopyId** | **String** |  | [optional] 
**File** | [**FLRFile**](FLRFile.md) |  | [optional] 
**Parent** | [**FLRItem**](FLRItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConflictItem = Initialize-PpdmApiReferenceConflictItem  -Asset null `
 -CopyId null `
 -File null `
 -Parent null
```

- Convert the resource to JSON
```powershell
$ConflictItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

