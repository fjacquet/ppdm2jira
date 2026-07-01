# DocumentVersion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The version UUID. | [optional] 
**VersionNumber** | **Int64** | The version number. | [optional] 

## Examples

- Prepare the resource
```powershell
$DocumentVersion = Initialize-JiraApiReferenceDocumentVersion  -Id null `
 -VersionNumber null
```

- Convert the resource to JSON
```powershell
$DocumentVersion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

