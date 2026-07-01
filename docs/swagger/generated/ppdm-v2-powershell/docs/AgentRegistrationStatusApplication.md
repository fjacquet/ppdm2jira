# AgentRegistrationStatusApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**PackageId** | **String** |  | [optional] 
**PackageVersion** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentRegistrationStatusApplication = Initialize-PpdmApiReferenceAgentRegistrationStatusApplication  -Name null `
 -PackageId null `
 -PackageVersion null `
 -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AgentRegistrationStatusApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

