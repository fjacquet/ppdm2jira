# TargetNasInfoNasServerCred
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | Password of the NAS server credentials for the destination share. | [optional] 
**Username** | **String** | Username of the NAS server credentials for the destination share. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetNasInfoNasServerCred = Initialize-PpdmApiReferenceTargetNasInfoNasServerCred  -Password null `
 -Username null
```

- Convert the resource to JSON
```powershell
$TargetNasInfoNasServerCred | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

