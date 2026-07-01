# AgentRegistrationStatuses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**AgentRegistrationStatus[]**](AgentRegistrationStatus.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentRegistrationStatuses = Initialize-PpdmApiReferenceAgentRegistrationStatuses  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$AgentRegistrationStatuses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

