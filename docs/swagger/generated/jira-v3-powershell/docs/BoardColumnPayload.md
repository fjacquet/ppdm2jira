# BoardColumnPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaximumIssueConstraint** | **Int64** | The maximum issue constraint for the column | [optional] 
**MinimumIssueConstraint** | **Int64** | The minimum issue constraint for the column | [optional] 
**Name** | **String** | The name of the column | [optional] 
**StatusIds** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) | The status IDs for the column | [optional] 

## Examples

- Prepare the resource
```powershell
$BoardColumnPayload = Initialize-JiraApiReferenceBoardColumnPayload  -MaximumIssueConstraint null `
 -MinimumIssueConstraint null `
 -Name TODO `
 -StatusIds pcri:status:ref:done
```

- Convert the resource to JSON
```powershell
$BoardColumnPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

