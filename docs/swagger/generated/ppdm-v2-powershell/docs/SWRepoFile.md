# SWRepoFile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agents** | [**AgentInfo[]**](AgentInfo.md) |  | [optional] 
**LastModified** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Path** | **String** |  | [optional] 
**Size** | **Int64** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SWRepoFile = Initialize-PpdmApiReferenceSWRepoFile  -Agents null `
 -LastModified null `
 -Name null `
 -Path null `
 -Size null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SWRepoFile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

