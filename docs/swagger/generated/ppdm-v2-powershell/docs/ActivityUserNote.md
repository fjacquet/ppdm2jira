# ActivityUserNote
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Note** | **String** | The content of the note that the user added regarding the specific activity. | [optional] 
**Username** | **String** | User name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityUserNote = Initialize-PpdmApiReferenceActivityUserNote  -Note null `
 -Username null
```

- Convert the resource to JSON
```powershell
$ActivityUserNote | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

