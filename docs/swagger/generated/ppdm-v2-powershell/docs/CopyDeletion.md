# CopyDeletion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** |  | [optional] 
**CopyIds** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$CopyDeletion = Initialize-PpdmApiReferenceCopyDeletion  -ActivityId null `
 -CopyIds null
```

- Convert the resource to JSON
```powershell
$CopyDeletion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

