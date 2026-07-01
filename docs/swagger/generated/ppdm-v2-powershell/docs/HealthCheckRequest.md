# HealthCheckRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EnableActivity** | **Boolean** |  | [optional] 
**EnableAlert** | **Boolean** |  | [optional] 
**RequestedChecks** | [**RequestedCheck[]**](RequestedCheck.md) |  | [optional] 
**Source** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HealthCheckRequest = Initialize-PpdmApiReferenceHealthCheckRequest  -EnableActivity null `
 -EnableAlert null `
 -RequestedChecks null `
 -Source null
```

- Convert the resource to JSON
```powershell
$HealthCheckRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

