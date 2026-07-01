# StatusProjectUsagePage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextPageToken** | **String** | Page token for the next page of issue type usages. | [optional] 
**Values** | [**StatusProjectUsage[]**](StatusProjectUsage.md) | The list of projects. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusProjectUsagePage = Initialize-JiraApiReferenceStatusProjectUsagePage  -NextPageToken null `
 -Values null
```

- Convert the resource to JSON
```powershell
$StatusProjectUsagePage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

