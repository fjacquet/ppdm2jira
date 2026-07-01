# GetCrossProjectReleaseResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The cross-project release name. | [optional] 
**ReleaseIds** | **Int64[]** | The IDs of the releases included in the cross-project release. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetCrossProjectReleaseResponse = Initialize-JiraApiReferenceGetCrossProjectReleaseResponse  -Name null `
 -ReleaseIds null
```

- Convert the resource to JSON
```powershell
$GetCrossProjectReleaseResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

