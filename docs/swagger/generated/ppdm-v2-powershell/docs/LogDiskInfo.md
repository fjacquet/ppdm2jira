# LogDiskInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableDiskSpaceBytes** | **Int64** | The available/unused disk space (in bytes) of the partition on which log files and bundles reside. | 
**TotalDiskSpaceBytes** | **Int64** | The total disk space (in bytes) of the partition on which log files and bundles reside. | 

## Examples

- Prepare the resource
```powershell
$LogDiskInfo = Initialize-PpdmApiReferenceLogDiskInfo  -AvailableDiskSpaceBytes null `
 -TotalDiskSpaceBytes null
```

- Convert the resource to JSON
```powershell
$LogDiskInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

