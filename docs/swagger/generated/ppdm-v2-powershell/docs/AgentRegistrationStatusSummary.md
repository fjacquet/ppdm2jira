# AgentRegistrationStatusSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Pending** | **Int32** | The number of agents in pending state for registration. | [optional] 
**Registered** | **Int32** | The number of agents in registered state. | [optional] 
**Rejected** | **Int32** | The number of agents in rejected state. | [optional] 
**UpdateFailed** | **Int32** |  | [optional] 
**UpdateInProgress** | **Int32** |  | [optional] 
**UpdateScheduled** | **Int32** |  | [optional] 
**UpdateUpToDate** | **Int32** |  | [optional] 
**UpdatesAvailable** | **Int32** |  | [optional] 
**Waiting** | **Int32** | The number of agents in waiting state for registration. | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentRegistrationStatusSummary = Initialize-PpdmApiReferenceAgentRegistrationStatusSummary  -Pending null `
 -Registered null `
 -Rejected null `
 -UpdateFailed null `
 -UpdateInProgress null `
 -UpdateScheduled null `
 -UpdateUpToDate null `
 -UpdatesAvailable null `
 -Waiting null
```

- Convert the resource to JSON
```powershell
$AgentRegistrationStatusSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

