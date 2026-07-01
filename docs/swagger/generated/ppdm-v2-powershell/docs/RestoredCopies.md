# RestoredCopies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**RestoredCopy[]**](RestoredCopy.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredCopies = Initialize-PpdmApiReferenceRestoredCopies  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$RestoredCopies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

