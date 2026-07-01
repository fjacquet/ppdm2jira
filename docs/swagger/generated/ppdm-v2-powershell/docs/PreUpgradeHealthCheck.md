# PreUpgradeHealthCheck
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndTime** | **System.DateTime** | End time of pre-upgrade health check. | [optional] 
**Initiated** | **String** | The way pre-upgrade health check was initiated. | [optional] 
**StartTime** | **System.DateTime** | Start time of pre-upgrade health check. | [optional] 

## Examples

- Prepare the resource
```powershell
$PreUpgradeHealthCheck = Initialize-PpdmApiReferencePreUpgradeHealthCheck  -EndTime null `
 -Initiated null `
 -StartTime null
```

- Convert the resource to JSON
```powershell
$PreUpgradeHealthCheck | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

