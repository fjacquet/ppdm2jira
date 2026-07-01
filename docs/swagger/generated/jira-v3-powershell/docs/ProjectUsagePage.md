# ProjectUsagePage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextPageToken** | **String** | Page token for the next page of project usages. | [optional] 
**Values** | [**ProjectUsage[]**](ProjectUsage.md) | The list of projects. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectUsagePage = Initialize-JiraApiReferenceProjectUsagePage  -NextPageToken null `
 -Values null
```

- Convert the resource to JSON
```powershell
$ProjectUsagePage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

