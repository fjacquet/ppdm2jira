# UserNote
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Note** | **String** | The custom text note on the message. | [optional] 
**UpdatedTime** | **System.DateTime** | The time that note is updated. Follows ISO 8601. | [optional] 
**Username** | **String** | The name of the user who added or updated the notes. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserNote = Initialize-PpdmApiReferenceUserNote  -Note null `
 -UpdatedTime null `
 -Username null
```

- Convert the resource to JSON
```powershell
$UserNote | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

