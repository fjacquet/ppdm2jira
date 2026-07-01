# AgentsUpdateSessionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hosts** | [**AgentsUpdateSessionRequestHostsInner[]**](AgentsUpdateSessionRequestHostsInner.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**PrecheckOnly** | **Boolean** |  | [optional] 
**ScheduledAt** | **System.DateTime** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentsUpdateSessionResponse = Initialize-PpdmApiReferenceAgentsUpdateSessionResponse  -Hosts null `
 -Id null `
 -Name null `
 -PrecheckOnly null `
 -ScheduledAt null `
 -Status null
```

- Convert the resource to JSON
```powershell
$AgentsUpdateSessionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

