# AgentsUpdateSessionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hosts** | [**AgentsUpdateSessionRequestHostsInner[]**](AgentsUpdateSessionRequestHostsInner.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**PrecheckOnly** | **Boolean** |  | [optional] 
**ScheduledAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentsUpdateSessionRequest = Initialize-PpdmApiReferenceAgentsUpdateSessionRequest  -Hosts null `
 -Name null `
 -PrecheckOnly null `
 -ScheduledAt null
```

- Convert the resource to JSON
```powershell
$AgentsUpdateSessionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

