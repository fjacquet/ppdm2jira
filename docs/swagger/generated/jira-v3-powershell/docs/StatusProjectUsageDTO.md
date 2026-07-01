# StatusProjectUsageDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Projects** | [**StatusProjectUsagePage**](StatusProjectUsagePage.md) |  | [optional] 
**StatusId** | **String** | The status ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusProjectUsageDTO = Initialize-JiraApiReferenceStatusProjectUsageDTO  -Projects null `
 -StatusId null
```

- Convert the resource to JSON
```powershell
$StatusProjectUsageDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

