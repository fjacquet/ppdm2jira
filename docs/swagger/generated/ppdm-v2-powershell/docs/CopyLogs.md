# CopyLogs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**CopyLog[]**](CopyLog.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyLogs = Initialize-PpdmApiReferenceCopyLogs  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$CopyLogs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

