# AuditLogChangedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The user ID. | [optional] 
**Username** | **String** | The user name. | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditLogChangedBy = Initialize-PpdmApiReferenceAuditLogChangedBy  -Id null `
 -Username null
```

- Convert the resource to JSON
```powershell
$AuditLogChangedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

