# BulkWorklogKeyRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requests** | [**WorklogCompositeKey[]**](WorklogCompositeKey.md) | A list of issue and worklog ID pairs. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkWorklogKeyRequestBean = Initialize-JiraApiReferenceBulkWorklogKeyRequestBean  -Requests null
```

- Convert the resource to JSON
```powershell
$BulkWorklogKeyRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

