# SystemHealthIssues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SystemHealthIssue[]**](SystemHealthIssue.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemHealthIssues = Initialize-PpdmApiReferenceSystemHealthIssues  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SystemHealthIssues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

