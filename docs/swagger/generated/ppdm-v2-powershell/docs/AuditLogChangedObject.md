# AuditLogChangedObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the changed object. | [optional] 
**ResourceName** | **String** | The name of the changed object (resource value). Possible values are protection policy name, compliance name, asset source name, user name, and so on (security related resource names). | [optional] 
**ResourceType** | **String** | The resource name of the object (resource path). This path value should be a full resource name corresponding to the audit type. It can be one of the audit type path URL values. | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditLogChangedObject = Initialize-PpdmApiReferenceAuditLogChangedObject  -Id null `
 -ResourceName null `
 -ResourceType null
```

- Convert the resource to JSON
```powershell
$AuditLogChangedObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

