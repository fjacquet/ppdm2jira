# HealthCheck
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** |  | [optional] 
**EndTime** | **System.DateTime** |  | [optional] 
**Id** | **String** |  | [optional] 
**Results** | [**HealthCheckResult[]**](HealthCheckResult.md) |  | [optional] 
**Source** | **String** |  | [optional] 
**StartTime** | **System.DateTime** |  | [optional] 
**State** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HealthCheck = Initialize-PpdmApiReferenceHealthCheck  -ActivityId null `
 -EndTime null `
 -Id null `
 -Results null `
 -Source null `
 -StartTime null `
 -State null
```

- Convert the resource to JSON
```powershell
$HealthCheck | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

