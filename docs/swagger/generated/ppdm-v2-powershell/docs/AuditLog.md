# AuditLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**After** | **String** | New field values represented as a string. Varies based on the audit type. | [optional] 
**AuditType** | **String** | The predefined set of audit types. | [optional] 
**Before** | **String** | Old field values that are represented as a string. Varies based on the audit type. | [optional] 
**ChangeDescription** | **String** | The description of the change. This parameter is a system generated field to get the context of the change. | [optional] 
**ChangedBy** | [**AuditLogChangedBy**](AuditLogChangedBy.md) |  | [optional] 
**ChangedObject** | [**AuditLogChangedObject**](AuditLogChangedObject.md) |  | [optional] 
**ChangedTime** | **System.DateTime** | The time when the configurations are modified or deleted. | [optional] 
**CreatedAt** | **System.DateTime** | The time when the audit log was created. Follows ISO 8601. | [optional] 
**ExternalId** | **String** | The ID of the audit log in the external system, The value is null if the audit log originated in PowerProtect Data Manager. | [optional] 
**Id** | **String** | The ID of the audit log entry. | [optional] 
**MessageArgs** | **String[]** | The message arguments are the values for any substitution variables that are defined as part of the message. Review the message for more information: Message Resources, APIs, and Audit Message. | [optional] 
**MessageID** | **String** | The message identifier MessageID is an alphanumeric string value that is a maximum of 8 characters long. | [optional] 
**Source** | [**AuditLogSource**](AuditLogSource.md) |  | [optional] 
**UserNote** | [**UserNote**](UserNote.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditLog = Initialize-PpdmApiReferenceAuditLog  -After null `
 -AuditType null `
 -Before null `
 -ChangeDescription null `
 -ChangedBy null `
 -ChangedObject null `
 -ChangedTime null `
 -CreatedAt null `
 -ExternalId null `
 -Id null `
 -MessageArgs null `
 -MessageID null `
 -Source null `
 -UserNote null
```

- Convert the resource to JSON
```powershell
$AuditLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

