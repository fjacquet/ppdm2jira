# StatusProjectIssueTypeUsagePage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextPageToken** | **String** | Page token for the next page of issue type usages. | [optional] 
**Values** | [**StatusProjectIssueTypeUsage[]**](StatusProjectIssueTypeUsage.md) | The list of issue types. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusProjectIssueTypeUsagePage = Initialize-JiraApiReferenceStatusProjectIssueTypeUsagePage  -NextPageToken null `
 -Values null
```

- Convert the resource to JSON
```powershell
$StatusProjectIssueTypeUsagePage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

