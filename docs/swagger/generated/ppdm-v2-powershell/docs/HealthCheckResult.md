# HealthCheckResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | [**HealthCheckEvent[]**](HealthCheckEvent.md) |  | [optional] 
**State** | **String** |  | [optional] 
**Type** | [**HealthCheckType**](HealthCheckType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HealthCheckResult = Initialize-PpdmApiReferenceHealthCheckResult  -Events null `
 -State null `
 -Type null
```

- Convert the resource to JSON
```powershell
$HealthCheckResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

