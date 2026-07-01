# GetProjectsWithFieldSchemesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **Int64** |  | [optional] 
**SchemeId** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetProjectsWithFieldSchemesResponse = Initialize-JiraApiReferenceGetProjectsWithFieldSchemesResponse  -ProjectId null `
 -SchemeId null
```

- Convert the resource to JSON
```powershell
$GetProjectsWithFieldSchemesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

