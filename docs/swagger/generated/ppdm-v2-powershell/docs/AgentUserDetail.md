# AgentUserDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Privileged** | **Boolean** |  | [optional] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentUserDetail = Initialize-PpdmApiReferenceAgentUserDetail  -Privileged null `
 -Username null
```

- Convert the resource to JSON
```powershell
$AgentUserDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

