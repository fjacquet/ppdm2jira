# HealthCheckEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageDetails** | [**MessageDetails**](MessageDetails.md) |  | [optional] 
**Severity** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HealthCheckEvent = Initialize-PpdmApiReferenceHealthCheckEvent  -MessageDetails null `
 -Severity null
```

- Convert the resource to JSON
```powershell
$HealthCheckEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

