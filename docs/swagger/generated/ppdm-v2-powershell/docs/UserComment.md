# UserComment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | User note content, which cannot be changed once it is set. | [optional] 
**Username** | **String** | User who set the notes. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserComment = Initialize-PpdmApiReferenceUserComment  -Comment null `
 -Username null
```

- Convert the resource to JSON
```powershell
$UserComment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

