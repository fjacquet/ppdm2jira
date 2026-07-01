# AuditLogSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The origin system description | [optional] 
**Id** | **String** | The origin system id | [optional] 
**Type** | **String** | Indicates the source system type | 

## Examples

- Prepare the resource
```powershell
$AuditLogSource = Initialize-PpdmApiReferenceAuditLogSource  -Description null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AuditLogSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

