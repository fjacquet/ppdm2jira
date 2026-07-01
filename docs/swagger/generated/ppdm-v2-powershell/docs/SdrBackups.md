# SdrBackups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SdrBackup[]**](SdrBackup.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrBackups = Initialize-PpdmApiReferenceSdrBackups  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SdrBackups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

