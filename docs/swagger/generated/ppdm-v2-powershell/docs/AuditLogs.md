# AuditLogs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**AuditLog[]**](AuditLog.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditLogs = Initialize-PpdmApiReferenceAuditLogs  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$AuditLogs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

