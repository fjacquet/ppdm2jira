# AgentInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | **String** |  | [optional] 
**AgentName** | **String** |  | [optional] 
**OsBits** | **Int32** |  | [optional] 
**OsType** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentInfo = Initialize-PpdmApiReferenceAgentInfo  -Agent null `
 -AgentName null `
 -OsBits null `
 -OsType null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AgentInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

