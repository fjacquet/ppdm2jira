# CreateCrossProjectReleaseRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The cross-project release name. | 
**ReleaseIds** | **Int64[]** | The IDs of the releases to include in the cross-project release. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCrossProjectReleaseRequest = Initialize-JiraApiReferenceCreateCrossProjectReleaseRequest  -Name null `
 -ReleaseIds null
```

- Convert the resource to JSON
```powershell
$CreateCrossProjectReleaseRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

