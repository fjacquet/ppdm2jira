# VcStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpAddress** | **String** | ipAddress | [optional] 
**Name** | **String** | name | [optional] 
**Status** | **String** | status | [optional] 

## Examples

- Prepare the resource
```powershell
$VcStatus = Initialize-PpdmApiReferenceVcStatus  -IpAddress null `
 -Name null `
 -Status null
```

- Convert the resource to JSON
```powershell
$VcStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

