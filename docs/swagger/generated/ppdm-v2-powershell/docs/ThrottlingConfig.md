# ThrottlingConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupMaxCpuPercentage** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ThrottlingConfig = Initialize-PpdmApiReferenceThrottlingConfig  -BackupMaxCpuPercentage null
```

- Convert the resource to JSON
```powershell
$ThrottlingConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

