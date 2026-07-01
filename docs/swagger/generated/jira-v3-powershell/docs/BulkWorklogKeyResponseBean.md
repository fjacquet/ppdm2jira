# BulkWorklogKeyResponseBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Worklogs** | [**WorklogKeyResult[]**](WorklogKeyResult.md) | A list of successfully retrieved worklogs with their issue and worklog IDs. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkWorklogKeyResponseBean = Initialize-JiraApiReferenceBulkWorklogKeyResponseBean  -Worklogs null
```

- Convert the resource to JSON
```powershell
$BulkWorklogKeyResponseBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

