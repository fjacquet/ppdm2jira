# LogDiskInfos
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**LogDiskInfo[]**](LogDiskInfo.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogDiskInfos = Initialize-PpdmApiReferenceLogDiskInfos  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$LogDiskInfos | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

