# AgentRegistrationStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | [**Agent**](Agent.md) |  | [optional] 
**Applications** | [**AgentRegistrationStatusApplication[]**](AgentRegistrationStatusApplication.md) |  | [optional] 
**HostId** | **String** |  | [optional] 
**Hostname** | **String** |  | [optional] 
**InventorySourceId** | **String** |  | [optional] 
**LastUpdateStatus** | **String** |  | [optional] 
**Os** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**StatusError** | [**StatusError**](StatusError.md) |  | [optional] 
**Summary** | [**AgentRegistrationStatusSummary[]**](AgentRegistrationStatusSummary.md) |  | [optional] 
**ThrottlingConfig** | [**ThrottlingConfig**](ThrottlingConfig.md) |  | [optional] 
**UpdateState** | **String** |  | [optional] 
**UpdateStateDescription** | **String** | It Contains description if update is not supported | [optional] 
**UpdateVersionAvailable** | **String[]** |  | [optional] 
**Whitelist** | [**Whitelist**](Whitelist.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentRegistrationStatus = Initialize-PpdmApiReferenceAgentRegistrationStatus  -Agent null `
 -Applications null `
 -HostId null `
 -Hostname null `
 -InventorySourceId null `
 -LastUpdateStatus null `
 -Os null `
 -Status null `
 -StatusError null `
 -Summary null `
 -ThrottlingConfig null `
 -UpdateState null `
 -UpdateStateDescription null `
 -UpdateVersionAvailable null `
 -Whitelist null
```

- Convert the resource to JSON
```powershell
$AgentRegistrationStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

