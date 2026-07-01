# AgentsUpdateSessionRequestHostsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppServerTypes** | **String[]** | The name of the application that is installed. | [optional] 
**Id** | **String** |  | [optional] 
**Privileged** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentsUpdateSessionRequestHostsInner = Initialize-PpdmApiReferenceAgentsUpdateSessionRequestHostsInner  -AppServerTypes null `
 -Id null `
 -Privileged null
```

- Convert the resource to JSON
```powershell
$AgentsUpdateSessionRequestHostsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

