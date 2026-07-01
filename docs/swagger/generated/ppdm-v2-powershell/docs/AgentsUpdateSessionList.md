# AgentsUpdateSessionList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**AgentsUpdateSessionResponse[]**](AgentsUpdateSessionResponse.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentsUpdateSessionList = Initialize-PpdmApiReferenceAgentsUpdateSessionList  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$AgentsUpdateSessionList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

